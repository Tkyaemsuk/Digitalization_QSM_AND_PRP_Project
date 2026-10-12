# 🗃️ Micro

หัวงานตรวจ MicroID: ประเภทตัวอย่าง รายการทดสอบ ผู้ส่ง ผู้รับ ผู้ตรวจ ผู้แปลผล ผู้อนุมัติ และสถานะ

[กลับฐานข้อมูล](../../README.md) · [Query catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required ใน Builder | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `Product` | `nvarchar` | string | False | False |
| `Flavour` | `nvarchar` | string | False | False |
| `MicroID` | `nvarchar` | string | False | False |
| `inprocess` | `bit` | boolean | False | False |
| `inprocess_remark` | `nvarchar` | string | False | False |
| `raw_material` | `bit` | boolean | False | False |
| `raw_milk` | `bit` | boolean | False | False |
| `Hot_water` | `bit` | boolean | False | False |
| `water` | `bit` | boolean | False | False |
| `Lye` | `bit` | boolean | False | False |
| `air_borne` | `bit` | boolean | False | False |
| `swab_test` | `bit` | boolean | False | False |
| `Other_specify_for_detail` | `bit` | boolean | False | False |
| `Other_remark_for_detail` | `nvarchar` | string | False | False |
| `TPC` | `bit` | boolean | False | False |
| `Y_M` | `bit` | boolean | False | False |
| `Mesophilic_spore` | `bit` | boolean | False | False |
| `Thermophillic_spore` | `bit` | boolean | False | False |
| `Coliform` | `bit` | boolean | False | False |
| `Ecoli` | `bit` | boolean | False | False |
| `Salmonella` | `bit` | boolean | False | False |
| `Staphylococcus` | `bit` | boolean | False | False |
| `Bacillus` | `bit` | boolean | False | False |
| `Other_Specify_for_type` | `bit` | boolean | False | False |
| `Other_remark_for_type` | `nvarchar` | string | False | False |
| `room_temp` | `bit` | boolean | False | False |
| `temperature0_8` | `bit` | boolean | False | False |
| `Freezer` | `bit` | boolean | False | False |
| `Other_Specify_for_sample` | `bit` | boolean | False | False |
| `Other_remark_for_sample` | `nvarchar` | string | False | False |
| `Submit_by` | `nvarchar` | string | False | False |
| `Submit_Date` | `datetime2` | datetime | False | False |
| `Complete` | `bit` | boolean | False | False |
| `Incomplete` | `bit` | boolean | False | False |
| `Incomplete_remark` | `nvarchar` | string | False | False |
| `detail_complete` | `bit` | boolean | False | False |
| `detail_incomplete` | `bit` | boolean | False | False |
| `detail_incomplete_remark` | `nvarchar` | string | False | False |
| `Normal` | `bit` | boolean | False | False |
| `Abnormal_Specify` | `bit` | boolean | False | False |
| `Abnormal_Specify_remark` | `nvarchar` | string | False | False |
| `Action_on_ploblems` | `nvarchar` | string | False | False |
| `received_by` | `nvarchar` | string | False | False |
| `recevived_date` | `datetime2` | datetime | False | False |
| `Check_date1` | `datetime2` | datetime | False | False |
| `Check_date2` | `datetime2` | datetime | False | False |
| `NO_page` | `nvarchar` | string | False | False |
| `Inspector` | `nvarchar` | string | False | False |
| `Inspector_date` | `datetime2` | datetime | False | False |
| `Interpretor` | `nvarchar` | string | False | False |
| `Interpretor_date` | `datetime2` | datetime | False | False |
| `Sup` | `nvarchar` | string | False | False |
| `Sup_date` | `datetime2` | datetime | False | False |
| `Coliform_unit` | `nvarchar` | string | False | False |
| `Ecoli_unit` | `nvarchar` | string | False | False |
| `Salmonella_unit` | `nvarchar` | string | False | False |
| `Staphylococcus_unit` | `nvarchar` | string | False | False |
| `Bacillus_unit` | `nvarchar` | string | False | False |
| `Amount_sample` | `nvarchar` | string | False | False |
| `date` | `datetime2` | datetime | False | False |
| `Department` | `nvarchar` | string | False | False |
| `Detail` | `nvarchar` | string | False | False |
| `Remark` | `nvarchar` | string | False | False |

Required เป็น validation metadata ใน Builder ไม่ใช่การยืนยัน SQL NOT NULL.

## Query ที่อ้างถึง

- [Create_Raw_Milk](<../../Query/Create_Raw_Milk.sql>)
- [DailyReport_Microbiological 1](<../../Query/DailyReport_Microbiological 1.sql>)
- [Delect_Micro&Sampling](<../../Query/Delect_Micro&Sampling.sql>)
- [MicroID_Table](<../../Query/MicroID_Table.sql>)
- [Pull_Result](<../../Query/Pull_Result.sql>)
- [Rawmilk_Create_2](<../../Query/Rawmilk_Create_2.sql>)
- [Sampling_Create_2](<../../Query/Sampling_Create_2.sql>)
- [Save_Inspec&Inter](<../../Query/Save_Inspec&Inter.sql>)
- [Sup Approve](<../../Query/Sup Approve.sql>)
- [Update_PART](<../../Query/Update_PART.sql>)
- [Update_Status](<../../Query/Update_Status.sql>)
