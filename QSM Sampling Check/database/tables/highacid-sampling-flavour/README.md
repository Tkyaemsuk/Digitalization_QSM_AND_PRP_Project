# 🍓 HighAcid_Sampling_Flavour

ตารางเก็บ Product และ Flavour ที่เลือกสำหรับ Sampling High Acid

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | High Acid |
| Primary Key | SamplingID |
| Foreign Key | SamplingID |
| Parent Table | [Sampling high] |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| SamplingID | รหัส Sampling High Acid |
| Product | Product รายการที่ 1 |
| Product2 | Product รายการที่ 2 |
| Flavour | Flavour รายการที่ 1 |
| Flavour2 | Flavour รายการที่ 2 |
| Flavour3 | Flavour รายการที่ 3 |
| Flavour4 | Flavour รายการที่ 4 |
| Flavour5 | Flavour รายการที่ 5 |
| Flavour6 | Flavour รายการที่ 6 |

## 🔗 Relationship

[Sampling high].SamplingIDH → HighAcid_Sampling_Flavour.SamplingID

## 🧾 Related Queries

Create_Flavour_Sampling.sql, Flavour options.sql, CallBack Sampling_HighAcid.sql

