# 🗃️ All_plant_Data

master โรงงาน แผนก Item Section และ Sample

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `Plant` | `nvarchar` | string | False | False |
| `Department` | `nvarchar` | string | False | False |
| `Department_NO` | `nvarchar` | string | False | False |
| `Item` | `nvarchar` | string | False | False |
| `Item_NO` | `nvarchar` | string | False | False |
| `Section` | `nvarchar` | string | False | False |
| `Section_NO` | `nvarchar` | string | False | False |
| `Sample` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Create Sampling](<../../Query/Create Sampling.sql>)
- [Department_Options](<../../Query/Department_Options.sql>)
- [Genarate_MicroID](<../../Query/Genarate_MicroID.sql>)
- [Genarate_Sampling](<../../Query/Genarate_Sampling.sql>)
- [Item_Options](<../../Query/Item_Options.sql>)
- [Selection_Options](<../../Query/Selection_Options.sql>)
- [Simple_Options](<../../Query/Simple_Options.sql>)
