# 🥛 Sampling

ตารางศูนย์กลางของกระบวนการ Sampling ปกติ หรือ Low Acid

## 📌 Table Information

| รายการ | รายละเอียด |
|---|---|
| Domain | Production / Low Acid |
| Primary Key | SamplingID |
| Parent Table | - |
| Child Tables | temperature_30, temperature_55 |
| Master Relations | empolyee, Machine |

## 🧱 Columns

| Column | ความหมาย |
|---|---|
| id | ลำดับข้อมูล |
| SamplingID | รหัส Sampling หลัก |
| Product | ชื่อสินค้า |
| Product_Link | Product ที่เชื่อมกับ Flavour |
| Flavour | รสชาติ |
| Size | ขนาดผลิตภัณฑ์ |
| FillingDate | วันที่ผลิต |
| ExpiredDate | วันหมดอายุ |
| Department | แผนกผลิต |
| Machine | รหัสเครื่องผลิต |
| Temperature / Temperature2 | อุณหภูมิชุด 30°C / 55°C |
| Quanity / Quanity2 | จำนวน Brik 30°C / 55°C |
| Plan_CheckDate / Actual_CheckDate | แผนและผลตรวจ 30°C |
| Plan_CheckDate55 / Actual_CheckDate55 | แผนและผลตรวจ 55°C |
| PH_Before / PH_Before2 | ค่า pH เริ่มต้น 30°C / 55°C |
| Spec_Actual / Spec_Actual2 | ค่า pH หลังตรวจ |
| SendBY, SendBY2, SendBY3, Send4 | ผู้ส่งตัวอย่างลำดับ 1–4 |
| Submit_By / Submit_date | ผู้ส่ง QA / วันที่ส่ง |
| RecevieBy / Recieved_date | ผู้รับ / วันที่รับ |
| physical_by / physical_by2 | ผู้ตรวจคุณภาพกายภาพ |
| physical_date / physical_date2 | วันที่ตรวจคุณภาพ |
| results_by / results_by2 | ผู้ตรวจจุลินทรีย์ |
| results_date / results_date2 | วันที่ตรวจจุลินทรีย์ |
| SupervisorBy / Supervisor_Date | ผู้อนุมัติ / วันที่อนุมัติ |
| CreatedBY / CreatedAt | ผู้สร้าง / เวลาที่สร้าง |
| EditBy / UpdateAt | ผู้แก้ไข / เวลาแก้ไข |
| dayFinished / dayFinished2 | วันบ่ม 30°C / 55°C |
| Amount_Samples | จำนวนกล่องทั้งหมด |
| Example, Indication, packaging | CheckBox ตรวจความครบถ้วน |
| complete, Detail_Complete, Normal | สถานะครบถ้วน/ปกติ |
| Incomplete, Detail_incomplete | เหตุผลข้อมูลไม่ครบ |
| Abnormal | เหตุผลผิดปกติ |
| atp, Smell, Tpc, Colour, PH | ผลตรวจชุด 30°C |
| atp2, Smell2, Tpc2, Colour2, PH2 | ผลตรวจชุด 55°C |
| production_update_uid | ผู้แก้ไข Filling Date |
| Locked_Production | สถานะล็อกการเพิ่ม Brik |

## 🔗 Relationships

| Related Table | Key |
|---|---|
| temperature_30 | SamplingID → sampID |
| temperature_55 | SamplingID → sampID |
| empolyee | SendBY และผู้ปฏิบัติงาน → Code |
| Machine | Machine → No |

## 🧾 Related Queries

Create Sampling.sql, Sampling_Table.sql, CallBack Sampling.sql, Update Sampling.sql, Sup_Production_Update.sql, Temp30_Insert.sql, Temp55_Insert.sql, Summary.sql

