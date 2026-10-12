# Sampling

หัวงาน Low Acid จาก Production: ข้อมูลผลิต/ส่ง/รับ แผนบ่ม ผลระดับหัว ผู้ตรวจ และอนุมัติ.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `SamplingID` | `nvarchar` | string | True | False |
| `Submit_Remark` | `nvarchar` | string | False | False |
| `id` | `int` | number | False | True |
| `Product` | `nvarchar` | string | False | False |
| `Flavour` | `nvarchar` | string | False | False |
| `Product_Link` | `nvarchar` | string | False | False |
| `Size` | `nvarchar` | string | False | False |
| `FillingDate` | `datetime2` | datetime | False | False |
| `ExpiredDate` | `datetime2` | datetime | False | False |
| `Plan_CheckDate` | `datetime2` | datetime | False | False |
| `Plan_CheckDate55` | `datetime2` | datetime | False | False |
| `Actual_CheckDate` | `datetime2` | datetime | False | False |
| `Actual_CheckDate55` | `datetime2` | datetime | False | False |
| `Temperature` | `nvarchar` | string | False | False |
| `dayFinished` | `nvarchar` | string | False | False |
| `Temperature2` | `nvarchar` | string | False | False |
| `dayFinished2` | `nvarchar` | string | False | False |
| `Quanity` | `nvarchar` | string | False | False |
| `Quanity2` | `nvarchar` | string | False | False |
| `Amount_Samples` | `nvarchar` | string | False | False |
| `RecevieBy` | `nvarchar` | string | False | False |
| `Recieved_date` | `datetime2` | datetime | False | False |
| `SupervisorBy` | `nvarchar` | string | False | False |
| `Supervisor_Date` | `datetime2` | datetime | False | False |
| `Department` | `nvarchar` | string | False | False |
| `Machine` | `nvarchar` | string | False | False |
| `CreatedBY` | `datetime2` | datetime | False | False |
| `PH` | `bit` | boolean | False | False |
| `PH2` | `bit` | boolean | False | False |
| `Colour` | `bit` | boolean | False | False |
| `Colour2` | `bit` | boolean | False | False |
| `Smell` | `bit` | boolean | False | False |
| `Smell2` | `bit` | boolean | False | False |
| `Atp` | `bit` | boolean | False | False |
| `Atp2` | `bit` | boolean | False | False |
| `Tpc` | `bit` | boolean | False | False |
| `Tpc2` | `bit` | boolean | False | False |
| `Example` | `bit` | boolean | False | False |
| `Indication` | `bit` | boolean | False | False |
| `packaging` | `bit` | boolean | False | False |
| `complete` | `bit` | boolean | False | False |
| `Detail_Complete` | `bit` | boolean | False | False |
| `Normal` | `bit` | boolean | False | False |
| `Incomplete` | `nvarchar` | string | False | False |
| `Detail_incomplete` | `nvarchar` | string | False | False |
| `Abnormal` | `nvarchar` | string | False | False |
| `EditBy` | `nvarchar` | string | False | False |
| `UpdateAt` | `datetime2` | datetime | False | False |
| `PH_Before` | `float` | number | False | False |
| `PH_Before2` | `float` | number | False | False |
| `Spec_Actual` | `float` | number | False | False |
| `Spec_Actual2` | `float` | number | False | False |
| `Group` | `nvarchar` | string | False | False |
| `physical_by` | `nvarchar` | string | False | False |
| `physical_by2` | `nvarchar` | string | False | False |
| `physical_date` | `datetime2` | datetime | False | False |
| `physical_date2` | `datetime2` | datetime | False | False |
| `results_by` | `nvarchar` | string | False | False |
| `results_by2` | `nvarchar` | string | False | False |
| `results_date` | `datetime2` | datetime | False | False |
| `results_date2` | `datetime2` | datetime | False | False |
| `submitBy` | `nvarchar` | string | False | False |
| `submit_date` | `datetime2` | datetime | False | False |
| `check30` | `bit` | boolean | False | False |
| `check55` | `bit` | boolean | False | False |
| `SendBY` | `nvarchar` | string | False | False |
| `SendBY2` | `nvarchar` | string | False | False |
| `SendBY3` | `nvarchar` | string | False | False |
| `Send4` | `nvarchar` | string | False | False |
| `production_update_uid` | `nvarchar` | string | False | False |
| `production__update_date` | `datetime2` | datetime | False | False |
| `Unlocked_Uid` | `nvarchar` | string | False | False |
| `Locked_Production` | `nvarchar` | string | False | False |
| `Locked_Production copy` | `nvarchar` | string | False | False |
| `Products` | `nvarchar` | string | False | False |
| `Product_ID` | `nvarchar` | string | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Call Actual pH](<../../Query/Call Actual pH.sql>): รับ s1–s6 ตามลำดับช่อง แล้ว LEFT JOIN Sampling และ Machine. ประกอบชื่อเครื่อง รสชาติ และช่วง Spec_Actual–Spec_Actual2 เป็น ItemText; STRING_AGG ด้วยตัวคั่น | คืนคอลัมน์ ResultSequence แถวเดียว. ไม่ตัด SamplingID ซ้ำเหมือน CallProduct_Temp30/55 และไม่ได้อ่านค่าตรวจ pH ราย Brik.
- [CallBack Sampling](<../../Query/CallBack Sampling.sql>): อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.
- [CallProduct30](<../../Query/CallProduct30.sql>): อ่าน Brik 30°C ของ sampID และ JOIN Sampling เพื่อ Spec_Actual/Spec_Actual2. Window แบ่งกลุ่ม no+code เพื่อ count_colour, count_tpc และ MAX(pH)/MAX(atp); คอมเมนต์ที่ว่าเลือกค่าแรกไม่ตรงกับ MAX จริง. คืน spec_ac_check เป็นข้อความ true เมื่อ pH นอกช่วง และ checked_count=2 เมื่อกลุ่มมี TPC มิฉะนั้นเป็น count_colour. เรียงกลุ่มยังไม่ครบก่อนกลุ่มมี TPC หรือ colour อย่างน้อย 2 รายการ แล้วเรียง colour ว่าง, no แบบ INT, id. pH/atp ใน schema เป็น nvarchar จึงต้องระวัง MAX แบบข้อความและ implicit numeric conversion เมื่อเทียบ float.
- [CallProduct55](<../../Query/CallProduct55.sql>): ทำงานคู่กับ CallProduct30 โดยใช้ temperature_55: แบ่งกลุ่ม no+code, นับ colour/TPC, MAX(pH)/MAX(atp), เปรียบเทียบกับ spec จาก Sampling และคืน checked_count/spec_ac_check. ค่า MAX ไม่ใช่ค่าแรก; no ที่แปลง INT ไม่ได้อาจทำให้ ORDER BY ล้มเหลว. NewpH/NewATP แสดงเป็น newph/newatp เพื่อผลตรวจซ้ำ.
- [CallProduct_Temp30](<../../Query/CallProduct_Temp30.sql>): รับ s1–s6 ตัดช่องว่างและ SamplingID ซ้ำโดยใช้ช่องแรก. นับจำนวน Brik ต่อ sampling แล้วเลือกเฉพาะกลุ่มที่ running_total <=192; เมื่อกลุ่มหนึ่งทำให้ยอดเกินจะตัดทั้งกลุ่มและกลุ่มถัดไป ไม่ได้ตัดให้ครบ 192 รายแถว. JOIN Sampling สำหรับ Size/Machine แล้วสร้างพิกัดหน้า/ชั้น/ถาด/แถว/คอลัมน์. ความจุต่อหน้า: 90ml=96, 110ml=72, 165/180/200/225ml=48, 230/250ml=42; จำนวนคอลัมน์ 8 หรือ 7 และแบ่ง 3 ชั้น. page NULL คืนทุกหน้า. เพิ่ม samp1–samp6 จาก input ที่ตัดซ้ำ; total_pages ใช้ window ใน SELECT ที่มีตัวกรอง page จึงเป็นค่าสูงสุดในผลหลังกรอง ไม่ใช่จำนวนหน้ารวมเสมอ. สูตร box_per_row บางส่วนใช้ CAST ไม่ใช่ TRY_CAST จึงต้องให้ Size อยู่ในรูปแบบที่รองรับ.
- [CallProduct_Temp55](<../../Query/CallProduct_Temp55.sql>): จัด layout Brik 55°C ตาม s1–s6 โดยตัด input ซ้ำ/ว่างและจำกัดยอดสะสมเป็นกลุ่มไม่เกิน 192 เช่น Temp30. ใช้ตาราง temperature_55 และสูตรความจุ/พิกัดเดียวกัน; box_per_row ใช้ TRY_CAST. ไม่มี sampling_map/samp1–samp6 ในผลลัพธ์ท้าย query. page NULL คืนทุกหน้า; total_pages คำนวณหลังตัวกรอง page เช่นเดียวกัน.
- [EditActurl30&55](<../../Query/EditActurl30&55.sql>): แก้วันที่ตรวจจริงใน Sampling ของ samplingID. CheckType='30' เปลี่ยน Actual_CheckDate; '55' เปลี่ยน Actual_CheckDate55; ค่าอื่นคงวันที่เดิมทั้งคู่. Query เดียวถูกเรียกจากปุ่ม Update30 และ Update55.
- [Getall_Sampling](<../../Query/Getall_Sampling.sql>): คืน Sampling ตาม Size โดยลบ ml., ml และช่องว่างก่อนเปรียบเทียบแบบ lowercase. FillingDate NULL ไม่กรองวัน มิฉะนั้นเทียบวันที่จาก 10 ตัวอักษรแรก. ตัด SamplingID ที่เลือกแล้วใน sampling1–sampling6 ออก โดย NULL หมายถึงยังไม่เลือก. ไม่มี ORDER BY จึงไม่รับประกันลำดับตัวเลือก.
- [getph_sampling](<../../Query/getph_sampling.sql>): รับ SamplingID หลัง trim แล้ว JOIN Recall_Ph กับ Sampling. CROSS APPLY VALUES ของ PH1–PH16 เพื่อหา MIN/MAX และอัปเดต Sampling.PH_Before/PH_Before2. SELECT ท้ายคืน PH ทั้ง 16 ค่า MIN/MAX และค่าที่บันทึก. กรอง SamplingID อย่างเดียว ไม่รวม Group; ถ้า Recall_Ph มีหลาย Group สำหรับ sampling เดียว UPDATE JOIN อาจมีหลาย source ต่อหนึ่งหัวและต้องกำหนดกติกาการรวมเพิ่มเติม.
- [link data](<../../Query/link data.sql>): UPDATE temperature_30.Machine1 จาก Sampling.Machine เมื่อ sampID=SamplingID. ไม่มี binding และไม่มี WHERE จำกัดตัวอย่าง จึงอัปเดตทุกแถวที่ JOIN ตรงกันทั้งตาราง. ไม่เปลี่ยน temperature_55 หรือ highacid.
- [Merge_Recall_pH_Unique_SamplingID_Group](<../../Query/Merge_Recall_pH_Unique_SamplingID_Group.sql>): เชื่อม Sampling กับ machine และ Finish-good เมื่อ EXP_Data อยู่ในวันเดียวกับ ExpiredDate และ Group ของ Finish-good ตรงตัวอักษรแรกของชื่อ machine. TRY_CONVERT pH เป็น DECIMAL(10,3), ตัดค่าที่แปลงไม่ได้, เรียง pH จากน้อยไปมากแล้ว id; เลือกสูงสุด 16 ค่าต่อ SamplingID+Group และ pivot PH1–PH16. MERGE Recall_pH WITH(HOLDLOCK) โดย key SamplingID+Group: UPDATE เฉพาะเมื่อ EXCEPT พบค่าต่าง, INSERT เมื่อไม่มี target; ไม่มี DELETE เมื่อ source หาย. คืน ActionType/SamplingID/Group. ไม่มี binding จำกัด sampling จึงประมวลผลทั้งชุด; ค่าที่ 17 เป็นต้นไปถูกละไว้และ PH_MAX จากขั้นถัดไปอาจไม่ใช่ max ของ Finish-good ทั้งหมด.
- [Physical_Report](<../../Query/Physical_Report.sql>): บันทึก physical_by, physical_date และ Actual_CheckDate ของ Sampling สำหรับ sampID–sampID6 ใน IN list. เป็นการลงผู้ตรวจ 30°C หลาย sampling พร้อมกัน; ไม่บันทึกผลราย Brik.
- [Physical_Report2](<../../Query/Physical_Report2.sql>): คู่ฝั่ง 55°C ของ Physical_Report: แก้ physical_by2, physical_date2 และ Actual_CheckDate55 สำหรับ sampling สูงสุด 6 รายการ.
- [result_physical_api](<../../Query/result_physical_api.sql>): บันทึกผู้ตรวจ physical/results และวันที่ของ Sampling หนึ่งรายการ ฝั่ง 30°C. ไม่แก้ Actual_CheckDate ต่างจาก Physical_Report และไม่แก้ผลราย Brik.
- [result_physical_api 2](<../../Query/result_physical_api 2.sql>): บันทึก physical_by2/physical_date2/results_by2/results_date2 ของ Sampling หนึ่งรายการ ฝั่ง 55°C. ไม่เปลี่ยน Actual_CheckDate55.
- [SamplingTable](<../../Query/SamplingTable.sql>): อ่านรายการ Low Acid พร้อม machine/DEP, Product/Flavour และผู้ submit/receive/supervisor. สถานะ success เมื่อ SupervisorBy ไม่ NULL; pending เมื่อ submitBy และ RecevieBy ไม่ NULL; นอกนั้น waiting. ตัวกรอง ActualDate เทียบ FillingDate + dayFinished ที่ TRY_CONVERT(INT) และใช้ 0 เมื่อว่าง/แปลงไม่ได้ ไม่ได้เทียบคอลัมน์ Actual_CheckDate ที่ SELECT กลับมา. กรองวันผลิต, SamplingID และ machine เพิ่มได้ด้วยข้อความว่างเป็นไม่กรอง.
- [Sup_Approve](<../../Query/Sup_Approve.sql>): ตั้ง SupervisorBy และ Supervisor_Date ของ Sampling ตาม SampID. SQL ไม่มีเงื่อนไขต้องตรวจครบ/ผู้ใช้มี role ใด; เงื่อนไขก่อนเรียกอยู่ใน screen actions. เมื่อมี SupervisorBy รายการจะเข้าเงื่อนไข success ของ SamplingTable.
- [SYNC_QUNITY_SAMPLINGS](<../../Query/SYNC_QUNITY_SAMPLINGS.sql>): หาแถว id ล่าสุดต่อ sampID ใน temperature_30 และ temperature_55 แล้ว UPDATE Sampling.Quanity/Quanity2 ด้วยค่า no จากแถวนั้น. ไม่มี WHERE และ LEFT JOIN ทำให้หัวที่ไม่มี Brik ถูกตั้ง quantity เป็น NULL. เป็น latest no ไม่ใช่ COUNT หรือ MAX(no). เรียกในลำดับ login จึงกระทบทั้งชุดระหว่าง login.
- [UnlockSamp_Production](<../../Query/UnlockSamp_Production.sql>): ปลดล็อก Sampling ตาม SampID: ล้าง RecevieBy/Recieved_date, ตั้ง Locked_Production='0', เก็บ Unlocked_Uid. ไม่ล้าง SupervisorBy หรือผลเดิม จึงต้องตกลงขั้นตอน re-approval เมื่อนำกลับแก้ที่ Production.
- [Update  Results](<../../Query/Update  Results.sql>): บันทึก flags tpc/atp/tpc2/atp2 ในหัว Sampling ตาม sampID. คอลัมน์เหล่านี้เป็น bit ใน imported schema; ไม่ใช่ค่าตรวจ TPC/ATP ราย Brik ที่เป็น nvarchar ใน temperature tables. ชื่อจริงมีสองช่องว่างระหว่าง Update กับ Results.
- [UPDATE CheckBox](<../../Query/UPDATE CheckBox.sql>): แก้ flags PH/Colour/Smell และ PH2/Colour2/Smell2 ของ Sampling ตาม sampID. เป็นการระบุ physical tests ระดับหัว ไม่ใช่ผลรายกล่อง.
- [Update PHB](<../../Query/Update PHB.sql>): ตั้ง PH_Before/PH_Before2 และ Spec_Actual/Spec_Actual2 ของ Sampling ตาม sampID. bindings spac/spac2 ถูก quote เป็นข้อความใน SQL แล้ว SQL Server แปลงเข้าคอลัมน์ float; ให้ส่งค่าตัวเลขที่ถูกต้อง.
- [Update Sampling Submit](<../../Query/Update Sampling Submit.sql>): บันทึก check30/check55, submitBy, submit_date และ submit_Remark ของ Sampling ตาม sampID. ไม่ล็อก Production และไม่ลงผู้รับ; workflow รับงานทำใน Update_Sampling แยกกัน.
- [Update_Filling](<../../Query/Update_Filling.sql>): แก้วัน FillingDate/ExpiredDate, EditBy พร้อม Plan_CheckDate/Plan_CheckDate55 ของ Sampling ตาม SamID. หน้าจอคำนวณ state แผนก่อนส่ง query; SQL ไม่คำนวณวันบ่มเอง.
- [Update_Filling_LOW](<../../Query/Update_Filling_LOW.sql>): แก้ FillingDate/ExpiredDate และ EditBy ของ Sampling ตาม SamID เท่านั้น. ไม่เปลี่ยนวันแผน ต่างจาก Update_Filling.
- [Update_Sampling](<../../Query/Update_Sampling.sql>): บันทึกข้อมูลรับ Low Acid: Product/Flavour, วันแผน/วันตรวจจริงทั้ง30/55, dayFinished/dayFinished2, ผู้รับ/วันรับ, จำนวนตัวอย่าง สภาพ บรรจุภัณฑ์ และรายละเอียด พร้อม EditBy. ตั้ง Locked_Production='1' ตาม SamID. เป็นจุดส่งสถานะกลับให้ Sampling Check ระงับการเพิ่มข้อมูล; ไม่ได้สร้าง Sampling ใหม่.

## ขอบเขตการเปลี่ยนแปลง

- Production สร้างหัวและรายการ Brik; Analysis เปลี่ยนข้อมูลส่ง/รับ/ผล/อนุมัติ.
- business key `SamplingID` ใช้ JOIN กับ `sampID`; ไม่ใช่ PK ตาม Builder.
- คอลัมน์ PH/Colour/Smell/Tpc/Atp เป็น flags ระดับหัว ต่างจากผลข้อความราย Brik.
- ดูวงจร Locked_Production ใน [Integration](../../../integration/README.md).
