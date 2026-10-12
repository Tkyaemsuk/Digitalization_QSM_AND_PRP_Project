# temperature_30

Brik Low Acid30°C: รหัส sampling, ลำดับกล่อง/เวลาผลิต, ผล pH/ATP/TPC สี/กลิ่น และผลตรวจซ้ำ.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `sampID` | `nvarchar` | string | True | False |
| `sampling_ref_id` | `nvarchar` | string | False | False |
| `code` | `datetime2` | datetime | False | False |
| `no` | `nvarchar` | string | False | False |
| `status` | `nvarchar` | string | False | False |
| `id` | `int` | number | False | True |
| `group` | `nvarchar` | string | False | False |
| `pH` | `nvarchar` | string | False | False |
| `colour` | `bit` | boolean | False | False |
| `smell` | `bit` | boolean | False | False |
| `tpc` | `nvarchar` | string | False | False |
| `atp` | `nvarchar` | string | False | False |
| `temp_type` | `float` | number | False | False |
| `ColourCode` | `float` | number | False | False |
| `id_no` | `float` | number | False | False |
| `Machine1` | `nvarchar` | string | False | False |
| `remark` | `nvarchar` | string | False | False |
| `NewpH` | `nvarchar` | string | False | False |
| `NewATP` | `nvarchar` | string | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [CallBack Sampling](<../../Query/CallBack Sampling.sql>): อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.
- [CallProduct30](<../../Query/CallProduct30.sql>): อ่าน Brik 30°C ของ sampID และ JOIN Sampling เพื่อ Spec_Actual/Spec_Actual2. Window แบ่งกลุ่ม no+code เพื่อ count_colour, count_tpc และ MAX(pH)/MAX(atp); คอมเมนต์ที่ว่าเลือกค่าแรกไม่ตรงกับ MAX จริง. คืน spec_ac_check เป็นข้อความ true เมื่อ pH นอกช่วง และ checked_count=2 เมื่อกลุ่มมี TPC มิฉะนั้นเป็น count_colour. เรียงกลุ่มยังไม่ครบก่อนกลุ่มมี TPC หรือ colour อย่างน้อย 2 รายการ แล้วเรียง colour ว่าง, no แบบ INT, id. pH/atp ใน schema เป็น nvarchar จึงต้องระวัง MAX แบบข้อความและ implicit numeric conversion เมื่อเทียบ float.
- [CallProduct_Temp30](<../../Query/CallProduct_Temp30.sql>): รับ s1–s6 ตัดช่องว่างและ SamplingID ซ้ำโดยใช้ช่องแรก. นับจำนวน Brik ต่อ sampling แล้วเลือกเฉพาะกลุ่มที่ running_total <=192; เมื่อกลุ่มหนึ่งทำให้ยอดเกินจะตัดทั้งกลุ่มและกลุ่มถัดไป ไม่ได้ตัดให้ครบ 192 รายแถว. JOIN Sampling สำหรับ Size/Machine แล้วสร้างพิกัดหน้า/ชั้น/ถาด/แถว/คอลัมน์. ความจุต่อหน้า: 90ml=96, 110ml=72, 165/180/200/225ml=48, 230/250ml=42; จำนวนคอลัมน์ 8 หรือ 7 และแบ่ง 3 ชั้น. page NULL คืนทุกหน้า. เพิ่ม samp1–samp6 จาก input ที่ตัดซ้ำ; total_pages ใช้ window ใน SELECT ที่มีตัวกรอง page จึงเป็นค่าสูงสุดในผลหลังกรอง ไม่ใช่จำนวนหน้ารวมเสมอ. สูตร box_per_row บางส่วนใช้ CAST ไม่ใช่ TRY_CAST จึงต้องให้ Size อยู่ในรูปแบบที่รองรับ.
- [Change_Colour](<../../Query/Change_Colour.sql>): แก้ ColourCode ของ temperature_30 ตาม sampID, Id_no และ temp_type พร้อมกัน. ไม่ได้กรอง primary key id; หากชุด key ซ้ำจะอัปเดตหลายแถว. ไม่แก้ colour/smell.
- [ChangeColor_UseBtn](<../../Query/ChangeColor_UseBtn.sql>): แก้ ColourCode, colour และ smell ใน temperature_30 ตาม id={{btnID}}. ใช้สำหรับปุ่ม Brik แต่ละกล่องบน layout; ไม่บันทึกค่า pH/ATP/TPC.
- [ColourCode](<../../Query/ColourCode.sql>): แก้ ColourCode ของทุก Brik ใน temperature_30 ที่ sampID อยู่ใน s1–s6. ช่องว่างแปลง NULL. ไม่ได้กำหนด pH, atp, colour หรือ smell แม้ปุ่มผู้ใช้จะชื่อ ATP.
- [GetList_Product30](<../../Query/GetList_Product30.sql>): SELECT * จาก temperature_30 ตาม sampID. ไม่เรียงลำดับและไม่จำกัดจำนวน; เป็นรายการ Brik แบบตรงจากตาราง.
- [link data](<../../Query/link data.sql>): UPDATE temperature_30.Machine1 จาก Sampling.Machine เมื่อ sampID=SamplingID. ไม่มี binding และไม่มี WHERE จำกัดตัวอย่าง จึงอัปเดตทุกแถวที่ JOIN ตรงกันทั้งตาราง. ไม่เปลี่ยน temperature_55 หรือ highacid.
- [Report_List_Page](<../../Query/Report_List_Page.sql>): อ่าน temperature_30 ตาม sampID และแบ่งหน้าละ 30 ด้วย ROW_NUMBER เรียง id. ต้องส่ง PageNo เป็นเลขที่คำนวณได้; ไม่มีกรณี all/ว่างเหมือน CallBackTable. ชื่อทั่วไปแต่ SQL อ่านเฉพาะ temperature_30.
- [SYNC_QUNITY_SAMPLINGS](<../../Query/SYNC_QUNITY_SAMPLINGS.sql>): หาแถว id ล่าสุดต่อ sampID ใน temperature_30 และ temperature_55 แล้ว UPDATE Sampling.Quanity/Quanity2 ด้วยค่า no จากแถวนั้น. ไม่มี WHERE และ LEFT JOIN ทำให้หัวที่ไม่มี Brik ถูกตั้ง quantity เป็น NULL. เป็น latest no ไม่ใช่ COUNT หรือ MAX(no). เรียกในลำดับ login จึงกระทบทั้งชุดระหว่าง login.
- [Table_30](<../../Query/Table_30.sql>): อ่านทุกคอลัมน์ของ temperature_30 ตาม sampID เรียง id. ไม่จำกัดจำนวนแถว.
- [UPDATE_IMPORT](<../../Query/UPDATE_IMPORT.sql>): รับ data เป็น JSON array แยกด้วย OPENJSON schema sampID(50), no(10), pH(10), atp(10). UPDATE temperature_30.pH/atp เมื่อคู่ sampID+no ตรงกัน. ไม่ INSERT รายการใหม่, ไม่กรองด้วย route sampid และไม่รวม code/id ใน key; JSON อาจแก้หลาย sampling และหลายแถวต่อเลข no ได้. ข้อมูลที่ยาวเกินขนาดใน OPENJSON ต้องพิจารณาการแปลง/ตัดค่า.
- [UpdateTemp30](<../../Query/UpdateTemp30.sql>): แก้ colour/smell/tpc ของ temperature_30 ตาม id. ไม่แก้ pH/ATP และไม่มี sampID ใน WHERE; screen ต้องส่ง id ของกล่องที่เลือกถูกต้อง.
