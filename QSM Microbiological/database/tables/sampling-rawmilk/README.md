# 🗃️ Sampling RawMilk

ข้อมูลรับตัวอย่างน้ำนมดิบและผลแยก tank 1–3

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `SamplingID` | `nvarchar` | string | False | False |
| `Plan` | `datetime2` | datetime | False | False |
| `Date` | `datetime2` | datetime | False | False |
| `Supplier` | `nvarchar` | string | False | False |
| `grade` | `nvarchar` | string | False | False |
| `bill` | `nvarchar` | string | False | False |
| `truck_no` | `nvarchar` | string | False | False |
| `driver_name` | `nvarchar` | string | False | False |
| `W_kg` | `int` | number | False | False |
| `W_PDP` | `int` | number | False | False |
| `Temp_Tank_1` | `nvarchar` | string | False | False |
| `Temp_Tank_2` | `nvarchar` | string | False | False |
| `Temp_Tank_3` | `nvarchar` | string | False | False |
| `R_Tank_1` | `nvarchar` | string | False | False |
| `R_Tank_2` | `nvarchar` | string | False | False |
| `R_Tank_3` | `nvarchar` | string | False | False |
| `P_Tank_1` | `nvarchar` | string | False | False |
| `P_Tank_2` | `nvarchar` | string | False | False |
| `P_Tank_3` | `nvarchar` | string | False | False |
| `Antibiotic_P` | `nvarchar` | string | False | False |
| `Alcohol_P` | `nvarchar` | string | False | False |
| `Brix` | `nvarchar` | string | False | False |
| `SG` | `nvarchar` | string | False | False |
| `pH` | `nvarchar` | string | False | False |
| `Ta` | `nvarchar` | string | False | False |
| `Fat` | `nvarchar` | string | False | False |
| `Protein` | `nvarchar` | string | False | False |
| `TS` | `nvarchar` | string | False | False |
| `SNF` | `nvarchar` | string | False | False |
| `FP` | `nvarchar` | string | False | False |
| `SPC_Tank_1` | `nvarchar` | string | False | False |
| `SPC_Tank_2` | `nvarchar` | string | False | False |
| `SPC_Tank_3` | `nvarchar` | string | False | False |
| `Coliform_1` | `nvarchar` | string | False | False |
| `Coliform_2` | `nvarchar` | string | False | False |
| `Coliform_3` | `nvarchar` | string | False | False |
| `E_Tank_1` | `nvarchar` | string | False | False |
| `E_Tank_2` | `nvarchar` | string | False | False |
| `E_Tank_3` | `nvarchar` | string | False | False |
| `SPC` | `nvarchar` | string | False | False |
| `SCC` | `nvarchar` | string | False | False |
| `Car_Alevent` | `nvarchar` | string | False | False |
| `invoice_no` | `nvarchar` | string | False | False |
| `Residual` | `nvarchar` | string | False | False |
| `Result` | `nvarchar` | string | False | False |
| `Appearance` | `nvarchar` | string | False | False |
| `Inspector` | `nvarchar` | string | False | False |
| `Material_document` | `nvarchar` | string | False | False |
| `T_sampling` | `datetime2` | datetime | False | False |
| `T_arrived` | `datetime2` | datetime | False | False |
| `T_QSM_P` | `datetime2` | datetime | False | False |
| `T_Goback` | `datetime2` | datetime | False | False |
| `Sup` | `nvarchar` | string | False | False |
| `Sup_date` | `datetime2` | datetime | False | False |
| `Std_Price` | `nvarchar` | string | False | False |
| `Status` | `nvarchar` | string | False | False |
| `Grade_Spc` | `nvarchar` | string | False | False |
| `Grade_Scc` | `nvarchar` | string | False | False |
| `Grade_Fp` | `nvarchar` | string | False | False |
| `Grade_Fat` | `nvarchar` | string | False | False |
| `Grade_Snf` | `nvarchar` | string | False | False |
| `Rate_Spc` | `nvarchar` | string | False | False |
| `Rate_Scc` | `nvarchar` | string | False | False |
| `Rate_Fp` | `nvarchar` | string | False | False |
| `Rate_Fat` | `nvarchar` | string | False | False |
| `Rate_Snf` | `nvarchar` | string | False | False |
| `Price` | `nvarchar` | string | False | False |
| `Ncr_Reject_No` | `nvarchar` | string | False | False |
| `Remark` | `nvarchar` | string | False | False |
| `Net_Price` | `nvarchar` | string | False | False |
| `Batch_1` | `nvarchar` | string | False | False |
| `Batch_2` | `nvarchar` | string | False | False |
| `Batch_3` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Caculate 1](<../../Query/Caculate 1.sql>)
- [Create_Raw_Milk](<../../Query/Create_Raw_Milk.sql>)
- [samplingDate](<../../Query/samplingDate.sql>)
- [SelectionRawMilk](<../../Query/SelectionRawMilk.sql>)
- [Sup Approve](<../../Query/Sup Approve.sql>)
- [Sync_RawMilk_DateTime_To_Micro_Result](<../../Query/Sync_RawMilk_DateTime_To_Micro_Result.sql>)
- [Update_RawMilk_Micro_Result](<../../Query/Update_RawMilk_Micro_Result.sql>)
