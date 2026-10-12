# 🗃️ Sum_data_type

master Type และเครื่องจักรสำหรับตัวเลือก

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `Department` | `nvarchar` | string | False | False |
| `Department_No` | `nvarchar` | string | False | False |
| `Machine` | `nvarchar` | string | False | False |
| `Type` | `nvarchar` | string | False | False |
| `Type_No` | `nvarchar` | string | False | False |
| `Tank` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Create Sampling](<../../Query/Create Sampling.sql>)
- [Get_All_Type_Machine_Option](<../../Query/Get_All_Type_Machine_Option.sql>)
