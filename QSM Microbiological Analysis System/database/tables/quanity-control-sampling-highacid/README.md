# Quanity_Control_Sampling_highacid

รายการ QC ต่อ SamplingIDH: No/Media/Batch/Pass/NotPass.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `SampID` | `nvarchar` | string | True | False |
| `No` | `nvarchar` | string | False | False |
| `Media` | `nvarchar` | string | False | False |
| `Batch` | `nvarchar` | string | False | False |
| `Pass` | `bit` | boolean | False | False |
| `NotPass` | `bit` | boolean | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Batch_Recall](<../../Query/Batch_Recall.sql>): อ่าน QC ของ sampID และกำหนด ROW_NUMBER ตาม id จากนั้น pivot 10 ลำดับเป็น No1–No10, Media1–Media10, Batch1–Batch10, Pass1–Pass10 และ Notpass1–Notpass10. Pass/Notpass คืนเป็นข้อความ true/false; ลำดับที่ไม่มีข้อมูลเป็น false ส่วนข้อมูลอื่น NULL. TOP(10) ใน subquery ไม่มี ORDER BY ระดับเดียวกัน แม้ ROW_NUMBER จะเรียง id จึงควรทบทวนความแน่นอนเมื่อมีมากกว่า 10 แถว.
- [CallBack Sampling_HighAcid](<../../Query/CallBack Sampling_HighAcid.sql>): อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.
- [Quanity Table](<../../Query/Quanity Table.sql>): อ่าน QC พร้อมชื่อ machine ของ Sampling high ที่อยู่ใน samplings และเรียง m.no. รูปแบบนี้ใช้ IN ({{samplings}}) ไม่ใช่ STRING_SPLIT; screen ต้องส่ง list ที่ SQL renderer รองรับ. ค่า default เป็นข้อความ null. อย่านำ CSV format ของ query อื่นมาใช้แทนโดยไม่ตรวจ binding.
- [Quanity_Control_Added](<../../Query/Quanity_Control_Added.sql>): STRING_SPLIT SampID ด้วย comma แล้ว INSERT QC หนึ่งแถวต่อค่าที่แยกได้ พร้อม No, Media, Batch, Pass, Notpass ชุดเดียวกัน. trim แต่ไม่ตัด token ว่าง/ซ้ำ และไม่มี NOT EXISTS จึงเพิ่มซ้ำได้เมื่อเรียกซ้ำ.
- [Qunity_pass](<../../Query/Qunity_pass.sql>): ตั้ง Pass ของ QC ทุกแถวที่ sampID อยู่ใน samplings แบบ comma. ไม่กรอง id/No/Media และไม่ reset Notpass; จึงอาจคง Notpass=true จากข้อมูลเดิมแม้ตั้ง Pass=true.
- [Remove_Qc Table](<../../Query/Remove_Qc Table.sql>): DELETE QC เฉพาะ id ที่ส่งมา. เป็นการลบจริงจาก Quanity_Control_Sampling_highacid; ไม่มี soft-delete หรือ SELECT ยืนยันใน SQL.
