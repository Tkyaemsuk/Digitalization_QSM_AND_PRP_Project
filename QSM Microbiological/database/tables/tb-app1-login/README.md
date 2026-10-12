# 🗃️ tb_app1_login

ข้อมูลบัญชีที่ Login/ChangePassword ใช้

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `user` | `nvarchar` | string | False | False |
| `password` | `nvarchar` | string | False | False |
| `fullname` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [ChangePassword](<../../Query/ChangePassword.sql>)
- [Login](<../../Query/Login.sql>)
