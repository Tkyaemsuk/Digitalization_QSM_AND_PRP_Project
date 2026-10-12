# 🖥️ /report/:microid

รายงานผลตาม MicroID และคำสั่งอนุมัติ

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/report/:microid`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Medium`
- Screen ID: `screen_7e7c2faccced43c4aec4120622a515c9`
- จำนวน components: 1511

## Data / Query dependencies

- [CallResult_Batch](<../database/Query/CallResult_Batch.sql>)
- [DailyReport_Microbiological 1](<../database/Query/DailyReport_Microbiological 1.sql>)
- [DailyReport_Result](<../database/Query/DailyReport_Result.sql>)
- [Sup Approve](<../database/Query/Sup Approve.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 761 |
| booleanfield | 229 |
| container | 165 |
| stringfield | 155 |
| button | 70 |
| divider | 42 |
| heading | 24 |
| dataprovider | 18 |
| repeater | 18 |
| optionsfield | 17 |
| image | 8 |
| modal | 2 |
| datetimefield | 1 |
| buttongroup | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| ID Approve |  |  | ไม่ได้ตั้งค่าใน component |
| Approve Date |  |  | ไม่ได้ตั้งค่าใน component |
| Process Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Swab Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| room Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| room0-8 Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Freezer Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Other3 Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| TPC Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Y&M Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Mesophilic Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Thermo Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Coliform Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Salmonella Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Staphylococcus Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Bacillus Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| E.Coli Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Other Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Other2 Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| material Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| milk Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Hot Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Hot Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Lye Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Air Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Complete Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| indication Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Normal Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Incomplete Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Incomplete Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Abnormal Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| Pass1 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass2 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass3 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass4 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass5 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass6 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass7 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass8 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass9 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass10 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass11 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass12 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass13 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass14 |  |  | ไม่ได้ตั้งค่าใน component |
| Pass15 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass1 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass2 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass3 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass4 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass5 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass6 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass7 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass8 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass9 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass10 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass11 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass12 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass13 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass14 |  |  | ไม่ได้ตั้งค่าใน component |
| NoPass15 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive1 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive2 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive3 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive4 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive5 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive6 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive7 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive8 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive9 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive10 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive11 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive12 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive13 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive14 |  |  | ไม่ได้ตั้งค่าใน component |
| Positive15 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative1 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative2 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative3 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative4 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative5 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative6 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative7 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative8 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative9 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative10 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative11 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative12 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative13 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative14 |  |  | ไม่ได้ตั้งค่าใน component |
| Negative15 |  |  | ไม่ได้ตั้งค่าใน component |
| check1 | check1 |  | ไม่ได้ตั้งค่าใน component |
| check3 | check3 |  | ไม่ได้ตั้งค่าใน component |
| check5 | check5 |  | ไม่ได้ตั้งค่าใน component |
| check6 | check6 |  | ไม่ได้ตั้งค่าใน component |
| check4 | check4 |  | ไม่ได้ตั้งค่าใน component |
| check2 | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| check15 | check15 |  | ไม่ได้ตั้งค่าใน component |
| check17 | check17 |  | ไม่ได้ตั้งค่าใน component |
| check19 | check19 |  | ไม่ได้ตั้งค่าใน component |
| check20 | check20 |  | ไม่ได้ตั้งค่าใน component |
| check18 | check18 |  | ไม่ได้ตั้งค่าใน component |
| check16 | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | TPC_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| TPC_Result | TPC_Result |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Y_M_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| Y_M_Result | Y_M_Result |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 35C_1_2 |  | ไม่ได้ตั้งค่าใน component |
| 35C_Result | 35C_Result |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | 55C_1_2 |  | ไม่ได้ตั้งค่าใน component |
| 55C_Result | 55C_Result |  | ไม่ได้ตั้งค่าใน component |
| Result Coliform MPN | Coliform_MPN_Result |  | ไม่ได้ตั้งค่าใน component |
| MPN |  |  | ไม่ได้ตั้งค่าใน component |
| 10ml |  |  | ไม่ได้ตั้งค่าใน component |
| 1ml2 |  |  | ไม่ได้ตั้งค่าใน component |
| 1ml3 |  |  | ไม่ได้ตั้งค่าใน component |
| 1ml |  |  | ไม่ได้ตั้งค่าใน component |
| 0_1ml2 |  |  | ไม่ได้ตั้งค่าใน component |
| 0_1ml3 |  |  | ไม่ได้ตั้งค่าใน component |
| 0.1ml |  |  | ไม่ได้ตั้งค่าใน component |
| 0_0_1ml2 |  |  | ไม่ได้ตั้งค่าใน component |
| 0_0_1ml3 |  |  | ไม่ได้ตั้งค่าใน component |
| Tubes5 |  |  | ไม่ได้ตั้งค่าใน component |
| Tubes5 |  |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Coliform_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| Coliform_Result | Coliform_Result |  | ไม่ได้ตั้งค่าใน component |
| Coliform unit | Batch_Lot_no |  | ไม่ได้ตั้งค่าใน component |
| Result E.coli MPN | Ecoli_MPN_Result |  | ไม่ได้ตั้งค่าใน component |
| MPN |  |  | ไม่ได้ตั้งค่าใน component |
| 10ml |  |  | ไม่ได้ตั้งค่าใน component |
| 1ml |  |  | ไม่ได้ตั้งค่าใน component |
| 0.1ml |  |  | ไม่ได้ตั้งค่าใน component |
| Tubes |  |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Ecoli_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| Ecoli_Result | Ecoli_result |  | ไม่ได้ตั้งค่าใน component |
| E.coli Unit : | Batch_Lot_no |  | ไม่ได้ตั้งค่าใน component |
| S.aureusUnit | S_aureus |  | ไม่ได้ตั้งค่าใน component |
| B.cereusUnit | B_cereus |  | ไม่ได้ตั้งค่าใน component |
| SalmonellaUnit | Salmonella |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check1 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check3 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check5 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check6 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check4 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check7 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check9 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check11 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check12 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check10 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check8 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check13 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox 5 | check14 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check15 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check17 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check19 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check20 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check18 |  | ไม่ได้ตั้งค่าใน component |
| New Checkbox | check16 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000000000_1 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_100000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_1000000000_2 |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | other_10000000_2 |  | ไม่ได้ตั้งค่าใน component |
| Other_Result | Other_result |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### Approve — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }} |
| 2 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "fQh1fWV4D"
  },
  {
    "parameters": {
      "id": "cfad69d71f44547879fe00d5f9b3f63d4"
    },
    "##eventHandlerType": "Open Modal",
    "id": "srb4ubBB5"
  }
]
```

</details>

### Save — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Sup Approve |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "Sup": "{{ [c409113b99e804909a9d9b01a2ef0e5d0].[value] }}",
        "Sup_date": "{{ [c08ea2b88ae7f4632b990a66eb89c049c].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8ada988ae1514d2a92d2b1c728200c18"
    },
    "##eventHandlerType": "Execute Query",
    "id": "GMeN7Hp6R"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "vQCzxsU-c"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "COc6qMlP5"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cd2aa7887268c41b684123d1c8ed99366].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "eY_Djplk7"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "0S-uMHT0K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "gqLj9fD5S"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Ecoli"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cbd2dda6cddfd430cb4c0826e2b725112].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce61d7d596d55478183b516c3f2e8a5b8].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c136c9a8afabc46b294b6cef6f85e5b6a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c1af31b4ee52849e7b0a96b5fe245c70c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c0812f2515bdc45d69756c2dfb6af9e5a].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cde2ddb1b96914120b6d18616dcce8f37].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c2238f1585e21491e9e2d7ca93b77046b].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c23adcd9c7be74fe89db2f6fa88103865].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c8dc793f017f442ceb1b631ab944cd670].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c07e88ba7056741b68b6af110be6a91be].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cdddb48a968bd42c6bc2c68fc5ee90c2d].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [cf8ac2cf9b76443058f39e70508cc9871].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2d306a240b64239af2044a32936241c].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### TPC — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=TPC |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "TPC"
    },
    "##eventHandlerType": "Update State",
    "id": "b93pIPgxn"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=35C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "35C"
    },
    "##eventHandlerType": "Update State",
    "id": "FaOEDCLP6"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### 55 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=55C |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [ce2fc10a085b74b4c84714d8cd91f97d4].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "55C"
    },
    "##eventHandlerType": "Update State",
    "id": "VIc1fky8K"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### YM — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=YM |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "YM"
    },
    "##eventHandlerType": "Update State",
    "id": "8MjXM5YWr"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Coliform — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Coliform |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Coliform"
    },
    "##eventHandlerType": "Update State",
    "id": "00aRLanN3"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Other — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Other |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Other"
    },
    "##eventHandlerType": "Update State",
    "id": "8GdU3WZaK"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### Ecoli — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Sampling_Report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }} |
| 2 | Update State | key=no_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[No] }} |
| 3 | Update State | key=batch_report; type=set; value={{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }} |
| 4 | Update State | key=Choose; type=set; value=Ecoli |
| 5 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Sampling_Report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "EvzO2JPhH"
  },
  {
    "parameters": {
      "key": "no_report",
      "type": "set",
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[No] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "MDHrW9Fao"
  },
  {
    "parameters": {
      "key": "batch_report",
      "type": "set",
      "persist": null,
      "value": "{{ [c7533387a7dd44fb093de88c26090bdbd].[Batch_Lot_no] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "DJF1ILbnT"
  },
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "33Ame150R"
  },
  {
    "parameters": {
      "id": "c544b938ba962431fb51136ad2e4f625f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GlHXd2zww"
  }
]
```

</details>

### c7bfee06c151545ae9ef9ceaa8dbbdfbe — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=TPC |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "TPC",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "frmwowQ2m"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "tMemy9MNh"
  }
]
```

</details>

### c1a186f8bcdb74353869cd1713ab2050b — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=YM |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "YM",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "Bhj0lg_rG"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "vBnPgRuOy"
  }
]
```

</details>

### c2bf900c10b8b4b378001663561fe3f35 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=35C |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "35C",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "hqZLfgnmJ"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "v4-7zthsN"
  }
]
```

</details>

### c83b7c5cc5bd44586a8b8409a84458bf9 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=55C |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "55C",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "6OjU916wg"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "yMIuB7TLi"
  }
]
```

</details>

### c176c6d5134044f4f97d4edca22abbd8e — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Coliform_MPN |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Coliform_MPN",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "qzLiVhlol"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "-McVF6flr"
  }
]
```

</details>

### cb28b31dea1304e2a983be172ea28b171 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Coliform |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Coliform",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "wwnxKy5lW"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "XFp3uQN7c"
  }
]
```

</details>

### c26f6d4e3b6034ae9a131583178507db2 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=E.COLI |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "E.COLI",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "FhTmiZ-Vw"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "vT0erkWxo"
  }
]
```

</details>

### c35549818d9de40e08483a1bfe4ebca93 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Ecoli |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Ecoli",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "Uy5OKDk7K"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "YhJwVxhHp"
  }
]
```

</details>

### c472ee7166da94f0b8e6f1473e20a63ea — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=S_aureus |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "S_aureus",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "GQzcKUIef"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "tjhS4zQbc"
  }
]
```

</details>

### c5be63cd80c2a41169c045ff0db4d5279 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=B_cereus |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "B_cereus",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "UdF52tVnQ"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "uwCEDyC41"
  }
]
```

</details>

### c072a14b11c7142d6989324411b95bb24 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Salmonella |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Salmonella",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "4vcHe2Dw9"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "tw7i4QdpL"
  }
]
```

</details>

### c6dde4e90ca314b77980fc801dcca52e5 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Other |
| 2 | Refresh Data Provider | componentId=c24131e6f115848f19b4d6e2453700803 |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "Other",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "NAiIyjDIn"
  },
  {
    "parameters": {
      "componentId": "c24131e6f115848f19b4d6e2453700803"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "eHnFeptaB"
  }
]
```

</details>

## Data provider configuration

ชื่อหรือ SQL สำเนาใน data provider อาจเก่ากว่า query document ปัจจุบัน. ถ้า `embeddedSqlDiffersFromCurrentQuery=true` ให้ตรวจการ resolve query ID ใน runtime ก่อนแก้ไข; เอกสาร SQL ใช้ query document ปัจจุบันเป็นหลัก.

<details><summary>เปิดดู data source และ query parameter mapping</summary>

```json
[
  {
    "component": "DailyReport",
    "dataSource": {
      "label": "DailyReport_Microbiological 1",
      "name": "DailyReport_Microbiological 1",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_f8370ae636fb4effb48372cab7c2100a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [url].[microid] }}"
      },
      "currentQueryName": "DailyReport_Microbiological 1",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "1",
        "OffsetSampling": "3",
        "StartSampling": "1",
        "EndSampling": "3",
        "StartNo": "1",
        "EndNo": "4"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "1",
        "OffsetSampling": "3",
        "StartSampling": "1",
        "EndSampling": "3",
        "StartNo": "1",
        "EndNo": "4"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "5",
        "EndNo": "14"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "5",
        "EndNo": "14"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "15",
        "EndNo": "24"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "15",
        "EndNo": "24"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "25",
        "EndNo": "34"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "25",
        "EndNo": "34"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "35",
        "EndNo": "44"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "35",
        "EndNo": "44"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "45",
        "EndNo": "54"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "45",
        "EndNo": "54"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "55",
        "EndNo": "64"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "55",
        "EndNo": "64"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "65",
        "EndNo": "74"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result_Class2",
    "dataSource": {
      "label": "DailyReport_Result",
      "name": "DailyReport_Result",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a",
      "type": "query",
      "queryParams": {
        "Micro": "{{ [c130f6895e7d04b7abf3e0e99e539e813].[MicroID] }}",
        "PageSize": "4",
        "OffsetSampling": "10",
        "StartSampling": "4",
        "EndSampling": "10",
        "StartNo": "65",
        "EndNo": "74"
      },
      "currentQueryName": "DailyReport_Result",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Result Provider",
    "dataSource": {
      "label": "CallResult_Batch",
      "name": "CallResult_Batch",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_6e9fae4d0fb14061bc69e040708962a0",
      "type": "query",
      "queryParams": {
        "SampID": "{{ [state].[Sampling_Report] }}",
        "No": "{{ [state].[no_report] }}",
        "Batch_Lot_No": "{{ [state].[batch_report] }}"
      },
      "currentQueryName": "CallResult_Batch",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  }
]
```

</details>

## หมายเหตุส่งต่องาน

- Metadata นี้มาจาก latest edited app; ไม่ยืนยันว่า published app เป็น revision เดียวกัน.
- Access=PUBLIC เป็นค่าที่ตั้งใน screen; ต้องอ่านเงื่อนไข action/state เพิ่มเพื่อเข้าใจข้อจำกัดที่ UI ใช้.
- ไม่ได้ execute query หรือบันทึกข้อมูลธุรกิจระหว่างจัดเอกสาร.
