# app_activity_log

บันทึกกิจกรรมที่ action app_logs ส่งมา; แยกจากข้อมูลผลตรวจ.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `activity_id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `activity_id` | `bigint` | bigint | False | True |
| `app_name` | `nvarchar` | string | False | False |
| `screen_name` | `nvarchar` | string | False | False |
| `action_type` | `nvarchar` | string | False | False |
| `record_ref` | `nvarchar` | string | False | False |
| `created_by` | `nvarchar` | string | False | False |
| `device_id` | `nvarchar` | string | False | False |
| `notes` | `nvarchar` | string | False | False |
| `logged_at_utc` | `datetime2` | datetime | False | False |
| `src_app` | `nvarchar` | string | False | False |
| `src_host` | `nvarchar` | string | False | False |
| `rows_affected` | `int` | number | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [app_logs](<../../Query/app_logs.sql>): เพิ่มแถว app_activity_log ระบุ app_name, screen_name, action_type, created_by, device_id และ rows_affected จาก bindings 6 ตัว ใช้ติดตามการใช้งานเมนู/หน้าจอ. SQL ไม่กำหนด logged_at_utc เอง; ค่า default ต้องตรวจจากฐานข้อมูล. ไม่มี SELECT ผลลัพธ์ท้ายคำสั่ง.
