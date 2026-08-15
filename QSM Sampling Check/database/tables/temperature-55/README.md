# 🌡️ temperature_55

ตารางเก็บรายการ Brik และผลตรวจของ Sampling ที่อุณหภูมิ 55°C

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Low Acid / 55°C |
| Primary Key | id |
| Foreign Key | sampID |
| Parent Table | Sampling |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| id | รหัสรายการ Brik |
| sampID | รหัส Sampling ที่เป็นเจ้าของ |
| no | ลำดับ Brik |
| code | เวลาเก็บกล่อง/เวลาสร้าง |
| ColourCode | รหัสสี |
| Colour | CheckBox ผลตรวจสี |
| Smell | CheckBox ผลตรวจก​​ลิ่น |
| tpc | CheckBox ผลตรวจ TPC |
| remark | หมายเหตุ |
| atp | ผลตรวจ ATP |
| temp | CheckBox ผลตรวจอุณหภูมิ |
| ph | ผลตรวจ pH |
| NewpH | ผล pH ที่ตรวจใหม่ |
| NewATP | ผล ATP ที่ตรวจใหม่ |
| status | สถานะ Brik |

## 🔗 Relationship

Sampling.SamplingID → temperature_55.sampID

## 🧾 Related Queries

Temp55_Insert.sql, Product_Insert.sql, CallBack Sampling.sql, Summary.sql

