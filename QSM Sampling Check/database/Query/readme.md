# 🧾 QSM SQL Query Directory

โฟลเดอร์นี้เก็บ SQL Query ทั้งหมดของระบบ QSM Microbiology Analysis System โดยแต่ละไฟล์ถูกเรียกใช้งานจาก Budibase/API

> 📌 จาก README ของ Table ให้ใช้ลิงก์กลับมาที่โฟลเดอร์นี้ด้วยรูปแบบ ../../../Query/<ชื่อไฟล์>.sql

## 📂 Query List

| Query | Type | หน้าที่ | Parameter |
|---|---|---|---|
| Bottom_Recall.sql | SELECT | ดึง Brik High Acid สำหรับ Recall | SamplingID |
| CallBack Sampling.sql | SELECT | ดึงรายละเอียด Sampling ปกติและผู้ปฏิบัติงาน | SamplingID |
| CallBack Sampling_HighAcid.sql | SELECT | ดึงรายละเอียด High Acid และขั้นตอนตรวจ | SamplingID |
| CallProduct30.sql | SELECT | ดึง Brik 30°C แรกที่ยังไม่มี Colour | sampID |
| ColorCode.sql | UPDATE | อัปเดต ColourCode ของ Sampling | code, SampID |
| Create Sampling.sql | INSERT | สร้าง Sampling ปกติ | Filldate, Expiredate, Product, Flavour, DE, MC, Size, locked, SampID |
| Create Sampling_HighAcid.sql | INSERT | สร้าง Sampling High Acid | sampID, product, size, machine, MFG, EXP |
| Create_Flavour_Sampling.sql | INSERT | บันทึก Product และ Flavour High Acid | SamplingID, Product, Product2, Flavour–Flavour6 |
| DEV_DELETE.sql | DELETE | ลบ Sampling High Acid และ Brik | id |
| DEV_LOW_DELETE.sql | DELETE | ลบ Sampling ปกติและ Brik 30/55°C | id |
| Flavour options.sql | SELECT | สร้างรายการ Product/Flavour สำหรับ Dropdown | SampID |
| HighAcid_Genarate_No.sql | SELECT | หาเลข Brik High Acid ถัดไป | sampID |
| HighAcid_InsertBrik.sql | INSERT | เพิ่ม Brik High Acid | Qty, SampID, Date, Time, Status, Product, Flavour |
| LOGIN_API.sql | SELECT | ตรวจสอบ Username และ Password | userac, psw |
| Product_Insert.sql | SELECT | หาเลข Brik ถัดไปของ 30/55°C | sampID |
| Sampling_HighAcid_Tables.sql | SELECT | แสดงและค้นหา High Acid | FillingDate, sampid, mac |
| Sampling_Table.sql | SELECT | แสดงและค้นหา Sampling ปกติ | FillingDate, sampid, mac |
| Summary.sql | SELECT | สรุปจำนวน Brik 30°C และ 55°C | samp |
| SupHighAcid_Production_Update.sql | UPDATE | แก้ไข MFG/EXP High Acid | MFG_CODE, EXP_CODE, sampID |
| Sup_Production_Update.sql | UPDATE | แก้ไขวันผลิต/หมดอายุ Sampling | FillingDate, ExpiredDate, pdt_id, sampID |
| Temp30_Insert.sql | INSERT | เพิ่ม Brik 30°C ครั้งละไม่เกิน 6 รวมไม่เกิน 100 | Qty, sampID, SampleDate, status |
| Temp55_Insert.sql | INSERT | เพิ่ม Brik 55°C ครั้งละไม่เกิน 6 รวมไม่เกิน 100 | Qty, sampID, SampleDate, status |
| Update Sampling HighAcid.sql | UPDATE | อัปเดตผู้ส่งและ Lock High Acid | SendID, SendID2, SendID3, Send4, Locked, SampID |
| Update Sampling.sql | UPDATE | อัปเดตผู้ส่งและ Lock Sampling | SendID, SendID2, SendID3, Send4, Locked, SampID |

## 🔗 Query กับ Table ที่เกี่ยวข้อง

| Table | Query ที่ใช้บ่อย |
|---|---|
| Sampling | Create Sampling.sql, Sampling_Table.sql, CallBack Sampling.sql, Update Sampling.sql, Sup_Production_Update.sql |
| temperature_30 | Temp30_Insert.sql, Product_Insert.sql, CallProduct30.sql, ColorCode.sql |
| temperature_55 | Temp55_Insert.sql, Product_Insert.sql, Summary.sql |
| [Sampling high] | Create Sampling_HighAcid.sql, Sampling_HighAcid_Tables.sql, CallBack Sampling_HighAcid.sql |
| temperature_30high | Bottom_Recall.sql, HighAcid_Genarate_No.sql, HighAcid_InsertBrik.sql |
| HighAcid_Sampling_Flavour | Create_Flavour_Sampling.sql, Flavour options.sql |
| TB_APP1_LOGIN | LOGIN_API.sql |
| Machine / empolyee | Query ที่มี JOIN เพื่อแสดงชื่อเครื่องและชื่อผู้ปฏิบัติงาน |

## ⚠️ Query Safety

- 🔐 LOGIN_API.sql ควรเปลี่ยนจาก Plain Text Password เป็น Password Hash
- 🗑️ DEV_DELETE.sql และ DEV_LOW_DELETE.sql ควรจำกัดสิทธิ์เฉพาะผู้ดูแลระบบ
- 🔢 Query ที่ใช้ MAX(no) + 1 ควรทำงานภายใต้ Transaction เพื่อป้องกันเลขซ้ำ
- 📅 ควรกำหนดมาตรฐาน Date/Time และ UTC ให้เหมือนกันทั้งระบบ
- 🧾 API ควรระบุ Column ที่ต้องการแทน SELECT *

