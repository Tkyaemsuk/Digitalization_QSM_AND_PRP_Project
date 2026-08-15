# 🔥 temperature_30high

ตารางเก็บรายการ Brik ของ Sampling High Acid

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | High Acid / 30°C |
| Primary Key | id |
| Foreign Key | SampID |
| Parent Table | [Sampling high] |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| id | รหัสรายการ |
| SampID | รหัส Sampling High Acid |
| No | ลำดับ Brik |
| Code | เวลาเก็บหรือเวลาสร้าง |
| Product | สินค้าที่ใช้กับ Brik |
| Flavour | Flavour ของ Brik |
| Status | สถานะ Brik |
| TPC | CheckBox ผลตรวจ TPC |
| Y_M | CheckBox ผลตรวจ Yeast/Mold |
| Colour | CheckBox ผลตรวจสี |
| Smell | CheckBox ผลตรวจก​​ลิ่น |
| Appearance | CheckBox ลักษณะภายนอก |
| Remark | สถานะหรือหมายเหตุ |

## 🔗 Relationship

[Sampling high].SamplingIDH → temperature_30high.SampID

## 🧾 Related Queries

Bottom_Recall.sql, HighAcid_Genarate_No.sql, HighAcid_InsertBrik.sql, CallBack Sampling_HighAcid.sql

