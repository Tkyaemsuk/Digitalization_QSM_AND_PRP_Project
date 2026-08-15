# 📦 Machine_Size

ตาราง Master Data สำหรับกำหนดขนาดผลิตภัณฑ์ที่เครื่องจักรสามารถผลิตได้

## 📌 Table Information

| Column | ความหมาย |
|---|---|
| ID | รหัสรายการ |
| No | หมายเลขเครื่อง |
| Machine | ชื่อเครื่องจักร |
| DEP | แผนก |
| size | ขนาดผลิตภัณฑ์ที่รองรับ |

## 🔗 Recommended Relationship

Machine_Size.No → Machine.No

ใช้ตรวจสอบว่าเครื่องจักรแต่ละเครื่องรองรับ Size ของผลิตภัณฑ์ที่เลือกหรือไม่

## 🧾 Related Queries

ยังไม่พบ Query ในชุด SQL ที่แนบมาโดยตรง

