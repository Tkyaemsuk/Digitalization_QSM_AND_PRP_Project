# 🗃️ MPN_INDEX_100ml_10_1

ตาราง lookup ดัชนี MPN สำหรับรูปแบบหลอด/ความเจือจางตามชื่อ

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `0_1_ml` | `nvarchar` | string | False | False |
| `0_0_1_ml` | `nvarchar` | string | False | False |
| `0_0_0_1_ml` | `nvarchar` | string | False | False |
| `MPN_100_ml` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Caculate2](<../../Query/Caculate2.sql>)
