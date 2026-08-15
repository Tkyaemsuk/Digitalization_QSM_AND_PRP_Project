# 👥 empolyee

ตาราง Master Data สำหรับข้อมูลพนักงานและผู้ปฏิบัติงาน

> 📌 ชื่อ Table ใน Database Design คือ empolyee ควรรักษาชื่อให้ตรงกับ Database จริง หรือเปลี่ยนเป็น employee พร้อมแก้ Query ทุกจุดให้สอดคล้องกัน

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Master Data |
| Primary Key | Code |
| ใช้เชื่อมกับ | ผู้ส่ง ผู้รับ ผู้ตรวจ และผู้อนุมัติ |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| Code | รหัสพนักงาน |
| Name | ชื่อพนักงาน |
| Dep | ชื่อแผนก |

## 🔗 Usage

ใช้ Code เชื่อมกับ Column ผู้ปฏิบัติงานใน Sampling และ [Sampling high] เช่น SendBY, Submit_By, RecevieBy, physical_by, results_by และ SupervisorBy

## 🧾 Related Queries

CallBack Sampling.sql, CallBack Sampling_HighAcid.sql

