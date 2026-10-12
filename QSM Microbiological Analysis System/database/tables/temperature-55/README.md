# temperature_55

Brik Low Acid55°C ใช้โครงสร้างคู่กับ30°C แต่เก็บคนละตาราง.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `sampID` | `nvarchar` | string | False | False |
| `pH` | `nvarchar` | string | False | False |
| `id_no` | `float` | number | False | False |
| `Machine1` | `nvarchar` | string | False | False |
| `status` | `nvarchar` | string | False | False |
| `sampling_ref_id` | `nvarchar` | string | False | False |
| `id` | `int` | number | False | True |
| `no` | `nvarchar` | string | False | False |
| `code` | `datetime2` | datetime | False | False |
| `group` | `nvarchar` | string | False | False |
| `NewpH` | `nvarchar` | string | False | False |
| `colour` | `bit` | boolean | False | False |
| `smell` | `bit` | boolean | False | False |
| `tpc` | `nvarchar` | string | False | False |
| `atp` | `nvarchar` | string | False | False |
| `NewATP` | `nvarchar` | string | False | False |
| `remark` | `nvarchar` | string | False | False |
| `temp_type` | `float` | number | False | False |
| `ColourCode` | `float` | number | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [CallBack Sampling](<../../Query/CallBack Sampling.sql>): อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.
- [CallProduct55](<../../Query/CallProduct55.sql>): ทำงานคู่กับ CallProduct30 โดยใช้ temperature_55: แบ่งกลุ่ม no+code, นับ colour/TPC, MAX(pH)/MAX(atp), เปรียบเทียบกับ spec จาก Sampling และคืน checked_count/spec_ac_check. ค่า MAX ไม่ใช่ค่าแรก; no ที่แปลง INT ไม่ได้อาจทำให้ ORDER BY ล้มเหลว. NewpH/NewATP แสดงเป็น newph/newatp เพื่อผลตรวจซ้ำ.
- [CallProduct_Temp55](<../../Query/CallProduct_Temp55.sql>): จัด layout Brik 55°C ตาม s1–s6 โดยตัด input ซ้ำ/ว่างและจำกัดยอดสะสมเป็นกลุ่มไม่เกิน 192 เช่น Temp30. ใช้ตาราง temperature_55 และสูตรความจุ/พิกัดเดียวกัน; box_per_row ใช้ TRY_CAST. ไม่มี sampling_map/samp1–samp6 ในผลลัพธ์ท้าย query. page NULL คืนทุกหน้า; total_pages คำนวณหลังตัวกรอง page เช่นเดียวกัน.
- [ChangeColor_UseBtn55](<../../Query/ChangeColor_UseBtn55.sql>): แก้ ColourCode, colour และ smell ใน temperature_55 ตาม id={{btnID}}; เป็นคู่การทำงานฝั่ง 55°C.
- [ColourCode 55](<../../Query/ColourCode 55.sql>): แก้เฉพาะ ColourCode ของทุก Brik temperature_55 สำหรับ s1–s6. ไม่แก้ค่าผล ATP จริง; ผลของปุ่มกับข้อมูลเชิงตัวเลขต้องแยกพิจารณา.
- [SYNC_QUNITY_SAMPLINGS](<../../Query/SYNC_QUNITY_SAMPLINGS.sql>): หาแถว id ล่าสุดต่อ sampID ใน temperature_30 และ temperature_55 แล้ว UPDATE Sampling.Quanity/Quanity2 ด้วยค่า no จากแถวนั้น. ไม่มี WHERE และ LEFT JOIN ทำให้หัวที่ไม่มี Brik ถูกตั้ง quantity เป็น NULL. เป็น latest no ไม่ใช่ COUNT หรือ MAX(no). เรียกในลำดับ login จึงกระทบทั้งชุดระหว่าง login.
- [Table_55](<../../Query/Table_55.sql>): อ่าน temperature_55 ตาม sampID เรียง id แล้ว OFFSET 0/FETCH NEXT 15. คืนสูงสุด 15 แถวแรกและไม่มี binding เลื่อนหน้า; หากใช้ทำรายงานต้องไม่สมมติว่าครบทุก Brik.
- [UPDATE_IMPORT55](<../../Query/UPDATE_IMPORT55.sql>): นำเข้า JSON แบบ UPDATE_IMPORT แต่ใช้ temperature_55 และ field ph. เปลี่ยนเฉพาะ ph/atp ตาม sampID+no; ไม่สร้างแถวใหม่และไม่จำกัด sampling ตาม route โดย SQL เอง.
- [UpdateTemp55](<../../Query/UpdateTemp55.sql>): แก้ colour/smell/tpc ของ temperature_55 ตาม id. เป็นคู่ฝั่ง55ของ UpdateTemp30; ไม่มีการเขียนข้ามไป temperature_30 ใน query นี้.
