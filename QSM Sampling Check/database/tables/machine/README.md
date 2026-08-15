# 🏭 Machine

ตาราง Master Data สำหรับข้อมูลเครื่องจักรและแผนก

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Master Data |
| Primary Key | No หรือ ID ตาม Schema จริง |
| ใช้เชื่อมกับ | Sampling และ [Sampling high] |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| ID | รหัสรายการ |
| No | หมายเลขเครื่อง |
| Machine | ชื่อเครื่องจักร |
| DEP | ชื่อแผนก |
| [dep no] | รหัสแผนก ถ้ามีใน Schema |

## 🔗 Relationships

| จาก | ไปยัง |
|---|---|
| Machine.No | Sampling.Machine |
| Machine.No | [Sampling high].machine |

## 🧾 Related Queries

Sampling_Table.sql, Sampling_HighAcid_Tables.sql, CallBack Sampling.sql, CallBack Sampling_HighAcid.sql

