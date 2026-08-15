# 🔥 [Sampling high]

ตารางศูนย์กลางของกระบวนการ Sampling High Acid

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Production / High Acid |
| Primary Key | SamplingIDH |
| Child Tables | temperature_30high, HighAcid_Sampling_Flavour |
| Master Relations | empolyee, Machine |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| SamplingIDH | รหัส Sampling High Acid |
| machine | เครื่องผลิต |
| amount | จำนวนตัวอย่าง |
| TPCH, Y_M, Physical_T | ผลตรวจหลัก |
| Room_Temp, Temp0_8, Freezer | เงื่อนไขอุณหภูมิ |
| OtherSpecBox / Other_Spec | ผลตรวจอื่น / หมายเหตุ |
| Submit_by / Submit_date | ผู้ส่ง / วันที่ส่ง |
| received_by / received_date | ผู้รับ / วันที่รับ |
| Complete / De_Complete / Packaging | สถานะครบถ้วนและบรรจุภัณฑ์ |
| incom_spec / De_incom_spec | สถานะข้อมูลไม่ครบ |
| ab_spec | สถานะผิดปกติ |
| incom_spec_re / ab_spec_re | เหตุผลของสถานะ |
| check_date | วันที่ตรวจตามแผน |
| MFG_code / EXP_code | วันที่ผลิต / วันหมดอายุ |
| inspector_by / inspector_date | ผู้ตรวจ / วันที่ตรวจ |
| interpretor_by / intertor_date | ผู้แปลผล / วันที่แปลผล |
| QSM_Sup_by / QSM_Sup_date | ผู้อนุมัติ QA / วันที่อนุมัติ |

## 🔗 Relationships

| Related Table | Key |
|---|---|
| temperature_30high | SamplingIDH → SampID |
| HighAcid_Sampling_Flavour | SamplingIDH → SamplingID |
| empolyee | ผู้ปฏิบัติงาน → Code |
| Machine | machine → No |

## 🧾 Related Queries

Create Sampling_HighAcid.sql, Sampling_HighAcid_Tables.sql, CallBack Sampling_HighAcid.sql, Update Sampling HighAcid.sql, SupHighAcid_Production_Update.sql, HighAcid_InsertBrik.sql

