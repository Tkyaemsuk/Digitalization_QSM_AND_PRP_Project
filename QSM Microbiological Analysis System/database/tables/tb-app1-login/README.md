# tb_app1_login

บัญชีสำหรับ Login_API; dictionary นี้ระบุ schema เท่านั้น ไม่เผยแพร่แถวบัญชี.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `user` | `nvarchar` | string | False | False |
| `password` | `nvarchar` | string | False | False |
| `fullname` | `nvarchar` | string | False | False |
| `id` | `int` | number | False | True |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Login_API](<../../Query/Login_API.sql>): SELECT * จาก tb_app1_login เมื่อ user/password ตรง bindings userac/psw. ไม่พบ hash หรือ role check ใน SQL นี้; SELECT * รวมคอลัมน์ password ตาม schema. Screen /login ตรวจ result.data.length เท่ากับ1 จึงถือว่าสำเร็จ แล้วเก็บแถวแรกใน state CallbackDB_API. มี Clear Form ก่อน Execute Query ในลำดับ config จึงต้องตรวจว่า runtime อ่านค่า form เมื่อใดก่อนปรับ event. schema ที่นำเข้ามี id/user/password/fullname เท่านั้น.

## Contract ของ login

Imported schema มี id/user/password/fullname. หาก screen binding อ่าน role หรือ property เพิ่ม ต้องตรวจ result schema/transformer และโครงสร้างจริงของฐานข้อมูล. เอกสารไม่รวมค่าบัญชีหรือรหัสผ่านจริง.
