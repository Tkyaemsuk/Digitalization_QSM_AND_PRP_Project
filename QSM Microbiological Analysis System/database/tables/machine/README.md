# machine

master เครื่องจักร; queries JOIN ผ่าน no ขณะที่ Builder PK คือ id.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `machine` | `nvarchar` | string | False | False |
| `no` | `nvarchar` | string | False | False |
| `DEP` | `nvarchar` | string | False | False |
| `DEP NO` | `nvarchar` | string | False | False |
| `DEP2` | `nvarchar` | string | False | False |
| `GROUP` | `nvarchar` | string | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Bottom_Recall](<../../Query/Bottom_Recall.sql>): อ่าน temperature_30high สำหรับรายการ SamplingID คั่น comma; join Sampling high และ machine เพื่อแสดงชื่อเครื่องจักร. เรียง global_row ตาม t.id และจัด 96 กล่องต่อหน้า, 8 คอลัมน์, 4 แถวต่อชั้น, 16 กล่องต่อถาด, 32 กล่องต่อชั้น. คืน Brik_Time จาก code +7 ชั่วโมง พร้อม page_no/floor_no/tray_no/row_no/col_no และ flags เริ่มหน้า/ชั้น/ถาด/แถวที่ SQL มี. page_no ว่างอ่านทุกหน้า; ค่าอื่น CAST เป็น INT.
- [Call Actual pH](<../../Query/Call Actual pH.sql>): รับ s1–s6 ตามลำดับช่อง แล้ว LEFT JOIN Sampling และ Machine. ประกอบชื่อเครื่อง รสชาติ และช่วง Spec_Actual–Spec_Actual2 เป็น ItemText; STRING_AGG ด้วยตัวคั่น | คืนคอลัมน์ ResultSequence แถวเดียว. ไม่ตัด SamplingID ซ้ำเหมือน CallProduct_Temp30/55 และไม่ได้อ่านค่าตรวจ pH ราย Brik.
- [Call_Edit_Page](<../../Query/Call_Edit_Page.sql>): อ่าน Sampling High ทุกคอลัมน์ตาม SamplingIDH={{Sampling}} และเติม machine_name. JOIN ใช้ TRY_CONVERT(INT) กับ machine/no จึงไม่จับคู่รหัสที่แปลงเป็นเลขไม่ได้; ถ้ารหัสต่างกันเพียงศูนย์นำหน้าอาจจับคู่กันหลังแปลง.
- [CallBack Sampling](<../../Query/CallBack Sampling.sql>): อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.
- [CallBack Sampling_HighAcid](<../../Query/CallBack Sampling_HighAcid.sql>): อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.
- [CheckList Sampling](<../../Query/CheckList Sampling.sql>): อ่าน Sampling high พร้อม machine และ Samp_Label. FillingDate เป็นตัวกรองวันที่ MFG_code เมื่อไม่ NULL; binding machine กลับกรอง s.Group ไม่ใช่ m.no. ตัด SamplingIDH ที่มีใน samplings แบบ comma ออก. ค่า NULL กับข้อความว่างมีความหมายต่างกันตามเงื่อนไข; ใช้เป็นตัวเลือก High Acid หลายรายการ.
- [HighAcid_Tables](<../../Query/HighAcid_Tables.sql>): รายการ High Acid พร้อม machine, amount, check_date และวันที่ MFG/EXP ที่จัดรูปแบบ. สถานะ success เมื่อ QSM_Sup_by ไม่ NULL; pending เมื่อ Submit_by และ recieved_by ไม่ NULL; นอกนั้น waiting. กรอง sampid, วัน MFG, วัน check_date และ machine โดยข้อความว่างหมายถึงไม่กรอง. สถานะใช้ IS NOT NULL จึงนับข้อความว่างเป็นค่าที่มีอยู่.
- [Merge_Recall_pH_Unique_SamplingID_Group](<../../Query/Merge_Recall_pH_Unique_SamplingID_Group.sql>): เชื่อม Sampling กับ machine และ Finish-good เมื่อ EXP_Data อยู่ในวันเดียวกับ ExpiredDate และ Group ของ Finish-good ตรงตัวอักษรแรกของชื่อ machine. TRY_CONVERT pH เป็น DECIMAL(10,3), ตัดค่าที่แปลงไม่ได้, เรียง pH จากน้อยไปมากแล้ว id; เลือกสูงสุด 16 ค่าต่อ SamplingID+Group และ pivot PH1–PH16. MERGE Recall_pH WITH(HOLDLOCK) โดย key SamplingID+Group: UPDATE เฉพาะเมื่อ EXCEPT พบค่าต่าง, INSERT เมื่อไม่มี target; ไม่มี DELETE เมื่อ source หาย. คืน ActionType/SamplingID/Group. ไม่มี binding จำกัด sampling จึงประมวลผลทั้งชุด; ค่าที่ 17 เป็นต้นไปถูกละไว้และ PH_MAX จากขั้นถัดไปอาจไม่ใช่ max ของ Finish-good ทั้งหมด.
- [Quanity Table](<../../Query/Quanity Table.sql>): อ่าน QC พร้อมชื่อ machine ของ Sampling high ที่อยู่ใน samplings และเรียง m.no. รูปแบบนี้ใช้ IN ({{samplings}}) ไม่ใช่ STRING_SPLIT; screen ต้องส่ง list ที่ SQL renderer รองรับ. ค่า default เป็นข้อความ null. อย่านำ CSV format ของ query อื่นมาใช้แทนโดยไม่ตรวจ binding.
- [SamplingTable](<../../Query/SamplingTable.sql>): อ่านรายการ Low Acid พร้อม machine/DEP, Product/Flavour และผู้ submit/receive/supervisor. สถานะ success เมื่อ SupervisorBy ไม่ NULL; pending เมื่อ submitBy และ RecevieBy ไม่ NULL; นอกนั้น waiting. ตัวกรอง ActualDate เทียบ FillingDate + dayFinished ที่ TRY_CONVERT(INT) และใช้ 0 เมื่อว่าง/แปลงไม่ได้ ไม่ได้เทียบคอลัมน์ Actual_CheckDate ที่ SELECT กลับมา. กรองวันผลิต, SamplingID และ machine เพิ่มได้ด้วยข้อความว่างเป็นไม่กรอง.
