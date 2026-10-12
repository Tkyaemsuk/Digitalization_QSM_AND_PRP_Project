# 🗃️ Micro Sampling

เชื่อม MicroID กับ SamplingID พร้อมวันเวลา Batch/State/DataType ของรายการเก็บตัวอย่าง

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `MicroID` | `nvarchar` | string | True | False |
| `id` | `int` | number | False | True |
| `SamplingID` | `nvarchar` | string | False | False |
| `Date` | `datetime2` | datetime | False | False |
| `Status` | `nvarchar` | string | False | False |
| `Department` | `nvarchar` | string | False | False |
| `Item` | `nvarchar` | string | False | False |
| `Selection` | `nvarchar` | string | False | False |
| `Sample` | `nvarchar` | string | False | False |
| `Name` | `nvarchar` | string | False | False |
| `Machine` | `nvarchar` | string | False | False |
| `Type` | `nvarchar` | string | False | False |
| `Tank` | `nvarchar` | string | False | False |
| `Time` | `datetime2` | datetime | False | False |
| `Batch` | `nvarchar` | string | False | False |
| `State` | `nvarchar` | string | False | False |
| `Queue_ID` | `nvarchar` | string | False | False |
| `Queue_Status` | `nvarchar` | string | False | False |
| `Sum` | `nvarchar` | string | False | False |
| `DataType` | `nvarchar` | string | False | False |
| `page` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Callresult](<../../Query/Callresult.sql>)
- [Create Sampling](<../../Query/Create Sampling.sql>)
- [Create_Inprocess](<../../Query/Create_Inprocess.sql>)
- [Create_Raw_Milk](<../../Query/Create_Raw_Milk.sql>)
- [DailyReport_Microbiological 1](<../../Query/DailyReport_Microbiological 1.sql>)
- [DailyReport_Result](<../../Query/DailyReport_Result.sql>)
- [Delect_Micro&Sampling](<../../Query/Delect_Micro&Sampling.sql>)
- [Genarate_Inprocess](<../../Query/Genarate_Inprocess.sql>)
- [Genarate_MicroID](<../../Query/Genarate_MicroID.sql>)
- [Genarate_Sampling](<../../Query/Genarate_Sampling.sql>)
- [MicroID_Table](<../../Query/MicroID_Table.sql>)
- [Pull_Result](<../../Query/Pull_Result.sql>)
- [Pull_sum_MicroID](<../../Query/Pull_sum_MicroID.sql>)
- [Puls_state](<../../Query/Puls_state.sql>)
- [Rawmilk_Create_2](<../../Query/Rawmilk_Create_2.sql>)
- [Sampling_Create_2](<../../Query/Sampling_Create_2.sql>)
- [SumTable](<../../Query/SumTable.sql>)
- [Sup Approve](<../../Query/Sup Approve.sql>)
- [Sync_RawMilk_DateTime_To_Micro_Result](<../../Query/Sync_RawMilk_DateTime_To_Micro_Result.sql>)
- [Update_PART](<../../Query/Update_PART.sql>)
