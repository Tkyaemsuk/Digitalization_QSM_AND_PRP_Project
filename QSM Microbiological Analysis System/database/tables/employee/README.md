# employee

lookup ชื่อผู้ปฏิบัติงานจาก code ผ่าน JOIN หลายบทบาท; ไม่พบ imported schema ใน export.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

ไม่พบ schema ใน datasource export จึงไม่กำหนด PK/FK/type/nullability เอง. คอลัมน์ที่ใช้งานและ JOIN key อ่านได้จาก SQL ที่ลิงก์ด้านล่าง.

## Query ที่เกี่ยวข้อง

- [CallBack Sampling](<../../Query/CallBack Sampling.sql>): อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.
- [CallBack Sampling_HighAcid](<../../Query/CallBack Sampling_HighAcid.sql>): อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.
