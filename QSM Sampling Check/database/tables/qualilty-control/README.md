# 🧪 Qualilty_Control

ตารางสำหรับเก็บผลตรวจด้านเชื้อหรือการควบคุมคุณภาพ

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Quality Control |
| Key Reference | SampID และ No |
| หน้าที่ | เก็บ Media, Batch และสถานะ Pass/Not Pass |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| SampID | รหัส Sampling หรือ Brik ที่อ้างอิง |
| No | ลำดับรายการตรวจ |
| Media | ชื่อเชื้อหรือ Media |
| Batch | ชื่อ/รหัสขวดที่ใช้งาน |
| Pass | CheckBox ผลผ่าน |
| Not Pass | CheckBox ผลไม่ผ่าน |

## 🔗 Recommended Relationship

ควรเชื่อม SampID กับ SamplingID หรือรหัส Brik ที่ใช้งานจริง และกำหนด Unique Key สำหรับ SampID + No เพื่อป้องกันข้อมูลซ้ำ

## 🧾 Related Queries

ยังไม่พบ Query ในชุด SQL ที่แนบมาโดยตรง

