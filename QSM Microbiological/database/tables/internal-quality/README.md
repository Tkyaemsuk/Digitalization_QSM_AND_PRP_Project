# 🗃️ Internal_Quality

รายการตรวจคุณภาพภายในตาม MicroID: Media/Equipment/Batch และผล pass/positive/negative

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `MicroID` | `nvarchar` | string | True | False |
| `No` | `nvarchar` | string | False | False |
| `id` | `int` | number | True | True |
| `Media` | `nvarchar` | string | False | False |
| `Equipment` | `nvarchar` | string | False | False |
| `Batch` | `nvarchar` | string | False | False |
| `Other` | `nvarchar` | string | False | False |
| `Pass` | `bit` | boolean | False | False |
| `No_pass` | `bit` | boolean | False | False |
| `Positive` | `bit` | boolean | False | False |
| `Negative` | `bit` | boolean | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [DailyReport_Microbiological 1](<../../Query/DailyReport_Microbiological 1.sql>)
- [Save_Internal](<../../Query/Save_Internal.sql>)
