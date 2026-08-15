# 🔐 TB_APP1_LOGIN

ตารางสำหรับตรวจสอบบัญชีผู้ใช้งานของระบบ QSM

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Authentication |
| Primary Key | id |
| ใช้โดย | LOGIN_API.sql |
| หน้าที่ | ตรวจสอบ Username และ Password |

## 🧱 Columns

| Column | ความหมาย | หมายเหตุ |
|---|---|---|
| user | ชื่อผู้ใช้งาน | ใช้ค้นหา Username |
| password | รหัสผ่าน | ควรจัดเก็บเป็น Password Hash |
| fullname | ชื่อจริง-นามสกุล | แสดงชื่อผู้ใช้งาน |
| Plant | แผนก/หน่วยงาน | ใช้กำหนดสิทธิ์หรือขอบเขตข้อมูล |
| id | รหัสรายการ | Primary Key |

## 🔗 Query ที่เกี่ยวข้อง

| Query | การใช้งาน |
|---|---|
| LOGIN_API.sql | ตรวจสอบ user และ password |

## ⚠️ Security Notes

- ไม่ควรเก็บ password แบบ Plain Text
- ไม่ควรใช้ SELECT * ใน API
- ควรใช้ Password Hash และกำหนดสิทธิ์ตาม Plant/Role

