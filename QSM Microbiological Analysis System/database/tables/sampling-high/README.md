# Sampling high

หัวงาน High Acid: ข้อมูลผลิต การส่ง/รับ การเก็บรักษา ตรวจ physical/microbe และ supervisor.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `SamplingIDH` | `nvarchar` | string | False | False |
| `product` | `nvarchar` | string | False | False |
| `machine` | `nvarchar` | string | False | False |
| `amount` | `nvarchar` | string | False | False |
| `TPCH` | `bit` | boolean | False | False |
| `Y_M` | `bit` | boolean | False | False |
| `Physical_T` | `bit` | boolean | False | False |
| `Room_Temp` | `bit` | boolean | False | False |
| `Temp0_8` | `bit` | boolean | False | False |
| `Feezer` | `bit` | boolean | False | False |
| `Other_Spec` | `nvarchar` | string | False | False |
| `Submit_by` | `nvarchar` | string | False | False |
| `Submit_date` | `datetime2` | datetime | False | False |
| `Complete` | `bit` | boolean | False | False |
| `De_Complete` | `bit` | boolean | False | False |
| `Packaging` | `bit` | boolean | False | False |
| `De_incom_spec` | `bit` | boolean | False | False |
| `incom_spec` | `bit` | boolean | False | False |
| `ab_spec` | `bit` | boolean | False | False |
| `OtherSpecBox` | `bit` | boolean | False | False |
| `incom_spec_re` | `nvarchar` | string | False | False |
| `De_incom_spec_re` | `nvarchar` | string | False | False |
| `ab_spec_re` | `nvarchar` | string | False | False |
| `recieved_by` | `nvarchar` | string | False | False |
| `recieved_date` | `datetime2` | datetime | False | False |
| `check_date` | `datetime2` | datetime | False | False |
| `check_date2` | `datetime2` | datetime | False | False |
| `MFG_code` | `datetime2` | datetime | False | False |
| `EXP_code` | `datetime2` | datetime | False | False |
| `inspector_by` | `nvarchar` | string | False | False |
| `inspector_date` | `datetime2` | datetime | False | False |
| `interpretor_by` | `nvarchar` | string | False | False |
| `interpretor_date` | `datetime2` | datetime | False | False |
| `QSM_Sup_by` | `nvarchar` | string | False | False |
| `QSM_Sup_date` | `datetime2` | datetime | False | False |
| `id` | `int` | number | False | True |
| `SendBY` | `nvarchar` | string | False | False |
| `SendBY2` | `nvarchar` | string | False | False |
| `SendBY3` | `nvarchar` | string | False | False |
| `Send4` | `nvarchar` | string | False | False |
| `Size` | `nvarchar` | string | False | False |
| `Unlocked_Uid` | `nvarchar` | string | False | False |
| `Locked_Production` | `nvarchar` | string | False | False |
| `SendBY_Date` | `datetime2` | datetime | False | False |
| `SendBY_Date2` | `datetime2` | datetime | False | False |
| `SendBY_Date3` | `datetime2` | datetime | False | False |
| `SendBY_Date4` | `datetime2` | datetime | False | False |
| `Group` | `nvarchar` | string | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Bottom_Recall](<../../Query/Bottom_Recall.sql>): อ่าน temperature_30high สำหรับรายการ SamplingID คั่น comma; join Sampling high และ machine เพื่อแสดงชื่อเครื่องจักร. เรียง global_row ตาม t.id และจัด 96 กล่องต่อหน้า, 8 คอลัมน์, 4 แถวต่อชั้น, 16 กล่องต่อถาด, 32 กล่องต่อชั้น. คืน Brik_Time จาก code +7 ชั่วโมง พร้อม page_no/floor_no/tray_no/row_no/col_no และ flags เริ่มหน้า/ชั้น/ถาด/แถวที่ SQL มี. page_no ว่างอ่านทุกหน้า; ค่าอื่น CAST เป็น INT.
- [Call_Edit_Page](<../../Query/Call_Edit_Page.sql>): อ่าน Sampling High ทุกคอลัมน์ตาม SamplingIDH={{Sampling}} และเติม machine_name. JOIN ใช้ TRY_CONVERT(INT) กับ machine/no จึงไม่จับคู่รหัสที่แปลงเป็นเลขไม่ได้; ถ้ารหัสต่างกันเพียงศูนย์นำหน้าอาจจับคู่กันหลังแปลง.
- [CallBack Sampling_HighAcid](<../../Query/CallBack Sampling_HighAcid.sql>): อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.
- [CheckList Sampling](<../../Query/CheckList Sampling.sql>): อ่าน Sampling high พร้อม machine และ Samp_Label. FillingDate เป็นตัวกรองวันที่ MFG_code เมื่อไม่ NULL; binding machine กลับกรอง s.Group ไม่ใช่ m.no. ตัด SamplingIDH ที่มีใน samplings แบบ comma ออก. ค่า NULL กับข้อความว่างมีความหมายต่างกันตามเงื่อนไข; ใช้เป็นตัวเลือก High Acid หลายรายการ.
- [HighAcid_Tables](<../../Query/HighAcid_Tables.sql>): รายการ High Acid พร้อม machine, amount, check_date และวันที่ MFG/EXP ที่จัดรูปแบบ. สถานะ success เมื่อ QSM_Sup_by ไม่ NULL; pending เมื่อ Submit_by และ recieved_by ไม่ NULL; นอกนั้น waiting. กรอง sampid, วัน MFG, วัน check_date และ machine โดยข้อความว่างหมายถึงไม่กรอง. สถานะใช้ IS NOT NULL จึงนับข้อความว่างเป็นค่าที่มีอยู่.
- [Quanity Table](<../../Query/Quanity Table.sql>): อ่าน QC พร้อมชื่อ machine ของ Sampling high ที่อยู่ใน samplings และเรียง m.no. รูปแบบนี้ใช้ IN ({{samplings}}) ไม่ใช่ STRING_SPLIT; screen ต้องส่ง list ที่ SQL renderer รองรับ. ค่า default เป็นข้อความ null. อย่านำ CSV format ของ query อื่นมาใช้แทนโดยไม่ตรวจ binding.
- [Save CheckDate HighAcid](<../../Query/Save CheckDate HighAcid.sql>): แก้ check_date และ check_date2 ของ Sampling high ตาม SamplingIDH. วันที่รับจาก bindings Checkdate/Checkdate2 โดยตรง ไม่มีการบวก timezone ใน SQL.
- [Sup_Edit_PART](<../../Query/Sup_Edit_PART.sql>): แก้หลายส่วนของ Sampling high ในคำสั่งเดียว: สภาพตัวอย่าง/บรรจุภัณฑ์, ผู้รับ/วันรับ, check_date1/2, MFG/EXP, ผู้ submit/วันส่ง, test flags, storage flags, Other_Spec และ Submit_remark. ตั้ง Locked_Production='1' เสมอ. วันที่ submit/receive ใช้ CONVERT(DATETIME2,...,101). กรอง SamplingIDH; ชื่อ query ไม่ได้หมายถึงการลง QSM_Sup_by.
- [SYNCHIGH_QUNITY_SAMPLINGS](<../../Query/SYNCHIGH_QUNITY_SAMPLINGS.sql>): หา no ของ temperature_30high แถว id ล่าสุดต่อ sampID แล้วตั้ง Sampling high.amount. ไม่มี WHERE; หัวที่ไม่มี Brik ถูกตั้ง amount=NULL. เรียกใน /login คู่กับ sync Low Acid.
- [UnlockSamp_HighAcid_Production](<../../Query/UnlockSamp_HighAcid_Production.sql>): ปลดล็อก Sampling high ตาม SampID: ล้าง recieved_by/recieved_date, ตั้ง Locked_Production='0' และเก็บ Unlocked_Uid. ไม่ล้าง submit, ผลตรวจ หรือ QSM_Sup_by; หากมี supervisor แล้ว status อาจยัง success ตาม query รายการ.
- [Update_HighAcid_Recevied](<../../Query/Update_HighAcid_Recevied.sql>): บันทึกสภาพตัวอย่าง บรรจุภัณฑ์ การอยู่ใน spec/นอก spec และคำอธิบาย พร้อม recieved_by/recieved_date ของ Sampling high. แปลงวันรับด้วย style101 และตั้ง Locked_Production='1'. กรอง SamplingIDH.
- [Update_HighAcid_Submitted_Sampling](<../../Query/Update_HighAcid_Submitted_Sampling.sql>): บันทึกผู้ส่ง/วันส่ง, test flags TPCH/Y_M/Physical_T, storage flags Room_Temp/Temp0_8/Feezer และ OtherSpecBox/Other_Spec/Submit_remark ของ Sampling high. แปลงวันส่ง style101; ไม่แก้ lock หรือผู้รับ.
- [Update_Microbe_highacid](<../../Query/Update_Microbe_highacid.sql>): ตั้ง interpretor_by/interpretor_date ของ Sampling high ทุก SamplingIDH ใน SampID แบบ comma. binding ชื่อ inspect/inspect_date แม้คอลัมน์เป็น interpretor; trim token แต่ไม่ตัดซ้ำ.
- [Update_Physical_highacid](<../../Query/Update_Physical_highacid.sql>): ตั้ง inspector_by/inspector_date ของ Sampling high ตาม SampID แบบ comma. เป็นผู้ลงผล physical ระดับหัว; ผลราย Brik ต้องบันทึกต่าง query.
- [Update_Sup_HighAcid](<../../Query/Update_Sup_HighAcid.sql>): ตั้ง QSM_Sup_by/QSM_Sup_date ของ Sampling high ตามรายการ SampID คั่น comma. SQL ไม่บังคับผลตรวจครบก่อนอนุมัติ; เมื่อ QSM_Sup_by ไม่ NULL รายการจะเป็น success. ใช้ทั้งหน้ารายงานและ a4-highacid.

## ข้อสังเกต schema

SQL หลายตัวเขียน `Submit_remark` แต่ imported schema นี้ไม่มีคอลัมน์ดังกล่าว. ตรวจ schema refresh/DDL ปัจจุบันก่อนแก้หรือ deploy. business key คือ SamplingIDH แต่ PK ของ Builder เป็น id.
