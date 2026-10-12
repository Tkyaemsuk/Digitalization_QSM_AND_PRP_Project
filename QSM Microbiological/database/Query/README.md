# 🧾 QSM Microbiological SQL Query Directory

SQL จาก latest edited app export วันที่ 2026-10-12: **39 queries**. แต่ละไฟล์ใช้ชื่อตรงกับ Builder และมี comment `Application`, `Query name`, `File` กำกับ โดยรักษา SQL body เดิม.

[กลับหน้าหลัก](../../README.md) · [ฐานข้อมูลและ ER diagram](../README.md)

## Query List

| Query / SQL | คำสั่งที่พบ | ตารางจริงที่อ้างถึง | หน้าที่ |
|---|---|---|---|
| [Caculate 1](<Caculate 1.sql>) | SELECT, THROW, UPDATE | Sampling RawMilk, Sampling_Result, template | คำนวณผล microbiological จากค่าหลอด/ความเจือจางตาม dilution ที่เลือก แล้วอัปเดตผลของตัวอย่าง |
| [Caculate2](<Caculate2.sql>) | SELECT, UPDATE | MPN_INDEX_100ml, MPN_INDEX_100ml_10_0, MPN_INDEX_100ml_10_1, MPN_INDEX_100ml_5, Sampling_Result, MPN_INDEX_100ml_10 | เลือก MPN ตาม Choice จาก MPN_INDEX_100ml, MPN_INDEX_100ml_10, MPN_INDEX_100ml_5, MPN_INDEX_100ml_10_0 หรือ MPN_INDEX_100ml_10_1. แบบ tube 5 ใช้ Power=0 คงค่าเดิม, Power=1 คูณ 10 และคงเครื่องหมาย < หรือ >; Power อื่นคงค่าเดิม. TestType=COLIFORM อัปเดต Sampling_ |
| [Calculate_Other](<Calculate_Other.sql>) | SELECT, UPDATE | Sampling_Result, template | คำนวณผลสำหรับกลุ่ม “Other” จาก checkbox/dilution โดยใช้รูปแบบการรวมและปัดเศษคล้าย `Caculate 1` |
| [Callresult](<Callresult.sql>) | SELECT, INSERT, UPDATE | Micro Sampling, Sampling_Result | เลื่อนเลือกแถวผลตรวจใน MicroID เดียวแบบหลายผลลัพธ์ |
| [CallResult_Batch](<CallResult_Batch.sql>) | SELECT | Sampling_Result | SELECT sr.* จาก Sampling_Result โดยเทียบ SampID และ No หลังแปลง NVARCHAR และ trim. ไม่กรอง Batch_Lot_no; ถ้าคู่นี้ซ้ำอาจคืนมากกว่าหนึ่งแถว. |
| [ChangePassword](<ChangePassword.sql>) | UPDATE, SELECT | tb_app1_login | เปลี่ยน password ใน `tb_app1_login` ตาม user |
| [Create Sampling](<Create Sampling.sql>) | SELECT, INSERT, UPDATE, THROW | All_plant_Data, Micro Sampling, Sum_data_type, Micro_Queue | สร้าง sampling หลายรายการตามข้อมูลที่ผู้ใช้เลือก และจัดการคิวการสร้าง |
| [Create_Inprocess](<Create_Inprocess.sql>) | SELECT, INSERT, UPDATE, THROW | Micro Sampling, Micro_Queue, Inprocess | สร้างรายการ Micro Sampling สำหรับงาน Inprocess |
| [Create_Raw_Milk](<Create_Raw_Milk.sql>) | INSERT, SELECT, THROW | Micro, Micro Sampling, Sampling RawMilk, Sampling_Result | สร้างชุดงานตรวจน้ำนมดิบและผลที่เกี่ยวข้อง |
| [DailyReport_Microbiological 1](<DailyReport_Microbiological 1.sql>) | SELECT | Internal_Quality, Micro, Micro Sampling, Sampling_Result, Employee | อ่าน Micro ตาม Micro; LEFT JOIN Employee.code กับ Submit_by, received_by, Inspector, Interpretor และ Sup เพื่อคืนชื่อผู้ปฏิบัติงาน. รวม Internal_Quality สูงสุด 15 รายการเรียง id เป็น JSON โดยรวม Media/Equipment/Other เป็น Item. OUTER APPLY เลือก MPN ตัวแรกเรีย |
| [DailyReport_Result](<DailyReport_Result.sql>) | SELECT, THROW | Micro Sampling, Sampling_Result | ดึงผล Micro ในช่วงลำดับ `No` ที่ระบุสำหรับ MicroID |
| [Delect_Micro&Sampling](<Delect_Micro&Sampling.sql>) | SELECT, INSERT, DELETE, THROW | Micro, Micro Sampling, Sampling_Result | ลบข้อมูล sampling/result ที่สัมพันธ์กับ `MicroID` โดยเริ่ม transaction และใช้ `DELETE` กับ `Sampling_Result`, `Micro Sampling`, `Micro` ตามลำดับ/เงื่อนไขใน SQL; มี rollback เมื่อผิดพลาด |
| [Department_Options](<Department_Options.sql>) | SELECT | All_plant_Data | คืนรายการ Department ที่ไม่ซ้ำและ Department_NO จาก `All_plant_Data` |
| [Genarate_Inprocess](<Genarate_Inprocess.sql>) | SELECT | Micro Sampling, Inprocess | สร้าง preview รายการ/รหัส sampling สำหรับ Inprocess โดยยังเป็น query อ่านข้อมูล |
| [Genarate_MicroID](<Genarate_MicroID.sql>) | SELECT | All_plant_Data, Micro Sampling | รับ dep, selection, item, Date; หา Department_NO/Section_NO จาก All_Plant_Data. ถ้าแผนกมี MicroID ในวันนั้นแล้วใช้ running เดิม มิฉะนั้นใช้ running สูงสุดของวัน +1. คืน SamplingID ในรูป MICRO-YYYYMMDD-Department_NO-NN พร้อม RunningNo, Department_NO, Selection, |
| [Genarate_Sampling](<Genarate_Sampling.sql>) | SELECT | All_plant_Data, Micro Sampling | รับ dep, machine, item, Date; ถ้าค่าไม่ครบหรือไม่พบ Department_NO/Section_NO คืน SamplingID/RunningNo เป็น NULL. หา running สูงสุดของแผนกในวันนั้น +1 และคืน QSM-YYYYMMDD-Department_NOSection_NO-NN พร้อมข้อมูลต้นทาง. เป็น preview SELECT; เลขท้ายถูกจัดสองหลัก. |
| [Get_All_Type_Machine_Option](<Get_All_Type_Machine_Option.sql>) | SELECT | Sum_data_type | อ่าน Type และแยก Machine ที่คั่นด้วย comma ด้วย CROSS APPLY STRING_SPLIT จาก Sum_data_type; trim ค่า ตัด Type/Machine ที่ว่าง คืนคู่ที่ไม่ซ้ำและเรียงตาม Type, Machine. |
| [Item_Options](<Item_Options.sql>) | SELECT | All_plant_Data | คืน Item ที่ไม่ซ้ำสำหรับ Department ที่เลือกจาก `All_plant_Data` |
| [Login](<Login.sql>) | SELECT | tb_app1_login | ค้นบัญชีใน `tb_app1_login` ด้วย user และ password ที่ส่งมา |
| [MicroID_Table](<MicroID_Table.sql>) | SELECT | Micro, Micro Sampling | ดึงรายการ MicroID/ข้อมูลสำหรับตารางเลือก โดยกรองวันที่และ Department |
| [Pull_Result](<Pull_Result.sql>) | SELECT | Micro, Micro Sampling, Sampling_Result | คืน SR.* พร้อม MicroID, Sampling_Batch, Batch_Lot_No และหน่วยทดสอบจาก Micro. Join Sampling_Result.SampID = Micro Sampling.SamplingID และ MicroID = Micro.MicroID; กรอง MicroID แล้วสร้าง Batch_Check เป็น ตรง/ไม่ตรง โดยเทียบ Batch หลัง trim. เรียง SampID และ No. |
| [Pull_sum_MicroID](<Pull_sum_MicroID.sql>) | SELECT | Micro Sampling | ดึง/สรุปข้อมูล Micro Sampling ตาม MicroID สำหรับแสดงรายการ/สถานะ |
| [Puls_state](<Puls_state.sql>) | UPDATE | Micro Sampling | เพิ่ม state ของ `Micro Sampling` ขึ้น 1 |
| [Rawmilk_Create_2](<Rawmilk_Create_2.sql>) | INSERT, SELECT, UPDATE, THROW | Micro, Micro Sampling, Sampling_Result | สร้าง sampling สำหรับ Raw Milk และจัดการรูปแบบวันเวลาให้เป็นมาตรฐาน |
| [Sampling_Create_2](<Sampling_Create_2.sql>) | SELECT, INSERT, UPDATE | Micro, Micro Sampling, Sampling_Result, Micro_Queue | สร้างรายการ sampling ตามประเภท/หน้า/ข้อมูลผลิตภัณฑ์ พร้อมคุม queue |
| [samplingDate](<samplingDate.sql>) | SELECT | Sampling RawMilk | คืนเฉพาะ SamplingID จาก Sampling RawMilk. เมื่อ Date ว่าง อ่านทุกวัน; เมื่อมี Date กรอง CAST(Date AS DATE) ให้ตรงวัน และเรียง SamplingID. |
| [Save_Inspec&Inter](<Save_Inspec&Inter.sql>) | SELECT, UPDATE | Micro | บันทึก/อัปเดตชื่อ Inspector หรือ Interpretor ที่ผูกกับ MicroID |
| [Save_Internal](<Save_Internal.sql>) | INSERT | Internal_Quality | เพิ่มผลตรวจ Internal Quality |
| [Selection_Inprocess](<Selection_Inprocess.sql>) | SELECT | Inprocess | คืนตัวเลือกแบบ dependent สำหรับ Inprocess โดยไม่ทำ cross join ของชุด option |
| [Selection_Options](<Selection_Options.sql>) | SELECT | All_plant_Data | SELECT DISTINCT Section และ Section_NO จาก All_plant_Data โดยกรอง Department และ Item แล้วเรียง Section. |
| [SelectionRawMilk](<SelectionRawMilk.sql>) | SELECT | Sampling RawMilk | คืนรายการ Raw Milk ตามวัน Supplier และเลขรถ |
| [Simple_Options](<Simple_Options.sql>) | SELECT | All_plant_Data | SELECT DISTINCT จาก All_plant_Data โดยกรอง Department, Item และ Section แล้วใช้ CROSS APPLY STRING_SPLIT(Sample, ',') แยก Sample ที่คั่นด้วย comma ตัดช่องว่างและเรียงตาม Sample. เป็นการแตกค่าในแต่ละแถว ไม่ใช่ CROSS JOIN ระหว่างทุกแถว. |
| [SumTable](<SumTable.sql>) | SELECT | Micro Sampling | สร้างข้อมูลสรุป/ตาราง Micro Sampling |
| [Sup Approve](<Sup Approve.sql>) | UPDATE, SELECT | Micro, Micro Sampling, Sampling RawMilk, Sampling_Result | บันทึกการอนุมัติของ Supervisor และปรับสถานะ/ข้อมูลผลตรวจที่เกี่ยวข้อง |
| [Sync_RawMilk_DateTime_To_Micro_Result](<Sync_RawMilk_DateTime_To_Micro_Result.sql>) | UPDATE, SELECT | Micro Sampling, Sampling RawMilk, Sampling_Result | เมื่อ Action = load: UPDATE Micro Sampling.Date/Time และ Sampling_Result.Date/Time จาก Sampling RawMilk.Date/Plan โดย join SamplingID = SamplingID และ SamplingID = SampID ตามลำดับ แล้วคืน Status=success, Message=Update completed. ไม่มีตัวกรอง SamplingID จึงอัป |
| [Update_PART](<Update_PART.sql>) | UPDATE, THROW, SELECT | Micro, Micro Sampling, Sampling_Result | บันทึกข้อมูลส่วน/part ของงาน Micro พร้อมข้อมูลตัวอย่างและผลที่ส่งจากฟอร์ม |
| [Update_RawMilk_Micro_Result](<Update_RawMilk_Micro_Result.sql>) | SELECT, UPDATE | Sampling RawMilk, Sampling_Result | คำนวณผลราย batch แล้วอัปเดตช่อง SPC/Coliform/E. coli ใน `Sampling RawMilk` เฉพาะ SamplingID ที่กำลังทำงานและ batch 1–3 |
| [Update_Result](<Update_Result.sql>) | SELECT, THROW, UPDATE | Sampling_Result | อัปเดตผลตรวจตาม Action และ input ของ plate/dilution สำหรับแถว `Sampling_Result` |
| [Update_Status](<Update_Status.sql>) | UPDATE | Micro | UPDATE ทุกแถวของ Micro เพราะไม่มี WHERE: เมื่อ Sup มีค่าที่ไม่ใช่ช่องว่างให้ Status = Success; ถ้า Sup ว่างแต่ received_by มีค่าให้ Pending; กรณีอื่นคง Status เดิม. ไม่มี binding และไม่จำกัด MicroID จึงมีผลทั้งตาราง. |

## รายละเอียดทุก Query

## `Caculate 1`

**SQL:** [Caculate 1](<Caculate 1.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** คำนวณผล microbiological จากค่าหลอด/ความเจือจางตาม dilution ที่เลือก แล้วอัปเดตผลของตัวอย่าง
- **การทำงาน:** แปลง `CalculateType` เป็นชื่อมาตรฐาน (`TPC`, `YM`, `35C`, `55C`, `COLIFORM`, `ECOLI`); แปลง `Check1`–`Check20` จาก `1/0`, `true/false`, `yes/no`, `on/off` เป็น bit; เทียบ checkbox pattern กับ `template`; รวมค่าจากหลอดที่เลือก, หารด้วยค่า template, กำหนดหลักนัยสำคัญและปัดเศษโดยตรวจเลขทศนิยมหลักแรก: ถ้าหลักนั้นเป็น 5 ใช้ parity ของจำนวนเต็ม (เลขหลังหลักทศนิยมแรกไม่ถูกใช้แยกกรณี 5 กับ 5 ตามด้วยเลขอื่น); เขียนเฉพาะคอลัมน์ผลของชนิดที่ขอ
- **แถวเป้าหมาย:** `Sampling_Result` ระบุด้วย `SampID + Batch_Lot_no + No`; `No` รองรับทศนิยมและ Batch เก็บ/เทียบเป็นข้อความ
- **ผลข้างเคียง:** ใช้ `OUTPUT` เก็บผลที่อัปเดต แล้วนำ TPC/Coliform/E.coli ไปลง tank 1–3 ของ `Sampling RawMilk` เฉพาะ batch ที่แปลงเป็นเลข 1–3 ได้; batch รูปแบบข้อความไม่ทำให้ conversion error และไม่ถูก map ลง tank
- **พารามิเตอร์สำคัญ:** `CalculateType`, `Check1`–`Check20`, `SampID`, `Batch_Lot_No`, `No` และชุดค่า `TPC_*`, `Y_M_*`, `35C_*`, `55C_*`, `Coliform_*`, `Ecoli_*`
- **ข้อควรระวัง:** `SET XACT_ABORT ON`; SQL มี `THROW` เมื่อไม่พบ checkbox pattern ใน `template`. ตรวจให้แน่ใจว่าความหมายของ `Power`, สูตรปัดเศษ และ mapping tank ตรงกับขั้นตอนแล็บก่อนเปลี่ยน

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (144): `CalculateType`, `Check1`, `Check2`, `Check3`, `Check4`, `Check5`, `Check6`, `Check7`, `Check8`, `Check9`, `Check10`, `Check11`, `Check12`, `Check13`, `Check14`, `Check15`, `Check16`, `Check17`, `Check18`, `Check19`, `Check20`, `TPC_1_1`, `TPC_1_2`, `TPC_10_1`, `TPC_10_2`, `TPC_100_1`, `TPC_100_2`, `TPC_1000_1`, `TPC_1000_2`, `TPC_10000_1`, `TPC_10000_2`, `TPC_100000_1`, `TPC_100000_2`, `TPC_1000000_1`, `TPC_1000000_2`, `TPC_10000000_1`, `TPC_10000000_2`, `TPC_100000000_1`, `TPC_100000000_2`, `TPC_1000000000_1`, `TPC_1000000000_2`, `Y_M_1_1`, `Y_M_1_2`, `Y_M_10_1`, `Y_M_10_2`, `Y_M_100_1`, `Y_M_100_2`, `Y_M_1000_1`, `Y_M_1000_2`, `Y_M_10000_1`, `Y_M_10000_2`, `Y_M_100000_1`, `Y_M_100000_2`, `Y_M_1000000_1`, `Y_M_1000000_2`, `Y_M_10000000_1`, `Y_M_10000000_2`, `Y_M_100000000_1`, `Y_M_100000000_2`, `Y_M_1000000000_1`, `Y_M_1000000000_2`, `35C_1_1`, `35C_1_2`, `35C_10_1`, `35C_10_2`, `35C_100_1`, `35C_100_2`, `35C_1000_1`, `35C_1000_2`, `35C_10000_1`, `35C_10000_2`, `35C_100000_1`, `35C_100000_2`, `35C_1000000_1`, `35C_1000000_2`, `35C_10000000_1`, `35C_10000000_2`, `35C_100000000_1`, `35C_100000000_2`, `35C_1000000000_1`, `35C_1000000000_2`, `55C_1_1`, `55C_1_2`, `55C_10_1`, `55C_10_2`, `55C_100_1`, `55C_100_2`, `55C_1000_1`, `55C_1000_2`, `55C_10000_1`, `55C_10000_2`, `55C_100000_1`, `55C_100000_2`, `55C_1000000_1`, `55C_1000000_2`, `55C_10000000_1`, `55C_10000000_2`, `55C_100000000_1`, `55C_100000000_2`, `55C_1000000000_1`, `55C_1000000000_2`, `Coliform_1_1`, `Coliform_1_2`, `Coliform_10_1`, `Coliform_10_2`, `Coliform_100_1`, `Coliform_100_2`, `Coliform_1000_1`, `Coliform_1000_2`, `Coliform_10000_1`, `Coliform_10000_2`, `Coliform_100000_1`, `Coliform_100000_2`, `Coliform_1000000_1`, `Coliform_1000000_2`, `Coliform_10000000_1`, `Coliform_10000000_2`, `Coliform_100000000_1`, `Coliform_100000000_2`, `Coliform_1000000000_1`, `Coliform_1000000000_2`, `Ecoli_1_1`, `Ecoli_1_2`, `Ecoli_10_1`, `Ecoli_10_2`, `Ecoli_100_1`, `Ecoli_100_2`, `Ecoli_1000_1`, `Ecoli_1000_2`, `Ecoli_10000_1`, `Ecoli_10000_2`, `Ecoli_100000_1`, `Ecoli_100000_2`, `Ecoli_1000000_1`, `Ecoli_1000000_2`, `Ecoli_10000000_1`, `Ecoli_10000000_2`, `Ecoli_100000000_1`, `Ecoli_100000000_2`, `Ecoli_1000000000_1`, `Ecoli_1000000000_2`, `SampID`, `Batch_Lot_No`, `No`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling RawMilk`, `Sampling_Result`, `template`
- หน้าจอที่อ้าง query ID: [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "CalculateType": {
    "type": "string",
    "name": "CalculateType"
  },
  "SampID_Input": {
    "type": "string",
    "name": "SampID_Input"
  },
  "Batch_Lot_No_Input": {
    "type": "string",
    "name": "Batch_Lot_No_Input"
  },
  "No_Input": {
    "type": "number",
    "name": "No_Input"
  },
  "updated": {
    "type": "boolean",
    "name": "updated"
  },
  "TPC_raw": {
    "type": "number",
    "name": "TPC_raw"
  },
  "TPC_Result_Divisor": {
    "type": "number",
    "name": "TPC_Result_Divisor"
  },
  "TPC_Divided": {
    "type": "number",
    "name": "TPC_Divided"
  },
  "TPC_Power": {
    "type": "number",
    "name": "TPC_Power"
  },
  "TPC_Step": {
    "type": "number",
    "name": "TPC_Step"
  },
  "TPC_3Significant": {
    "type": "number",
    "name": "TPC_3Significant"
  },
  "TPC_Integer": {
    "type": "number",
    "name": "TPC_Integer"
  },
  "TPC_Fraction": {
    "type": "number",
    "name": "TPC_Fraction"
  },
  "TPC_EvenOdd": {
    "type": "string",
    "name": "TPC_EvenOdd"
  },
  "TPC_Rounded": {
    "type": "number",
    "name": "TPC_Rounded"
  },
  "TPC_Final": {
    "type": "number",
    "name": "TPC_Final"
  },
  "YM_raw": {
    "type": "number",
    "name": "YM_raw"
  },
  "YM_Divided": {
    "type": "number",
    "name": "YM_Divided"
  },
  "YM_Step": {
    "type": "number",
    "name": "YM_Step"
  },
  "YM_3Significant": {
    "type": "number",
    "name": "YM_3Significant"
  },
  "YM_Integer": {
    "type": "number",
    "name": "YM_Integer"
  },
  "YM_Fraction": {
    "type": "number",
    "name": "YM_Fraction"
  },
  "YM_EvenOdd": {
    "type": "string",
    "name": "YM_EvenOdd"
  },
  "YM_Rounded": {
    "type": "number",
    "name": "YM_Rounded"
  },
  "YM_Final": {
    "type": "number",
    "name": "YM_Final"
  },
  "C35_raw": {
    "type": "number",
    "name": "C35_raw"
  },
  "C35_Divided": {
    "type": "number",
    "name": "C35_Divided"
  },
  "C35_Step": {
    "type": "number",
    "name": "C35_Step"
  },
  "C35_3Significant": {
    "type": "number",
    "name": "C35_3Significant"
  },
  "C35_Integer": {
    "type": "number",
    "name": "C35_Integer"
  },
  "C35_Fraction": {
    "type": "number",
    "name": "C35_Fraction"
  },
  "C35_EvenOdd": {
    "type": "string",
    "name": "C35_EvenOdd"
  },
  "C35_Rounded": {
    "type": "number",
    "name": "C35_Rounded"
  },
  "C35_Final": {
    "type": "number",
    "name": "C35_Final"
  },
  "C55_raw": {
    "type": "number",
    "name": "C55_raw"
  },
  "C55_Divided": {
    "type": "number",
    "name": "C55_Divided"
  },
  "C55_Step": {
    "type": "number",
    "name": "C55_Step"
  },
  "C55_3Significant": {
    "type": "number",
    "name": "C55_3Significant"
  },
  "C55_Integer": {
    "type": "number",
    "name": "C55_Integer"
  },
  "C55_Fraction": {
    "type": "number",
    "name": "C55_Fraction"
  },
  "C55_EvenOdd": {
    "type": "string",
    "name": "C55_EvenOdd"
  },
  "C55_Rounded": {
    "type": "number",
    "name": "C55_Rounded"
  },
  "C55_Final": {
    "type": "number",
    "name": "C55_Final"
  },
  "Coli_raw": {
    "type": "number",
    "name": "Coli_raw"
  },
  "Coli_Divided": {
    "type": "number",
    "name": "Coli_Divided"
  },
  "Coli_Step": {
    "type": "number",
    "name": "Coli_Step"
  },
  "Coli_3Significant": {
    "type": "number",
    "name": "Coli_3Significant"
  },
  "Coli_Integer": {
    "type": "number",
    "name": "Coli_Integer"
  },
  "Coli_Fraction": {
    "type": "number",
    "name": "Coli_Fraction"
  },
  "Coli_EvenOdd": {
    "type": "string",
    "name": "Coli_EvenOdd"
  },
  "Coli_Rounded": {
    "type": "number",
    "name": "Coli_Rounded"
  },
  "Coli_Final": {
    "type": "number",
    "name": "Coli_Final"
  },
  "Ecoli_raw": {
    "type": "number",
    "name": "Ecoli_raw"
  },
  "Ecoli_Divided": {
    "type": "number",
    "name": "Ecoli_Divided"
  },
  "Ecoli_Step": {
    "type": "number",
    "name": "Ecoli_Step"
  },
  "Ecoli_3Significant": {
    "type": "number",
    "name": "Ecoli_3Significant"
  },
  "Ecoli_Integer": {
    "type": "number",
    "name": "Ecoli_Integer"
  },
  "Ecoli_Fraction": {
    "type": "number",
    "name": "Ecoli_Fraction"
  },
  "Ecoli_EvenOdd": {
    "type": "string",
    "name": "Ecoli_EvenOdd"
  },
  "Ecoli_Rounded": {
    "type": "number",
    "name": "Ecoli_Rounded"
  },
  "Ecoli_Final": {
    "type": "number",
    "name": "Ecoli_Final"
  },
  "Update_TPC": {
    "type": "number",
    "name": "Update_TPC"
  },
  "Update_YM": {
    "type": "number",
    "name": "Update_YM"
  },
  "Update_35C": {
    "type": "number",
    "name": "Update_35C"
  },
  "Update_55C": {
    "type": "number",
    "name": "Update_55C"
  },
  "Update_Coliform": {
    "type": "number",
    "name": "Update_Coliform"
  },
  "Update_Ecoli": {
    "type": "number",
    "name": "Update_Ecoli"
  },
  "TotalValue": {
    "type": "number",
    "name": "TotalValue"
  },
  "Dilution": {
    "type": "string",
    "name": "Dilution"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  }
}
```

</details>

## `Caculate2`

**SQL:** [Caculate2](<Caculate2.sql>) · **Function ใน Builder:** `update`

เลือก MPN ตาม Choice จาก MPN_INDEX_100ml, MPN_INDEX_100ml_10, MPN_INDEX_100ml_5, MPN_INDEX_100ml_10_0 หรือ MPN_INDEX_100ml_10_1. แบบ tube 5 ใช้ Power=0 คงค่าเดิม, Power=1 คูณ 10 และคงเครื่องหมาย < หรือ >; Power อื่นคงค่าเดิม. TestType=COLIFORM อัปเดต Sampling_Result.Coliform_MPN_Result; ECOLI/E.COLI/E_COLI อัปเดต Ecoli_MPN_Result. WHERE ใช้ SampID เพียงอย่างเดียว จึงอาจเปลี่ยนหลาย batch/No ของตัวอย่างเดียว. คืน Result, BaseResult, Power, Choice, TestType, SampID. ไม่มีการเขียนตารางชื่อ Coliform หรือ E.coli.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (14): `Choice`, `TestType`, `SampID`, `Power`, `10_ml`, `1_ml`, `0_1_ml`, `Tubes`, `1_ml_b13`, `0_1_ml_b13`, `0_0_1_ml_b13`, `0_1_ml_b14`, `0_0_1_ml_b14`, `0_0_0_1_ml_b14`
- ตารางที่อ้างจากคำสั่ง SQL: `MPN_INDEX_100ml`, `MPN_INDEX_100ml_10_0`, `MPN_INDEX_100ml_10_1`, `MPN_INDEX_100ml_5`, `Sampling_Result`, `MPN_INDEX_100ml_10`
- หน้าจอที่อ้าง query ID: [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Result": {
    "type": "string",
    "name": "Result"
  },
  "BaseResult": {
    "type": "string",
    "name": "BaseResult"
  },
  "Power": {
    "type": "number",
    "name": "Power"
  },
  "Choice": {
    "type": "string",
    "name": "Choice"
  },
  "TestType": {
    "type": "string",
    "name": "TestType"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "updated": {
    "type": "boolean",
    "name": "updated"
  },
  "MPN_100_ml": {
    "type": "string",
    "name": "MPN_100_ml"
  }
}
```

</details>

## `Calculate_Other`

**SQL:** [Calculate_Other](<Calculate_Other.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** คำนวณผลสำหรับกลุ่ม “Other” จาก checkbox/dilution โดยใช้รูปแบบการรวมและปัดเศษคล้าย `Caculate 1`
- **การทำงาน:** normalize `Check1`–`Check20`, จับคู่รูปแบบกับ `template`, รวมผลจากชุด `Other_*`, คำนวณค่าและปรับหลัก/ปัดเศษผ่าน CTE แล้วอัปเดตแถว `Sampling_Result`
- **พารามิเตอร์หลัก:** `Check1`–`Check20`, `Other_*` และตัวระบุแถว/ชนิดการคำนวณตาม binding ใน query
- **ข้อควรระวัง:** ตรวจ `WHERE` และคอลัมน์ผลปลายทางก่อนแก้ เนื่องจาก query ประกอบด้วยหลาย CTE ที่ใช้ชื่อคล้าย query คำนวณตัวอื่น

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (43): `Check1`, `Check2`, `Check3`, `Check4`, `Check5`, `Check6`, `Check7`, `Check8`, `Check9`, `Check10`, `Check11`, `Check12`, `Check13`, `Check14`, `Check15`, `Check16`, `Check17`, `Check18`, `Check19`, `Check20`, `Other_1_1`, `Other_1_2`, `Other_10_1`, `Other_10_2`, `Other_100_1`, `Other_100_2`, `Other_1000_1`, `Other_1000_2`, `Other_10000_1`, `Other_10000_2`, `Other_100000_1`, `Other_100000_2`, `Other_1000000_1`, `Other_1000000_2`, `Other_10000000_1`, `Other_10000000_2`, `Other_100000000_1`, `Other_100000000_2`, `Other_1000000000_1`, `Other_1000000000_2`, `SampID`, `Batch_Lot_No`, `No`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling_Result`, `template`
- หน้าจอที่อ้าง query ID: [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SampID_Input": {
    "type": "string",
    "name": "SampID_Input"
  },
  "Batch_Lot_No_Input": {
    "type": "string",
    "name": "Batch_Lot_No_Input"
  },
  "No_Input": {
    "type": "string",
    "name": "No_Input"
  },
  "Check1": {
    "type": "boolean",
    "name": "Check1"
  },
  "Check2": {
    "type": "boolean",
    "name": "Check2"
  },
  "Check3": {
    "type": "boolean",
    "name": "Check3"
  },
  "Check4": {
    "type": "boolean",
    "name": "Check4"
  },
  "Check5": {
    "type": "boolean",
    "name": "Check5"
  },
  "Check6": {
    "type": "boolean",
    "name": "Check6"
  },
  "Check7": {
    "type": "boolean",
    "name": "Check7"
  },
  "Check8": {
    "type": "boolean",
    "name": "Check8"
  },
  "Check9": {
    "type": "boolean",
    "name": "Check9"
  },
  "Check10": {
    "type": "boolean",
    "name": "Check10"
  },
  "Check11": {
    "type": "boolean",
    "name": "Check11"
  },
  "Check12": {
    "type": "boolean",
    "name": "Check12"
  },
  "Check13": {
    "type": "boolean",
    "name": "Check13"
  },
  "Check14": {
    "type": "boolean",
    "name": "Check14"
  },
  "Check15": {
    "type": "boolean",
    "name": "Check15"
  },
  "Check16": {
    "type": "boolean",
    "name": "Check16"
  },
  "Check17": {
    "type": "boolean",
    "name": "Check17"
  },
  "Check18": {
    "type": "boolean",
    "name": "Check18"
  },
  "Check19": {
    "type": "boolean",
    "name": "Check19"
  },
  "Check20": {
    "type": "boolean",
    "name": "Check20"
  }
}
```

</details>

## `Callresult`

**SQL:** [Callresult](<Callresult.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** เลื่อนเลือกแถวผลตรวจใน MicroID เดียวแบบหลายผลลัพธ์
- **การทำงาน:** ใช้ `MicroID`, `State`, `Direction`; `Direction=1` คือ Next, `-1` คือ Previous, `0` คง state; รองรับ state 0 ที่ยังไม่เลือก `Sampling_Result`; ใช้ `Sampling_Result.id` ระบุแถวเมื่อ MicroID เดียวมีหลายผล และคืน Date/Time/Batch/Item พร้อมข้อมูล sampling
- **ตาราง:** `Micro Sampling`, `Sampling_Result`
- **ข้อควรระวัง:** ครอบ transaction; อย่าเปลี่ยนการเรียงลำดับผลโดยไม่ทดสอบ Next/Previous และขอบเขตแถวแรก/สุดท้าย

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (3): `MicroID`, `State`, `Direction`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "No": {
    "type": "string",
    "name": "No"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "SamplingRunning": {
    "type": "number",
    "name": "SamplingRunning"
  },
  "SamplingResultID": {
    "type": "number",
    "name": "SamplingResultID"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch_Lot_no": {
    "type": "string",
    "name": "Batch_Lot_no"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "State": {
    "type": "number",
    "name": "State"
  },
  "FirstPage": {
    "type": "number",
    "name": "FirstPage"
  },
  "LastPage": {
    "type": "number",
    "name": "LastPage"
  },
  "MaxState": {
    "type": "number",
    "name": "MaxState"
  },
  "IsFirst": {
    "type": "number",
    "name": "IsFirst"
  },
  "IsLast": {
    "type": "number",
    "name": "IsLast"
  },
  "no": {
    "type": "string",
    "name": "no"
  },
  "NextState": {
    "type": "string",
    "name": "NextState"
  }
}
```

</details>

## `CallResult_Batch`

**SQL:** [CallResult_Batch](<CallResult_Batch.sql>) · **Function ใน Builder:** `read`

SELECT sr.* จาก Sampling_Result โดยเทียบ SampID และ No หลังแปลง NVARCHAR และ trim. ไม่กรอง Batch_Lot_no; ถ้าคู่นี้ซ้ำอาจคืนมากกว่าหนึ่งแถว.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `SampID`, `No`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/report/:microid](../../report/README.md), [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "number",
    "name": "id"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Batch_Lot_no": {
    "type": "string",
    "name": "Batch_Lot_no"
  },
  "TPC_1_1": {
    "type": "string",
    "name": "TPC_1_1"
  },
  "TPC_10_2": {
    "type": "string",
    "name": "TPC_10_2"
  },
  "TPC_1_2": {
    "type": "string",
    "name": "TPC_1_2"
  },
  "TPC_10_1": {
    "type": "string",
    "name": "TPC_10_1"
  },
  "TPC_100_1": {
    "type": "string",
    "name": "TPC_100_1"
  },
  "TPC_100_2": {
    "type": "string",
    "name": "TPC_100_2"
  },
  "TPC_1000_1": {
    "type": "string",
    "name": "TPC_1000_1"
  },
  "TPC_1000_2": {
    "type": "string",
    "name": "TPC_1000_2"
  },
  "TPC_10000_1": {
    "type": "string",
    "name": "TPC_10000_1"
  },
  "TPC_10000_2": {
    "type": "string",
    "name": "TPC_10000_2"
  },
  "TPC_100000_1": {
    "type": "string",
    "name": "TPC_100000_1"
  },
  "TPC_100000_2": {
    "type": "string",
    "name": "TPC_100000_2"
  },
  "TPC_1000000_1": {
    "type": "string",
    "name": "TPC_1000000_1"
  },
  "TPC_1000000_2": {
    "type": "string",
    "name": "TPC_1000000_2"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  },
  "Y_M_1_1": {
    "type": "string",
    "name": "Y_M_1_1"
  },
  "Y_M_1_2": {
    "type": "string",
    "name": "Y_M_1_2"
  },
  "Y_M_10_1": {
    "type": "string",
    "name": "Y_M_10_1"
  },
  "Y_M_10_2": {
    "type": "string",
    "name": "Y_M_10_2"
  },
  "Y_M_100_1": {
    "type": "string",
    "name": "Y_M_100_1"
  },
  "Y_M_100_2": {
    "type": "string",
    "name": "Y_M_100_2"
  },
  "Y_M_Result": {
    "type": "string",
    "name": "Y_M_Result"
  },
  "35C_1_1": {
    "type": "string",
    "name": "35C_1_1"
  },
  "35C_1_2": {
    "type": "string",
    "name": "35C_1_2"
  },
  "35C_10_1": {
    "type": "string",
    "name": "35C_10_1"
  },
  "35C_10_2": {
    "type": "string",
    "name": "35C_10_2"
  },
  "35C_100_1": {
    "type": "string",
    "name": "35C_100_1"
  },
  "35C_100_2": {
    "type": "string",
    "name": "35C_100_2"
  },
  "35C_1000_1": {
    "type": "string",
    "name": "35C_1000_1"
  },
  "35C_1000_2": {
    "type": "string",
    "name": "35C_1000_2"
  },
  "55C_1_1": {
    "type": "string",
    "name": "55C_1_1"
  },
  "55C_1_2": {
    "type": "string",
    "name": "55C_1_2"
  },
  "55C_10_1": {
    "type": "string",
    "name": "55C_10_1"
  },
  "55C_10_2": {
    "type": "string",
    "name": "55C_10_2"
  },
  "55C_100_1": {
    "type": "string",
    "name": "55C_100_1"
  },
  "55C_100_2": {
    "type": "string",
    "name": "55C_100_2"
  },
  "55C_1000_1": {
    "type": "string",
    "name": "55C_1000_1"
  },
  "55C_1000_2": {
    "type": "string",
    "name": "55C_1000_2"
  },
  "35C_Result": {
    "type": "string",
    "name": "35C_Result"
  },
  "55C_Result": {
    "type": "string",
    "name": "55C_Result"
  },
  "Coliform_MPN": {
    "type": "string",
    "name": "Coliform_MPN"
  },
  "Coliform_1_1": {
    "type": "string",
    "name": "Coliform_1_1"
  },
  "Coliform_1_2": {
    "type": "string",
    "name": "Coliform_1_2"
  },
  "Coliform_10_1": {
    "type": "string",
    "name": "Coliform_10_1"
  },
  "Coliform_10_2": {
    "type": "string",
    "name": "Coliform_10_2"
  },
  "Coliform_100_1": {
    "type": "string",
    "name": "Coliform_100_1"
  },
  "Coliform_100_2": {
    "type": "string",
    "name": "Coliform_100_2"
  },
  "Coliform_Result": {
    "type": "string",
    "name": "Coliform_Result"
  },
  "Ecoli_MPN": {
    "type": "string",
    "name": "Ecoli_MPN"
  },
  "Ecoli_1_1": {
    "type": "string",
    "name": "Ecoli_1_1"
  },
  "Ecoli_1_2": {
    "type": "string",
    "name": "Ecoli_1_2"
  },
  "Ecoli_10_1": {
    "type": "string",
    "name": "Ecoli_10_1"
  },
  "Ecoli_10_2": {
    "type": "string",
    "name": "Ecoli_10_2"
  },
  "Ecoli_100_1": {
    "type": "string",
    "name": "Ecoli_100_1"
  },
  "Ecoli_100_2": {
    "type": "string",
    "name": "Ecoli_100_2"
  },
  "Ecoli_result": {
    "type": "string",
    "name": "Ecoli_result"
  },
  "S_aureus": {
    "type": "string",
    "name": "S_aureus"
  },
  "B_cereus": {
    "type": "string",
    "name": "B_cereus"
  },
  "Salmonella": {
    "type": "string",
    "name": "Salmonella"
  },
  "Ecoli_1000_1": {
    "type": "string",
    "name": "Ecoli_1000_1"
  },
  "Ecoli_1000_2": {
    "type": "string",
    "name": "Ecoli_1000_2"
  },
  "Coliform_1000_1": {
    "type": "string",
    "name": "Coliform_1000_1"
  },
  "Coliform_1000_2": {
    "type": "string",
    "name": "Coliform_1000_2"
  },
  "55C_10000_1": {
    "type": "string",
    "name": "55C_10000_1"
  },
  "55C_10000_2": {
    "type": "string",
    "name": "55C_10000_2"
  },
  "35C_10000_1": {
    "type": "string",
    "name": "35C_10000_1"
  },
  "35C_10000_2": {
    "type": "string",
    "name": "35C_10000_2"
  },
  "Y_M_1000_1": {
    "type": "string",
    "name": "Y_M_1000_1"
  },
  "Y_M_1000_2": {
    "type": "string",
    "name": "Y_M_1000_2"
  },
  "no": {
    "type": "string",
    "name": "no"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "check1": {
    "type": "string",
    "name": "check1"
  },
  "check2": {
    "type": "string",
    "name": "check2"
  },
  "check3": {
    "type": "string",
    "name": "check3"
  },
  "check4": {
    "type": "string",
    "name": "check4"
  },
  "check5": {
    "type": "string",
    "name": "check5"
  },
  "check6": {
    "type": "string",
    "name": "check6"
  },
  "check7": {
    "type": "string",
    "name": "check7"
  },
  "check8": {
    "type": "string",
    "name": "check8"
  },
  "check9": {
    "type": "string",
    "name": "check9"
  },
  "check10": {
    "type": "string",
    "name": "check10"
  },
  "check11": {
    "type": "string",
    "name": "check11"
  },
  "check12": {
    "type": "string",
    "name": "check12"
  },
  "check13": {
    "type": "string",
    "name": "check13"
  },
  "check14": {
    "type": "string",
    "name": "check14"
  },
  "55C_100000_1": {
    "type": "string",
    "name": "55C_100000_1"
  },
  "55C_100000_2": {
    "type": "string",
    "name": "55C_100000_2"
  },
  "55C_1000000_1": {
    "type": "string",
    "name": "55C_1000000_1"
  },
  "55C_1000000_2": {
    "type": "string",
    "name": "55C_1000000_2"
  },
  "35C_100000_1": {
    "type": "string",
    "name": "35C_100000_1"
  },
  "35C_100000_2": {
    "type": "string",
    "name": "35C_100000_2"
  },
  "35C_1000000_1": {
    "type": "string",
    "name": "35C_1000000_1"
  },
  "35C_1000000_2": {
    "type": "string",
    "name": "35C_1000000_2"
  },
  "Y_M_10000_1": {
    "type": "string",
    "name": "Y_M_10000_1"
  },
  "Y_M_10000_2": {
    "type": "string",
    "name": "Y_M_10000_2"
  },
  "Y_M_100000_1": {
    "type": "string",
    "name": "Y_M_100000_1"
  },
  "Y_M_100000_2": {
    "type": "string",
    "name": "Y_M_100000_2"
  },
  "Y_M_1000000_1": {
    "type": "string",
    "name": "Y_M_1000000_1"
  },
  "Y_M_1000000_2": {
    "type": "string",
    "name": "Y_M_1000000_2"
  },
  "Coliform_10000_1": {
    "type": "string",
    "name": "Coliform_10000_1"
  },
  "Coliform_10000_2": {
    "type": "string",
    "name": "Coliform_10000_2"
  },
  "Coliform_100000_1": {
    "type": "string",
    "name": "Coliform_100000_1"
  },
  "Coliform_100000_2": {
    "type": "string",
    "name": "Coliform_100000_2"
  },
  "Coliform_1000000_1": {
    "type": "string",
    "name": "Coliform_1000000_1"
  },
  "Coliform_1000000_2": {
    "type": "string",
    "name": "Coliform_1000000_2"
  },
  "Ecoli_10000_1": {
    "type": "string",
    "name": "Ecoli_10000_1"
  },
  "Ecoli_10000_2": {
    "type": "string",
    "name": "Ecoli_10000_2"
  },
  "Ecoli_100000_1": {
    "type": "string",
    "name": "Ecoli_100000_1"
  },
  "Ecoli_100000_2": {
    "type": "string",
    "name": "Ecoli_100000_2"
  },
  "Ecoli_1000000_1": {
    "type": "string",
    "name": "Ecoli_1000000_1"
  },
  "Ecoli_1000000_2": {
    "type": "string",
    "name": "Ecoli_1000000_2"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Coliform_MPN_Result": {
    "type": "string",
    "name": "Coliform_MPN_Result"
  },
  "Ecoli_MPN_Result": {
    "type": "string",
    "name": "Ecoli_MPN_Result"
  },
  "check15": {
    "type": "string",
    "name": "check15"
  },
  "check16": {
    "type": "string",
    "name": "check16"
  },
  "check17": {
    "type": "string",
    "name": "check17"
  },
  "check18": {
    "type": "string",
    "name": "check18"
  },
  "check19": {
    "type": "string",
    "name": "check19"
  },
  "check20": {
    "type": "string",
    "name": "check20"
  },
  "TPC_10000000_1": {
    "type": "string",
    "name": "TPC_10000000_1"
  },
  "TPC_10000000_2": {
    "type": "string",
    "name": "TPC_10000000_2"
  },
  "TPC_100000000_1": {
    "type": "string",
    "name": "TPC_100000000_1"
  },
  "TPC_100000000_2": {
    "type": "string",
    "name": "TPC_100000000_2"
  },
  "TPC_1000000000_1": {
    "type": "string",
    "name": "TPC_1000000000_1"
  },
  "TPC_1000000000_2": {
    "type": "string",
    "name": "TPC_1000000000_2"
  },
  "Y_M_10000000_1": {
    "type": "string",
    "name": "Y_M_10000000_1"
  },
  "Y_M_10000000_2": {
    "type": "string",
    "name": "Y_M_10000000_2"
  },
  "Y_M_100000000_1": {
    "type": "string",
    "name": "Y_M_100000000_1"
  },
  "Y_M_100000000_2": {
    "type": "string",
    "name": "Y_M_100000000_2"
  },
  "Y_M_1000000000_1": {
    "type": "string",
    "name": "Y_M_1000000000_1"
  },
  "Y_M_1000000000_2": {
    "type": "string",
    "name": "Y_M_1000000000_2"
  },
  "35C_10000000_1": {
    "type": "string",
    "name": "35C_10000000_1"
  },
  "35C_10000000_2": {
    "type": "string",
    "name": "35C_10000000_2"
  },
  "35C_100000000_1": {
    "type": "string",
    "name": "35C_100000000_1"
  },
  "35C_100000000_2": {
    "type": "string",
    "name": "35C_100000000_2"
  },
  "35C_1000000000_1": {
    "type": "string",
    "name": "35C_1000000000_1"
  },
  "35C_1000000000_2": {
    "type": "string",
    "name": "35C_1000000000_2"
  },
  "55C_10000000_1": {
    "type": "string",
    "name": "55C_10000000_1"
  },
  "55C_10000000_2": {
    "type": "string",
    "name": "55C_10000000_2"
  },
  "55C_100000000_1": {
    "type": "string",
    "name": "55C_100000000_1"
  },
  "55C_100000000_2": {
    "type": "string",
    "name": "55C_100000000_2"
  },
  "55C_1000000000_1": {
    "type": "string",
    "name": "55C_1000000000_1"
  },
  "55C_1000000000_2": {
    "type": "string",
    "name": "55C_1000000000_2"
  },
  "Coliform_10000000_1": {
    "type": "string",
    "name": "Coliform_10000000_1"
  },
  "Coliform_10000000_2": {
    "type": "string",
    "name": "Coliform_10000000_2"
  },
  "Coliform_100000000_1": {
    "type": "string",
    "name": "Coliform_100000000_1"
  },
  "Coliform_100000000_2": {
    "type": "string",
    "name": "Coliform_100000000_2"
  },
  "Coliform_1000000000_1": {
    "type": "string",
    "name": "Coliform_1000000000_1"
  },
  "Coliform_1000000000_2": {
    "type": "string",
    "name": "Coliform_1000000000_2"
  },
  "Ecoli_10000000_1": {
    "type": "string",
    "name": "Ecoli_10000000_1"
  },
  "Ecoli_10000000_2": {
    "type": "string",
    "name": "Ecoli_10000000_2"
  },
  "Ecoli_100000000_1": {
    "type": "string",
    "name": "Ecoli_100000000_1"
  },
  "Ecoli_100000000_2": {
    "type": "string",
    "name": "Ecoli_100000000_2"
  },
  "Ecoli_1000000000_1": {
    "type": "string",
    "name": "Ecoli_1000000000_1"
  },
  "Ecoli_1000000000_2": {
    "type": "string",
    "name": "Ecoli_1000000000_2"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "other_1_1": {
    "type": "string",
    "name": "other_1_1"
  },
  "other_10_1": {
    "type": "string",
    "name": "other_10_1"
  },
  "other_100_1": {
    "type": "string",
    "name": "other_100_1"
  },
  "other_1000_1": {
    "type": "string",
    "name": "other_1000_1"
  },
  "other_10000_1": {
    "type": "string",
    "name": "other_10000_1"
  },
  "other_100000_1": {
    "type": "string",
    "name": "other_100000_1"
  },
  "other_1000000_1": {
    "type": "string",
    "name": "other_1000000_1"
  },
  "other_10000000_1": {
    "type": "string",
    "name": "other_10000000_1"
  },
  "other_100000000_1": {
    "type": "string",
    "name": "other_100000000_1"
  },
  "other_1000000000_1": {
    "type": "string",
    "name": "other_1000000000_1"
  },
  "other_1_2": {
    "type": "string",
    "name": "other_1_2"
  },
  "other_10_2": {
    "type": "string",
    "name": "other_10_2"
  },
  "other_100_2": {
    "type": "string",
    "name": "other_100_2"
  },
  "other_1000_2": {
    "type": "string",
    "name": "other_1000_2"
  },
  "other_10000_2": {
    "type": "string",
    "name": "other_10000_2"
  },
  "other_100000_2": {
    "type": "string",
    "name": "other_100000_2"
  },
  "other_1000000_2": {
    "type": "string",
    "name": "other_1000000_2"
  },
  "other_10000000_2": {
    "type": "string",
    "name": "other_10000000_2"
  },
  "other_100000000_2": {
    "type": "string",
    "name": "other_100000000_2"
  },
  "other_1000000000_2": {
    "type": "string",
    "name": "other_1000000000_2"
  },
  "other_Result": {
    "type": "string",
    "name": "other_Result"
  },
  "No": {
    "type": "string",
    "name": "No"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "State": {
    "type": "number",
    "name": "State"
  },
  "MaxState": {
    "type": "number",
    "name": "MaxState"
  },
  "IsLast": {
    "type": "number",
    "name": "IsLast"
  },
  "IsFirst": {
    "type": "number",
    "name": "IsFirst"
  }
}
```

</details>

## `ChangePassword`

**SQL:** [ChangePassword](<ChangePassword.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** เปลี่ยน password ใน `tb_app1_login` ตาม user
- **พารามิเตอร์:** `useracc`, `cpsw`
- **ผลลัพธ์:** ถ้า `@@ROWCOUNT=0` คืนข้อความไม่พบผู้ใช้/status 201 มิฉะนั้นคืนเปลี่ยนสำเร็จ/status 200
- **ข้อควรระวังด้านความปลอดภัย:** เขียนค่า password ที่ส่งมาโดยตรง; ไม่มีหลักฐานการตรวจ current password, hash หรือ policy ใน query นี้ ควรแก้ร่วมกับ flow authentication ไม่ควรแก้เฉพาะ UI

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `useracc`, `cpsw`
- ตารางที่อ้างจากคำสั่ง SQL: `tb_app1_login`
- หน้าจอที่อ้าง query ID: [/changepassword](../../changepassword/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "message": {
    "type": "string",
    "name": "message"
  },
  "status": {
    "type": "number",
    "name": "status"
  },
  "updated": {
    "type": "boolean",
    "name": "updated"
  }
}
```

</details>

## `Create Sampling`

**SQL:** [Create Sampling](<Create Sampling.sql>) · **Function ใน Builder:** `create`

- **หน้าที่:** สร้าง sampling หลายรายการตามข้อมูลที่ผู้ใช้เลือก และจัดการคิวการสร้าง
- **การทำงาน:** รับ MicroID, Department, Type, Item, Selection, Sample, State, Name, Machine, Batch, เวลา/วันที่ และตัวเลือก tank เพิ่มเติม; ใช้ split/ตัวเลขลำดับเพื่อแตกค่าเป็นหลายแถว; อ่าน master data/`Sum_data_type`; ใช้ transaction กับ `Micro_Queue` และ `Micro Sampling`; มี validation/rollback เมื่อข้อมูลไม่ผ่าน
- **ข้อควรระวัง:** เป็น write query หลายตารางและมี branch ตามข้อมูลรายการ; ตรวจจำนวนแถว/การสร้างซ้ำและความสอดคล้องของ queue เมื่อแก้

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (19): `MicroID`, `Department`, `Type`, `Item`, `Selection`, `Sample`, `State`, `Name`, `Machine`, `Batch`, `SidelTank3Extra`, `SidelTank4Extra`, `SidelTank5Extra`, `SidelTank10Extra`, `SidelTank11Extra`, `SidelTank12Extra`, `Time`, `Date`, `SampID`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`, `Micro Sampling`, `Sum_data_type`, `Micro_Queue`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)
- Bindings ใน SQL ที่ไม่พบในรายการตั้งค่า: `Name`

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Queue_ID": {
    "type": "string",
    "name": "Queue_ID"
  },
  "Queue_No": {
    "type": "string",
    "name": "Queue_No"
  },
  "Queue_Date": {
    "type": "string",
    "name": "Queue_Date"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Pending_Count": {
    "type": "string",
    "name": "Pending_Count"
  },
  "FirstSamplingID": {
    "type": "string",
    "name": "FirstSamplingID"
  },
  "LastSamplingID": {
    "type": "string",
    "name": "LastSamplingID"
  },
  "Result": {
    "type": "string",
    "name": "Result"
  },
  "created": {
    "type": "boolean",
    "name": "created"
  }
}
```

</details>

## `Create_Inprocess`

**SQL:** [Create_Inprocess](<Create_Inprocess.sql>) · **Function ใน Builder:** `create`

- **หน้าที่:** สร้างรายการ Micro Sampling สำหรับงาน Inprocess
- **การทำงาน:** แยกค่าที่เลือกซึ่งอาจส่งมาเป็น comma-separated mapping, map Department/Type/Name/Tank จากข้อมูล Inprocess และสร้างงานใน queue/รายการ sampling ภายใน transaction
- **พารามิเตอร์:** Department, Type, Name, Machine, Tank, Page, Date, Time, Batch
- **ข้อควรระวัง:** ชื่อ SQL ระบุว่าแก้ mapping และ running number ระดับ queue; ทดสอบการชนกันของหมายเลขเมื่อมีผู้ใช้สร้างพร้อมกัน

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (9): `Department`, `Type`, `Name`, `Machine`, `Tank`, `Page`, `Date`, `Time`, `Batch`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`, `Micro_Queue`, `Inprocess`
- หน้าจอที่อ้าง query ID: [/create-inprocess](../../create-inprocess/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Type_NO": {
    "type": "string",
    "name": "Type_NO"
  },
  "Name": {
    "type": "string",
    "name": "Name"
  },
  "Machine": {
    "type": "string",
    "name": "Machine"
  },
  "Tank": {
    "type": "string",
    "name": "Tank"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch": {
    "type": "string",
    "name": "Batch"
  },
  "Page": {
    "type": "string",
    "name": "Page"
  },
  "Queue_ID": {
    "type": "string",
    "name": "Queue_ID"
  },
  "Queue_No": {
    "type": "string",
    "name": "Queue_No"
  },
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "created": {
    "type": "boolean",
    "name": "created"
  }
}
```

</details>

## `Create_Raw_Milk`

**SQL:** [Create_Raw_Milk](<Create_Raw_Milk.sql>) · **Function ใน Builder:** `create`

- **หน้าที่:** สร้างชุดงานตรวจน้ำนมดิบและผลที่เกี่ยวข้อง
- **การทำงาน:** รับ MicroID, Batch, remark และ SamplingID; transaction ทำการสร้าง/เชื่อมข้อมูลระหว่าง `Micro Sampling`, `Sampling RawMilk`, `Micro`, `Sampling_Result` พร้อมตรวจเงื่อนไข/rollback
- **ข้อควรระวัง:** เขียนหลายตาราง; ตรวจ idempotency และ rollback เมื่อ insert ขั้นใดขั้นหนึ่งล้มเหลว

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (4): `MicroID`, `Batch`, `remark`, `SamplingID`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling RawMilk`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/create-rawmilk-microid](../../create-rawmilk-microid/README.md), [/add-rammilk](../../add-rammilk/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "created": {
    "type": "boolean",
    "name": "created"
  },
  "TotalSampling": {
    "type": "string",
    "name": "TotalSampling"
  }
}
```

</details>

## `DailyReport_Microbiological 1`

**SQL:** [DailyReport_Microbiological 1](<DailyReport_Microbiological 1.sql>) · **Function ใน Builder:** `read`

อ่าน Micro ตาม Micro; LEFT JOIN Employee.code กับ Submit_by, received_by, Inspector, Interpretor และ Sup เพื่อคืนชื่อผู้ปฏิบัติงาน. รวม Internal_Quality สูงสุด 15 รายการเรียง id เป็น JSON โดยรวม Media/Equipment/Other เป็น Item. OUTER APPLY เลือก MPN ตัวแรกเรียง SamplingID, No แบบ DECIMAL, id จาก Micro Sampling JOIN Sampling_Result.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `Micro`
- ตารางที่อ้างจากคำสั่ง SQL: `Internal_Quality`, `Micro`, `Micro Sampling`, `Sampling_Result`, `Employee`
- หน้าจอที่อ้าง query ID: [/report/:microid](../../report/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "number",
    "name": "id"
  },
  "inprocess": {
    "type": "boolean",
    "name": "inprocess"
  },
  "inprocess_remark": {
    "type": "string",
    "name": "inprocess_remark"
  },
  "raw_material": {
    "type": "boolean",
    "name": "raw_material"
  },
  "raw_milk": {
    "type": "boolean",
    "name": "raw_milk"
  },
  "Hot_water": {
    "type": "boolean",
    "name": "Hot_water"
  },
  "water": {
    "type": "boolean",
    "name": "water"
  },
  "Lye": {
    "type": "boolean",
    "name": "Lye"
  },
  "air_borne": {
    "type": "boolean",
    "name": "air_borne"
  },
  "swab_test": {
    "type": "boolean",
    "name": "swab_test"
  },
  "Other_specify_for_detail": {
    "type": "boolean",
    "name": "Other_specify_for_detail"
  },
  "Other_remark_for_detail": {
    "type": "string",
    "name": "Other_remark_for_detail"
  },
  "TPC": {
    "type": "boolean",
    "name": "TPC"
  },
  "Y_M": {
    "type": "boolean",
    "name": "Y_M"
  },
  "Mesophilic_spore": {
    "type": "boolean",
    "name": "Mesophilic_spore"
  },
  "Other_Specify_for_type": {
    "type": "boolean",
    "name": "Other_Specify_for_type"
  },
  "Other_remark_for_type": {
    "type": "string",
    "name": "Other_remark_for_type"
  },
  "room_temp": {
    "type": "boolean",
    "name": "room_temp"
  },
  "temperature0_8": {
    "type": "boolean",
    "name": "temperature0_8"
  },
  "Freezer": {
    "type": "boolean",
    "name": "Freezer"
  },
  "Other_Specify_for_sample": {
    "type": "boolean",
    "name": "Other_Specify_for_sample"
  },
  "Other_remark_for_sample": {
    "type": "string",
    "name": "Other_remark_for_sample"
  },
  "Submit_by": {
    "type": "string",
    "name": "Submit_by"
  },
  "Submit_Date": {
    "type": "string",
    "name": "Submit_Date"
  },
  "Complete": {
    "type": "boolean",
    "name": "Complete"
  },
  "Incomplete": {
    "type": "boolean",
    "name": "Incomplete"
  },
  "Incomplete_remark": {
    "type": "string",
    "name": "Incomplete_remark"
  },
  "detail_complete": {
    "type": "boolean",
    "name": "detail_complete"
  },
  "detail_incomplete_remark": {
    "type": "string",
    "name": "detail_incomplete_remark"
  },
  "detail_incomplete": {
    "type": "boolean",
    "name": "detail_incomplete"
  },
  "Normal": {
    "type": "boolean",
    "name": "Normal"
  },
  "Abnormal_Specify": {
    "type": "boolean",
    "name": "Abnormal_Specify"
  },
  "Abnormal_Specify_remark": {
    "type": "string",
    "name": "Abnormal_Specify_remark"
  },
  "Action_on_ploblems": {
    "type": "string",
    "name": "Action_on_ploblems"
  },
  "received_by": {
    "type": "string",
    "name": "received_by"
  },
  "recevived_date": {
    "type": "string",
    "name": "recevived_date"
  },
  "Check_date1": {
    "type": "string",
    "name": "Check_date1"
  },
  "NO_page": {
    "type": "string",
    "name": "NO_page"
  },
  "Inspector": {
    "type": "string",
    "name": "Inspector"
  },
  "Interpretor": {
    "type": "string",
    "name": "Interpretor"
  },
  "Interpretor_date": {
    "type": "string",
    "name": "Interpretor_date"
  },
  "Sup": {
    "type": "string",
    "name": "Sup"
  },
  "Sup_date": {
    "type": "string",
    "name": "Sup_date"
  },
  "Coliform": {
    "type": "boolean",
    "name": "Coliform"
  },
  "Ecoli": {
    "type": "boolean",
    "name": "Ecoli"
  },
  "Salmonella": {
    "type": "boolean",
    "name": "Salmonella"
  },
  "Staphylococcus": {
    "type": "boolean",
    "name": "Staphylococcus"
  },
  "Bacillus": {
    "type": "boolean",
    "name": "Bacillus"
  },
  "Thermophillic_spore": {
    "type": "boolean",
    "name": "Thermophillic_spore"
  },
  "Coliform_unit": {
    "type": "string",
    "name": "Coliform_unit"
  },
  "Ecoli_unit": {
    "type": "string",
    "name": "Ecoli_unit"
  },
  "Salmonella_unit": {
    "type": "string",
    "name": "Salmonella_unit"
  },
  "Staphylococcus_unit": {
    "type": "string",
    "name": "Staphylococcus_unit"
  },
  "Bacillus_unit": {
    "type": "string",
    "name": "Bacillus_unit"
  },
  "Amount_sample": {
    "type": "string",
    "name": "Amount_sample"
  },
  "Check_date2": {
    "type": "string",
    "name": "Check_date2"
  },
  "date": {
    "type": "string",
    "name": "date"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Inspector_date": {
    "type": "string",
    "name": "Inspector_date"
  },
  "Submit_by_Name": {
    "type": "string",
    "name": "Submit_by_Name"
  },
  "received_by_Name": {
    "type": "string",
    "name": "received_by_Name"
  },
  "Inspector_Name": {
    "type": "string",
    "name": "Inspector_Name"
  },
  "Interpretor_Name": {
    "type": "string",
    "name": "Interpretor_Name"
  },
  "Sup_Name": {
    "type": "string",
    "name": "Sup_Name"
  },
  "MPN_SamplingID": {
    "type": "string",
    "name": "MPN_SamplingID"
  },
  "MPN_No": {
    "type": "string",
    "name": "MPN_No"
  },
  "Coliform_MPN": {
    "type": "string",
    "name": "Coliform_MPN"
  },
  "Ecoli_MPN": {
    "type": "string",
    "name": "Ecoli_MPN"
  },
  "InternalQuality": {
    "type": "string",
    "name": "InternalQuality"
  },
  "IQ_id": {
    "type": "number",
    "name": "IQ_id"
  },
  "IQ_MicroID": {
    "type": "string",
    "name": "IQ_MicroID"
  },
  "IQ_No_Display": {
    "type": "string",
    "name": "IQ_No_Display"
  },
  "IQ_Media": {
    "type": "string",
    "name": "IQ_Media"
  },
  "IQ_Equipment": {
    "type": "string",
    "name": "IQ_Equipment"
  },
  "IQ_Batch": {
    "type": "string",
    "name": "IQ_Batch"
  },
  "IQ_Pass": {
    "type": "boolean",
    "name": "IQ_Pass"
  },
  "IQ_No_pass": {
    "type": "boolean",
    "name": "IQ_No_pass"
  },
  "IQ_Positive": {
    "type": "boolean",
    "name": "IQ_Positive"
  },
  "IQ_Negative": {
    "type": "boolean",
    "name": "IQ_Negative"
  },
  "IQ_Other": {
    "type": "string",
    "name": "IQ_Other"
  },
  "IQ_RowNo": {
    "type": "string",
    "name": "IQ_RowNo"
  },
  "No": {
    "type": "string",
    "name": "No"
  },
  "Media": {
    "type": "string",
    "name": "Media"
  },
  "Batch": {
    "type": "string",
    "name": "Batch"
  },
  "Pass": {
    "type": "string",
    "name": "Pass"
  },
  "No_pass": {
    "type": "string",
    "name": "No_pass"
  },
  "Positive": {
    "type": "string",
    "name": "Positive"
  },
  "Negative": {
    "type": "string",
    "name": "Negative"
  },
  "Other": {
    "type": "string",
    "name": "Other"
  },
  "Equipment": {
    "type": "string",
    "name": "Equipment"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "SamplingResultID": {
    "type": "number",
    "name": "SamplingResultID"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "no": {
    "type": "string",
    "name": "no"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch_Lot_no": {
    "type": "string",
    "name": "Batch_Lot_no"
  },
  "FieldName": {
    "type": "string",
    "name": "FieldName"
  },
  "Value": {
    "type": "string",
    "name": "Value"
  },
  "rn": {
    "type": "string",
    "name": "rn"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "Section": {
    "type": "string",
    "name": "Section"
  },
  "Sample": {
    "type": "string",
    "name": "Sample"
  },
  "Micro_inprocess": {
    "type": "string",
    "name": "Micro_inprocess"
  },
  "Micro_inprocess_remark": {
    "type": "string",
    "name": "Micro_inprocess_remark"
  },
  "Micro_Samp": {
    "type": "string",
    "name": "Micro_Samp"
  },
  "Micro_Samo": {
    "type": "string",
    "name": "Micro_Samo"
  },
  "Selection": {
    "type": "string",
    "name": "Selection"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Section_NO": {
    "type": "string",
    "name": "Section_NO"
  }
}
```

</details>

## `DailyReport_Result`

**SQL:** [DailyReport_Result](<DailyReport_Result.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** ดึงผล Micro ในช่วงลำดับ `No` ที่ระบุสำหรับ MicroID
- **การทำงาน:** รับ `Micro`, `StartNo`, `EndNo`; แปลง suffix ของ `No` เช่น `6.1`, `6.2`, `6.10` เป็นลำดับเลขเพื่อกรองช่วง และเพิ่ม Item จาก `Sampling_Result` ในผลรายงาน
- **ตาราง:** `Micro Sampling`, `Sampling_Result`
- **ข้อควรระวัง:** มีการตรวจ/แจ้งกรณีช่วงไม่ถูกต้อง; ทดสอบกรณีเลข suffix มากกว่า 9 เพื่อป้องกันเรียง `6.10` ก่อน `6.2`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (3): `StartNo`, `EndNo`, `Micro`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/report/:microid](../../report/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "SamplingResultID": {
    "type": "string",
    "name": "SamplingResultID"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "No": {
    "type": "string",
    "name": "No"
  },
  "No2": {
    "type": "string",
    "name": "No2"
  },
  "NoIndex": {
    "type": "string",
    "name": "NoIndex"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch_Lot_no": {
    "type": "string",
    "name": "Batch_Lot_no"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  },
  "Y_M_Result": {
    "type": "string",
    "name": "Y_M_Result"
  },
  "35C_Result": {
    "type": "string",
    "name": "35C_Result"
  },
  "55C_Result": {
    "type": "string",
    "name": "55C_Result"
  },
  "Coliform_MPN": {
    "type": "string",
    "name": "Coliform_MPN"
  },
  "Coliform_Result": {
    "type": "string",
    "name": "Coliform_Result"
  },
  "Ecoli_MPN": {
    "type": "string",
    "name": "Ecoli_MPN"
  },
  "Ecoli_result": {
    "type": "string",
    "name": "Ecoli_result"
  },
  "S_aureus": {
    "type": "string",
    "name": "S_aureus"
  },
  "B_cereus": {
    "type": "string",
    "name": "B_cereus"
  },
  "Salmonella": {
    "type": "string",
    "name": "Salmonella"
  },
  "Other_Result": {
    "type": "string",
    "name": "Other_Result"
  },
  "SamplingRowNo": {
    "type": "string",
    "name": "SamplingRowNo"
  },
  "TPC": {
    "type": "string",
    "name": "TPC"
  },
  "Y_M": {
    "type": "string",
    "name": "Y_M"
  },
  "35C": {
    "type": "string",
    "name": "35C"
  },
  "55C": {
    "type": "string",
    "name": "55C"
  },
  "Coliform": {
    "type": "string",
    "name": "Coliform"
  },
  "Ecoli": {
    "type": "string",
    "name": "Ecoli"
  },
  "no": {
    "type": "string",
    "name": "no"
  },
  "ResultValue": {
    "type": "string",
    "name": "ResultValue"
  },
  "TPC_1_1": {
    "type": "string",
    "name": "TPC_1_1"
  },
  "TPC_1_2": {
    "type": "string",
    "name": "TPC_1_2"
  },
  "TPC_10_1": {
    "type": "string",
    "name": "TPC_10_1"
  },
  "TPC_10_2": {
    "type": "string",
    "name": "TPC_10_2"
  },
  "TPC_100_1": {
    "type": "string",
    "name": "TPC_100_1"
  },
  "TPC_100_2": {
    "type": "string",
    "name": "TPC_100_2"
  },
  "TPC_1000_1": {
    "type": "string",
    "name": "TPC_1000_1"
  },
  "TPC_1000_2": {
    "type": "string",
    "name": "TPC_1000_2"
  },
  "TPC_10000_1": {
    "type": "string",
    "name": "TPC_10000_1"
  },
  "TPC_10000_2": {
    "type": "string",
    "name": "TPC_10000_2"
  },
  "Y_M_1_1": {
    "type": "string",
    "name": "Y_M_1_1"
  },
  "Y_M_1_2": {
    "type": "string",
    "name": "Y_M_1_2"
  },
  "Y_M_10_1": {
    "type": "string",
    "name": "Y_M_10_1"
  },
  "Y_M_10_2": {
    "type": "string",
    "name": "Y_M_10_2"
  },
  "Y_M_100_1": {
    "type": "string",
    "name": "Y_M_100_1"
  },
  "Y_M_100_2": {
    "type": "string",
    "name": "Y_M_100_2"
  },
  "35C_1_1": {
    "type": "string",
    "name": "35C_1_1"
  },
  "35C_1_2": {
    "type": "string",
    "name": "35C_1_2"
  },
  "35C_10_1": {
    "type": "string",
    "name": "35C_10_1"
  },
  "35C_10_2": {
    "type": "string",
    "name": "35C_10_2"
  },
  "35C_100_1": {
    "type": "string",
    "name": "35C_100_1"
  },
  "35C_100_2": {
    "type": "string",
    "name": "35C_100_2"
  },
  "35C_1000_1": {
    "type": "string",
    "name": "35C_1000_1"
  },
  "35C_1000_2": {
    "type": "string",
    "name": "35C_1000_2"
  },
  "55C_1_1": {
    "type": "string",
    "name": "55C_1_1"
  },
  "55C_1_2": {
    "type": "string",
    "name": "55C_1_2"
  },
  "55C_10_1": {
    "type": "string",
    "name": "55C_10_1"
  },
  "55C_10_2": {
    "type": "string",
    "name": "55C_10_2"
  },
  "55C_100_1": {
    "type": "string",
    "name": "55C_100_1"
  },
  "55C_100_2": {
    "type": "string",
    "name": "55C_100_2"
  },
  "55C_1000_1": {
    "type": "string",
    "name": "55C_1000_1"
  },
  "55C_1000_2": {
    "type": "string",
    "name": "55C_1000_2"
  },
  "Coliform_1_1": {
    "type": "string",
    "name": "Coliform_1_1"
  },
  "Coliform_1_2": {
    "type": "string",
    "name": "Coliform_1_2"
  },
  "Coliform_10_1": {
    "type": "string",
    "name": "Coliform_10_1"
  },
  "Coliform_10_2": {
    "type": "string",
    "name": "Coliform_10_2"
  },
  "Coliform_100_1": {
    "type": "string",
    "name": "Coliform_100_1"
  },
  "Coliform_100_2": {
    "type": "string",
    "name": "Coliform_100_2"
  },
  "Ecoli_1_1": {
    "type": "string",
    "name": "Ecoli_1_1"
  },
  "Ecoli_1_2": {
    "type": "string",
    "name": "Ecoli_1_2"
  },
  "Ecoli_10_1": {
    "type": "string",
    "name": "Ecoli_10_1"
  },
  "Ecoli_10_2": {
    "type": "string",
    "name": "Ecoli_10_2"
  },
  "Ecoli_100_1": {
    "type": "string",
    "name": "Ecoli_100_1"
  },
  "Ecoli_100_2": {
    "type": "string",
    "name": "Ecoli_100_2"
  },
  "ReportNo": {
    "type": "string",
    "name": "ReportNo"
  },
  "id": {
    "type": "number",
    "name": "id"
  },
  "TPC_100000_1": {
    "type": "string",
    "name": "TPC_100000_1"
  },
  "TPC_100000_2": {
    "type": "string",
    "name": "TPC_100000_2"
  },
  "TPC_1000000_1": {
    "type": "string",
    "name": "TPC_1000000_1"
  },
  "TPC_1000000_2": {
    "type": "string",
    "name": "TPC_1000000_2"
  },
  "Ecoli_1000_1": {
    "type": "string",
    "name": "Ecoli_1000_1"
  },
  "Ecoli_1000_2": {
    "type": "string",
    "name": "Ecoli_1000_2"
  },
  "Coliform_1000_1": {
    "type": "string",
    "name": "Coliform_1000_1"
  },
  "Coliform_1000_2": {
    "type": "string",
    "name": "Coliform_1000_2"
  },
  "55C_10000_1": {
    "type": "string",
    "name": "55C_10000_1"
  },
  "55C_10000_2": {
    "type": "string",
    "name": "55C_10000_2"
  },
  "35C_10000_1": {
    "type": "string",
    "name": "35C_10000_1"
  },
  "35C_10000_2": {
    "type": "string",
    "name": "35C_10000_2"
  },
  "Y_M_1000_1": {
    "type": "string",
    "name": "Y_M_1000_1"
  },
  "Y_M_1000_2": {
    "type": "string",
    "name": "Y_M_1000_2"
  },
  "check1": {
    "type": "string",
    "name": "check1"
  },
  "check2": {
    "type": "string",
    "name": "check2"
  },
  "check3": {
    "type": "string",
    "name": "check3"
  },
  "check4": {
    "type": "string",
    "name": "check4"
  },
  "check5": {
    "type": "string",
    "name": "check5"
  },
  "check6": {
    "type": "string",
    "name": "check6"
  },
  "check7": {
    "type": "string",
    "name": "check7"
  },
  "check8": {
    "type": "string",
    "name": "check8"
  },
  "check9": {
    "type": "string",
    "name": "check9"
  },
  "check10": {
    "type": "string",
    "name": "check10"
  },
  "check11": {
    "type": "string",
    "name": "check11"
  },
  "check12": {
    "type": "string",
    "name": "check12"
  },
  "check13": {
    "type": "string",
    "name": "check13"
  },
  "check14": {
    "type": "string",
    "name": "check14"
  },
  "55C_100000_1": {
    "type": "string",
    "name": "55C_100000_1"
  },
  "55C_100000_2": {
    "type": "string",
    "name": "55C_100000_2"
  },
  "55C_1000000_1": {
    "type": "string",
    "name": "55C_1000000_1"
  },
  "55C_1000000_2": {
    "type": "string",
    "name": "55C_1000000_2"
  },
  "35C_100000_1": {
    "type": "string",
    "name": "35C_100000_1"
  },
  "35C_100000_2": {
    "type": "string",
    "name": "35C_100000_2"
  },
  "35C_1000000_1": {
    "type": "string",
    "name": "35C_1000000_1"
  },
  "35C_1000000_2": {
    "type": "string",
    "name": "35C_1000000_2"
  },
  "Y_M_10000_1": {
    "type": "string",
    "name": "Y_M_10000_1"
  },
  "Y_M_10000_2": {
    "type": "string",
    "name": "Y_M_10000_2"
  },
  "Y_M_100000_1": {
    "type": "string",
    "name": "Y_M_100000_1"
  },
  "Y_M_100000_2": {
    "type": "string",
    "name": "Y_M_100000_2"
  },
  "Y_M_1000000_1": {
    "type": "string",
    "name": "Y_M_1000000_1"
  },
  "Y_M_1000000_2": {
    "type": "string",
    "name": "Y_M_1000000_2"
  },
  "Coliform_10000_1": {
    "type": "string",
    "name": "Coliform_10000_1"
  },
  "Coliform_10000_2": {
    "type": "string",
    "name": "Coliform_10000_2"
  },
  "Coliform_100000_1": {
    "type": "string",
    "name": "Coliform_100000_1"
  },
  "Coliform_100000_2": {
    "type": "string",
    "name": "Coliform_100000_2"
  },
  "Coliform_1000000_1": {
    "type": "string",
    "name": "Coliform_1000000_1"
  },
  "Coliform_1000000_2": {
    "type": "string",
    "name": "Coliform_1000000_2"
  },
  "Ecoli_10000_1": {
    "type": "string",
    "name": "Ecoli_10000_1"
  },
  "Ecoli_10000_2": {
    "type": "string",
    "name": "Ecoli_10000_2"
  },
  "Ecoli_100000_1": {
    "type": "string",
    "name": "Ecoli_100000_1"
  },
  "Ecoli_100000_2": {
    "type": "string",
    "name": "Ecoli_100000_2"
  },
  "Ecoli_1000000_1": {
    "type": "string",
    "name": "Ecoli_1000000_1"
  },
  "Ecoli_1000000_2": {
    "type": "string",
    "name": "Ecoli_1000000_2"
  },
  "Coliform_MPN_Result": {
    "type": "string",
    "name": "Coliform_MPN_Result"
  },
  "Ecoli_MPN_Result": {
    "type": "string",
    "name": "Ecoli_MPN_Result"
  },
  "RowNo": {
    "type": "string",
    "name": "RowNo"
  },
  "FieldName": {
    "type": "string",
    "name": "FieldName"
  },
  "Value": {
    "type": "string",
    "name": "Value"
  }
}
```

</details>

## `Delect_Micro&Sampling`

**SQL:** [Delect_Micro&Sampling](<Delect_Micro&Sampling.sql>) · **Function ใน Builder:** `delete`

ลบข้อมูล sampling/result ที่สัมพันธ์กับ `MicroID` โดยเริ่ม transaction และใช้ `DELETE` กับ `Sampling_Result`, `Micro Sampling`, `Micro` ตามลำดับ/เงื่อนไขใน SQL; มี rollback เมื่อผิดพลาด

> ชื่อนี้สะกด Delect ใน Builder. ตรวจ foreign key, cascade และ retention policy ก่อนเรียกใช้ เพราะเป็นการลบข้อมูลจริง

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `MicroID`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/micro-table](../../micro-table/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Deleted_Sampling_Result": {
    "type": "number",
    "name": "Deleted_Sampling_Result"
  },
  "Deleted_Micro_Sampling": {
    "type": "number",
    "name": "Deleted_Micro_Sampling"
  },
  "Deleted_Micro": {
    "type": "number",
    "name": "Deleted_Micro"
  },
  "Result": {
    "type": "string",
    "name": "Result"
  }
}
```

</details>

## `Department_Options`

**SQL:** [Department_Options](<Department_Options.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** คืนรายการ Department ที่ไม่ซ้ำและ Department_NO จาก `All_plant_Data`
- **การเรียง:** `ORDER BY Department`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (0): ไม่มี
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  }
}
```

</details>

## `Genarate_Inprocess`

**SQL:** [Genarate_Inprocess](<Genarate_Inprocess.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** สร้าง preview รายการ/รหัส sampling สำหรับ Inprocess โดยยังเป็น query อ่านข้อมูล
- **การทำงาน:** รับ Department, Type, Name, Date; แยกค่าที่เลือก, map Department/Type/NO จาก Inprocess และสร้างรายการ preview พร้อมหมายเลขลำดับ
- **ตาราง:** `Inprocess` และข้อมูล mapping ที่ประกอบใน CTE

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (4): `Department`, `Type`, `Name`, `Date`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`, `Inprocess`
- หน้าจอที่อ้าง query ID: [/create-inprocess](../../create-inprocess/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "RunningNo": {
    "type": "string",
    "name": "RunningNo"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Type_NO": {
    "type": "string",
    "name": "Type_NO"
  },
  "Name": {
    "type": "string",
    "name": "Name"
  },
  "SampleDate": {
    "type": "string",
    "name": "SampleDate"
  },
  "dep": {
    "type": "string",
    "name": "dep"
  },
  "machine": {
    "type": "string",
    "name": "machine"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "Section_NO": {
    "type": "string",
    "name": "Section_NO"
  }
}
```

</details>

## `Genarate_MicroID`

**SQL:** [Genarate_MicroID](<Genarate_MicroID.sql>) · **Function ใน Builder:** `read`

รับ dep, selection, item, Date; หา Department_NO/Section_NO จาก All_Plant_Data. ถ้าแผนกมี MicroID ในวันนั้นแล้วใช้ running เดิม มิฉะนั้นใช้ running สูงสุดของวัน +1. คืน SamplingID ในรูป MICRO-YYYYMMDD-Department_NO-NN พร้อม RunningNo, Department_NO, Selection, SampleDate. เป็น preview SELECT ยังไม่จองเลขในฐานข้อมูล.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (4): `dep`, `selection`, `item`, `Date`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`, `Micro Sampling`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "RunningNo": {
    "type": "number",
    "name": "RunningNo"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Selection": {
    "type": "string",
    "name": "Selection"
  },
  "SampleDate": {
    "type": "string",
    "name": "SampleDate"
  },
  "Section_NO": {
    "type": "string",
    "name": "Section_NO"
  }
}
```

</details>

## `Genarate_Sampling`

**SQL:** [Genarate_Sampling](<Genarate_Sampling.sql>) · **Function ใน Builder:** `read`

รับ dep, machine, item, Date; ถ้าค่าไม่ครบหรือไม่พบ Department_NO/Section_NO คืน SamplingID/RunningNo เป็น NULL. หา running สูงสุดของแผนกในวันนั้น +1 และคืน QSM-YYYYMMDD-Department_NOSection_NO-NN พร้อมข้อมูลต้นทาง. เป็น preview SELECT; เลขท้ายถูกจัดสองหลัก.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (4): `dep`, `machine`, `item`, `Date`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`, `Micro Sampling`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "RunningNo": {
    "type": "string",
    "name": "RunningNo"
  },
  "dep": {
    "type": "string",
    "name": "dep"
  },
  "machine": {
    "type": "string",
    "name": "machine"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "SampleDate": {
    "type": "string",
    "name": "SampleDate"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Section_NO": {
    "type": "string",
    "name": "Section_NO"
  }
}
```

</details>

## `Get_All_Type_Machine_Option`

**SQL:** [Get_All_Type_Machine_Option](<Get_All_Type_Machine_Option.sql>) · **Function ใน Builder:** `read`

อ่าน Type และแยก Machine ที่คั่นด้วย comma ด้วย CROSS APPLY STRING_SPLIT จาก Sum_data_type; trim ค่า ตัด Type/Machine ที่ว่าง คืนคู่ที่ไม่ซ้ำและเรียงตาม Type, Machine.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (0): ไม่มี
- ตารางที่อ้างจากคำสั่ง SQL: `Sum_data_type`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Machine": {
    "type": "string",
    "name": "Machine"
  }
}
```

</details>

## `Item_Options`

**SQL:** [Item_Options](<Item_Options.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** คืน Item ที่ไม่ซ้ำสำหรับ Department ที่เลือกจาก `All_plant_Data`
- **พารามิเตอร์:** `Department`
- **การเรียง:** `ORDER BY Item`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `Department`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Item": {
    "type": "string",
    "name": "Item"
  }
}
```

</details>

## `Login`

**SQL:** [Login](<Login.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** ค้นบัญชีใน `tb_app1_login` ด้วย user และ password ที่ส่งมา
- **พารามิเตอร์:** `UserAC`, `psw`
- **ข้อควรระวังด้านความปลอดภัย:** SQL เปรียบเทียบ `[password]` โดยตรงกับ input ซึ่งบ่งชี้ว่ารหัสผ่านอาจถูกเก็บ/ตรวจแบบ plain text หรือไม่ใช้ password hash ใน query นี้ ควรย้ายการยืนยันตัวตนไปยังระบบ auth ที่เก็บ hash แบบ salted และไม่ส่ง password เข้า query log; อย่าใช้ query นี้เป็นแบบอย่างสำหรับระบบใหม่

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `UserAC`, `psw`
- ตารางที่อ้างจากคำสั่ง SQL: `tb_app1_login`
- หน้าจอที่อ้าง query ID: [/login](../../login/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "number",
    "name": "id"
  },
  "user": {
    "type": "string",
    "name": "user"
  },
  "password": {
    "type": "string",
    "name": "password"
  },
  "fullname": {
    "type": "string",
    "name": "fullname"
  },
  "Plant": {
    "type": "string",
    "name": "Plant"
  }
}
```

</details>

## `MicroID_Table`

**SQL:** [MicroID_Table](<MicroID_Table.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** ดึงรายการ MicroID/ข้อมูลสำหรับตารางเลือก โดยกรองวันที่และ Department
- **การทำงาน:** รับ `Date`, `Department`; จัดรูป `Submit_Date` เป็น `DD/MM/YYYY HH:mm:ss` และ Date เป็น `DD/MM/YYYY`; ตัดรายการซ้ำ
- **ตาราง:** `Micro`, `Micro Sampling`
- **ข้อควรระวัง:** การแปลงวันที่เพื่อแสดงผลอาจกระทบการใช้ index/เขตเวลา; ตรวจ locale และ timezone ที่คาดหวัง

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `Date`, `Department`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`
- หน้าจอที่อ้าง query ID: [/micro-table](../../micro-table/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "No_page": {
    "type": "string",
    "name": "No_page"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Stu": {
    "type": "string",
    "name": "Stu"
  },
  "Submit_Date": {
    "type": "string",
    "name": "Submit_Date"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "detail": {
    "type": "string",
    "name": "detail"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "Selection": {
    "type": "string",
    "name": "Selection"
  },
  "Sample": {
    "type": "string",
    "name": "Sample"
  },
  "Batch": {
    "type": "string",
    "name": "Batch"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "State": {
    "type": "string",
    "name": "State"
  },
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Name": {
    "type": "string",
    "name": "Name"
  }
}
```

</details>

## `Pull_Result`

**SQL:** [Pull_Result](<Pull_Result.sql>) · **Function ใน Builder:** `read`

คืน SR.* พร้อม MicroID, Sampling_Batch, Batch_Lot_No และหน่วยทดสอบจาก Micro. Join Sampling_Result.SampID = Micro Sampling.SamplingID และ MicroID = Micro.MicroID; กรอง MicroID แล้วสร้าง Batch_Check เป็น ตรง/ไม่ตรง โดยเทียบ Batch หลัง trim. เรียง SampID และ No.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `MicroID`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: ไม่พบ reference ใน 12 screens ของ export นี้; อาจเรียกจากภายนอกหรือเป็น query ที่ยังไม่ใช้

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "number",
    "name": "id"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Batch_Lot_no": {
    "type": "string",
    "name": "Batch_Lot_no"
  },
  "TPC_1_1": {
    "type": "string",
    "name": "TPC_1_1"
  },
  "TPC_10_2": {
    "type": "string",
    "name": "TPC_10_2"
  },
  "TPC_1_2": {
    "type": "string",
    "name": "TPC_1_2"
  },
  "TPC_10_1": {
    "type": "string",
    "name": "TPC_10_1"
  },
  "TPC_100_1": {
    "type": "string",
    "name": "TPC_100_1"
  },
  "TPC_100_2": {
    "type": "string",
    "name": "TPC_100_2"
  },
  "TPC_1000_1": {
    "type": "string",
    "name": "TPC_1000_1"
  },
  "TPC_1000_2": {
    "type": "string",
    "name": "TPC_1000_2"
  },
  "TPC_10000_1": {
    "type": "string",
    "name": "TPC_10000_1"
  },
  "TPC_10000_2": {
    "type": "string",
    "name": "TPC_10000_2"
  },
  "TPC_100000_1": {
    "type": "string",
    "name": "TPC_100000_1"
  },
  "TPC_100000_2": {
    "type": "string",
    "name": "TPC_100000_2"
  },
  "TPC_1000000_1": {
    "type": "string",
    "name": "TPC_1000000_1"
  },
  "TPC_1000000_2": {
    "type": "string",
    "name": "TPC_1000000_2"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  },
  "Y_M_1_1": {
    "type": "string",
    "name": "Y_M_1_1"
  },
  "Y_M_1_2": {
    "type": "string",
    "name": "Y_M_1_2"
  },
  "Y_M_10_1": {
    "type": "string",
    "name": "Y_M_10_1"
  },
  "Y_M_10_2": {
    "type": "string",
    "name": "Y_M_10_2"
  },
  "Y_M_100_1": {
    "type": "string",
    "name": "Y_M_100_1"
  },
  "Y_M_100_2": {
    "type": "string",
    "name": "Y_M_100_2"
  },
  "Y_M_Result": {
    "type": "string",
    "name": "Y_M_Result"
  },
  "35C_1_1": {
    "type": "string",
    "name": "35C_1_1"
  },
  "35C_1_2": {
    "type": "string",
    "name": "35C_1_2"
  },
  "35C_10_1": {
    "type": "string",
    "name": "35C_10_1"
  },
  "35C_10_2": {
    "type": "string",
    "name": "35C_10_2"
  },
  "35C_100_1": {
    "type": "string",
    "name": "35C_100_1"
  },
  "35C_100_2": {
    "type": "string",
    "name": "35C_100_2"
  },
  "35C_1000_1": {
    "type": "string",
    "name": "35C_1000_1"
  },
  "35C_1000_2": {
    "type": "string",
    "name": "35C_1000_2"
  },
  "55C_1_1": {
    "type": "string",
    "name": "55C_1_1"
  },
  "55C_1_2": {
    "type": "string",
    "name": "55C_1_2"
  },
  "55C_10_1": {
    "type": "string",
    "name": "55C_10_1"
  },
  "55C_10_2": {
    "type": "string",
    "name": "55C_10_2"
  },
  "55C_100_1": {
    "type": "string",
    "name": "55C_100_1"
  },
  "55C_100_2": {
    "type": "string",
    "name": "55C_100_2"
  },
  "55C_1000_1": {
    "type": "string",
    "name": "55C_1000_1"
  },
  "55C_1000_2": {
    "type": "string",
    "name": "55C_1000_2"
  },
  "35C_Result": {
    "type": "string",
    "name": "35C_Result"
  },
  "55C_Result": {
    "type": "string",
    "name": "55C_Result"
  },
  "Coliform_MPN": {
    "type": "string",
    "name": "Coliform_MPN"
  },
  "Coliform_1_1": {
    "type": "string",
    "name": "Coliform_1_1"
  },
  "Coliform_1_2": {
    "type": "string",
    "name": "Coliform_1_2"
  },
  "Coliform_10_1": {
    "type": "string",
    "name": "Coliform_10_1"
  },
  "Coliform_10_2": {
    "type": "string",
    "name": "Coliform_10_2"
  },
  "Coliform_100_1": {
    "type": "string",
    "name": "Coliform_100_1"
  },
  "Coliform_100_2": {
    "type": "string",
    "name": "Coliform_100_2"
  },
  "Coliform_Result": {
    "type": "string",
    "name": "Coliform_Result"
  },
  "Ecoli_MPN": {
    "type": "string",
    "name": "Ecoli_MPN"
  },
  "Ecoli_1_1": {
    "type": "string",
    "name": "Ecoli_1_1"
  },
  "Ecoli_1_2": {
    "type": "string",
    "name": "Ecoli_1_2"
  },
  "Ecoli_10_1": {
    "type": "string",
    "name": "Ecoli_10_1"
  },
  "Ecoli_10_2": {
    "type": "string",
    "name": "Ecoli_10_2"
  },
  "Ecoli_100_1": {
    "type": "string",
    "name": "Ecoli_100_1"
  },
  "Ecoli_100_2": {
    "type": "string",
    "name": "Ecoli_100_2"
  },
  "Ecoli_result": {
    "type": "string",
    "name": "Ecoli_result"
  },
  "S_aureus": {
    "type": "string",
    "name": "S_aureus"
  },
  "B_cereus": {
    "type": "string",
    "name": "B_cereus"
  },
  "Salmonella": {
    "type": "string",
    "name": "Salmonella"
  },
  "Ecoli_1000_1": {
    "type": "string",
    "name": "Ecoli_1000_1"
  },
  "Ecoli_1000_2": {
    "type": "string",
    "name": "Ecoli_1000_2"
  },
  "Coliform_1000_1": {
    "type": "string",
    "name": "Coliform_1000_1"
  },
  "Coliform_1000_2": {
    "type": "string",
    "name": "Coliform_1000_2"
  },
  "55C_10000_1": {
    "type": "string",
    "name": "55C_10000_1"
  },
  "55C_10000_2": {
    "type": "string",
    "name": "55C_10000_2"
  },
  "35C_10000_1": {
    "type": "string",
    "name": "35C_10000_1"
  },
  "35C_10000_2": {
    "type": "string",
    "name": "35C_10000_2"
  },
  "Y_M_1000_1": {
    "type": "string",
    "name": "Y_M_1000_1"
  },
  "Y_M_1000_2": {
    "type": "string",
    "name": "Y_M_1000_2"
  },
  "no": {
    "type": "string",
    "name": "no"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "check1": {
    "type": "string",
    "name": "check1"
  },
  "check2": {
    "type": "string",
    "name": "check2"
  },
  "check3": {
    "type": "string",
    "name": "check3"
  },
  "check4": {
    "type": "string",
    "name": "check4"
  },
  "check5": {
    "type": "string",
    "name": "check5"
  },
  "check6": {
    "type": "string",
    "name": "check6"
  },
  "check7": {
    "type": "string",
    "name": "check7"
  },
  "check8": {
    "type": "string",
    "name": "check8"
  },
  "check9": {
    "type": "string",
    "name": "check9"
  },
  "check10": {
    "type": "string",
    "name": "check10"
  },
  "check11": {
    "type": "string",
    "name": "check11"
  },
  "check12": {
    "type": "string",
    "name": "check12"
  },
  "check13": {
    "type": "string",
    "name": "check13"
  },
  "check14": {
    "type": "string",
    "name": "check14"
  },
  "55C_100000_1": {
    "type": "string",
    "name": "55C_100000_1"
  },
  "55C_100000_2": {
    "type": "string",
    "name": "55C_100000_2"
  },
  "55C_1000000_1": {
    "type": "string",
    "name": "55C_1000000_1"
  },
  "55C_1000000_2": {
    "type": "string",
    "name": "55C_1000000_2"
  },
  "35C_100000_1": {
    "type": "string",
    "name": "35C_100000_1"
  },
  "35C_100000_2": {
    "type": "string",
    "name": "35C_100000_2"
  },
  "35C_1000000_1": {
    "type": "string",
    "name": "35C_1000000_1"
  },
  "35C_1000000_2": {
    "type": "string",
    "name": "35C_1000000_2"
  },
  "Y_M_10000_1": {
    "type": "string",
    "name": "Y_M_10000_1"
  },
  "Y_M_10000_2": {
    "type": "string",
    "name": "Y_M_10000_2"
  },
  "Y_M_100000_1": {
    "type": "string",
    "name": "Y_M_100000_1"
  },
  "Y_M_100000_2": {
    "type": "string",
    "name": "Y_M_100000_2"
  },
  "Y_M_1000000_1": {
    "type": "string",
    "name": "Y_M_1000000_1"
  },
  "Y_M_1000000_2": {
    "type": "string",
    "name": "Y_M_1000000_2"
  },
  "Coliform_10000_1": {
    "type": "string",
    "name": "Coliform_10000_1"
  },
  "Coliform_10000_2": {
    "type": "string",
    "name": "Coliform_10000_2"
  },
  "Coliform_100000_1": {
    "type": "string",
    "name": "Coliform_100000_1"
  },
  "Coliform_100000_2": {
    "type": "string",
    "name": "Coliform_100000_2"
  },
  "Coliform_1000000_1": {
    "type": "string",
    "name": "Coliform_1000000_1"
  },
  "Coliform_1000000_2": {
    "type": "string",
    "name": "Coliform_1000000_2"
  },
  "Ecoli_10000_1": {
    "type": "string",
    "name": "Ecoli_10000_1"
  },
  "Ecoli_10000_2": {
    "type": "string",
    "name": "Ecoli_10000_2"
  },
  "Ecoli_100000_1": {
    "type": "string",
    "name": "Ecoli_100000_1"
  },
  "Ecoli_100000_2": {
    "type": "string",
    "name": "Ecoli_100000_2"
  },
  "Ecoli_1000000_1": {
    "type": "string",
    "name": "Ecoli_1000000_1"
  },
  "Ecoli_1000000_2": {
    "type": "string",
    "name": "Ecoli_1000000_2"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Coliform_MPN_Result": {
    "type": "string",
    "name": "Coliform_MPN_Result"
  },
  "Ecoli_MPN_Result": {
    "type": "string",
    "name": "Ecoli_MPN_Result"
  },
  "Coliform_unit": {
    "type": "string",
    "name": "Coliform_unit"
  },
  "Ecoli_unit": {
    "type": "string",
    "name": "Ecoli_unit"
  },
  "Salmonella_unit": {
    "type": "string",
    "name": "Salmonella_unit"
  },
  "Staphylococcus_unit": {
    "type": "string",
    "name": "Staphylococcus_unit"
  },
  "Bacillus_unit": {
    "type": "string",
    "name": "Bacillus_unit"
  }
}
```

</details>

## `Pull_sum_MicroID`

**SQL:** [Pull_sum_MicroID](<Pull_sum_MicroID.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** ดึง/สรุปข้อมูล Micro Sampling ตาม MicroID สำหรับแสดงรายการ/สถานะ
- **การทำงาน:** คืน field หลัก เช่น id, MicroID, SamplingID, Batch และ Status จาก `Micro Sampling`; มีการคัด/จัดการรายการใน SQL
- **พารามิเตอร์:** `MicroID`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `MicroID`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`
- หน้าจอที่อ้าง query ID: [/micro-daily](../../micro-daily/README.md), [/add-rammilk](../../add-rammilk/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "string",
    "name": "id"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch": {
    "type": "string",
    "name": "Batch"
  },
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "Sum": {
    "type": "string",
    "name": "Sum"
  }
}
```

</details>

## `Puls_state`

**SQL:** [Puls_state](<Puls_state.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** เพิ่ม state ของ `Micro Sampling` ขึ้น 1
- **SQL:** `State = ISNULL(State, 0) + 1` เฉพาะแถว `MicroID` ที่ระบุ
- **พารามิเตอร์:** `MicroID`
- **ข้อควรระวัง:** การเรียกซ้ำจะเพิ่ม state ทุกครั้ง; ตรวจว่า action/UI ป้องกัน double submit หรือไม่

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `MicroID`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`
- หน้าจอที่อ้าง query ID: ไม่พบ reference ใน 12 screens ของ export นี้; อาจเรียกจากภายนอกหรือเป็น query ที่ยังไม่ใช้

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "updated": {
    "type": "boolean",
    "name": "updated"
  }
}
```

</details>

## `Rawmilk_Create_2`

**SQL:** [Rawmilk_Create_2](<Rawmilk_Create_2.sql>) · **Function ใน Builder:** `create`

- **หน้าที่:** สร้าง sampling สำหรับ Raw Milk และจัดการรูปแบบวันเวลาให้เป็นมาตรฐาน
- **การทำงาน:** รองรับ input ที่เป็น TIME, DATETIME/DATETIME2 และ ISO string; มี fallback ดึงเวลา; transaction สร้าง/อัปเดต `Micro Sampling`, `Sampling RawMilk`, `Micro`, `Sampling_Result` พร้อมข้อมูล Remark
- **พารามิเตอร์ที่เห็น:** `Remark` และ bindings อื่นที่เกี่ยวกับข้อมูล form ใน query
- **ข้อควรระวัง:** ทดสอบ timezone และ format ที่ browser ส่งจริง โดยเฉพาะ ISO ที่ลงท้าย `Z`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `Remark`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/create-rawmilk-microid](../../create-rawmilk-microid/README.md)
- Bindings ใน SQL ที่ไม่พบในรายการตั้งค่า: `Remark`

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "DataType": {
    "type": "string",
    "name": "DataType"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "TotalSampling": {
    "type": "string",
    "name": "TotalSampling"
  }
}
```

</details>

## `Sampling_Create_2`

**SQL:** [Sampling_Create_2](<Sampling_Create_2.sql>) · **Function ใน Builder:** `create`

- **หน้าที่:** สร้างรายการ sampling ตามประเภท/หน้า/ข้อมูลผลิตภัณฑ์ พร้อมคุม queue
- **การทำงาน:** normalize DataType; หาก Type+Machine+Tank ครบ ใช้ Machine/Tank เป็น ItemValue; Inprocess ใช้ Page ที่ส่งมา ส่วน PlanSwab ไม่ใช้ Page; transaction ตรวจ pending queue และสร้าง/อัปเดต `Micro_Queue`, `Micro Sampling`, `Micro`, `Sampling_Result`
- **พารามิเตอร์ที่เห็น:** Remark, Product, Flavour, DataType, Department, Page และ form bindings อื่น
- **ข้อควรระวัง:** ตรวจ branch DataType, การป้องกันงานซ้ำ และ race condition ที่ queue

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (6): `Remark`, `Product`, `Flavour`, `DataType`, `Department`, `Page`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling_Result`, `Micro_Queue`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md), [/create-inprocess](../../create-inprocess/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Queue_ID": {
    "type": "string",
    "name": "Queue_ID"
  },
  "Queue_No": {
    "type": "string",
    "name": "Queue_No"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Created_Count": {
    "type": "number",
    "name": "Created_Count"
  },
  "DataType": {
    "type": "string",
    "name": "DataType"
  },
  "Result": {
    "type": "string",
    "name": "Result"
  },
  "TotalSampling": {
    "type": "number",
    "name": "TotalSampling"
  },
  "DepartmentNo": {
    "type": "string",
    "name": "DepartmentNo"
  }
}
```

</details>

## `samplingDate`

**SQL:** [samplingDate](<samplingDate.sql>) · **Function ใน Builder:** `read`

คืนเฉพาะ SamplingID จาก Sampling RawMilk. เมื่อ Date ว่าง อ่านทุกวัน; เมื่อมี Date กรอง CAST(Date AS DATE) ให้ตรงวัน และเรียง SamplingID.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `Date`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling RawMilk`
- หน้าจอที่อ้าง query ID: [/create-rawmilk-microid](../../create-rawmilk-microid/README.md), [/add-rammilk](../../add-rammilk/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  }
}
```

</details>

## `Save_Inspec&Inter`

**SQL:** [Save_Inspec&Inter](<Save_Inspec&Inter.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** บันทึก/อัปเดตชื่อ Inspector หรือ Interpretor ที่ผูกกับ MicroID
- **การทำงาน:** รับ `MicroID`, `Type`, `Employee`, `Date`; เลือกอัปเดต field Inspector หรือ Interpretor ตาม Type; Date เป็น optional
- **ตาราง:** `Micro`

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (4): `MicroID`, `Type`, `Employee`, `Date`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`
- หน้าจอที่อ้าง query ID: [/part3/:microid](../../part3/README.md), [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Employee": {
    "type": "string",
    "name": "Employee"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "UpdatedRows": {
    "type": "string",
    "name": "UpdatedRows"
  }
}
```

</details>

## `Save_Internal`

**SQL:** [Save_Internal](<Save_Internal.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** เพิ่มผลตรวจ Internal Quality
- **การทำงาน:** INSERT ข้อมูล MicroID, No, Media, Equipment, Batch, Pass, No_pass, Positive, Negative, Other ลง `Internal_Quality`
- **ข้อควรระวัง:** query เป็น INSERT; ตรวจ validation/การป้องกัน submit ซ้ำที่หน้าจอ

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (10): `MicroID`, `No`, `Media`, `Equipment`, `Batch`, `Pass`, `No_pass`, `Positive`, `Negative`, `Other`
- ตารางที่อ้างจากคำสั่ง SQL: `Internal_Quality`
- หน้าจอที่อ้าง query ID: [/part3/:microid](../../part3/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "updated": {
    "type": "boolean",
    "name": "updated"
  }
}
```

</details>

## `Selection_Inprocess`

**SQL:** [Selection_Inprocess](<Selection_Inprocess.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** คืนตัวเลือกแบบ dependent สำหรับ Inprocess โดยไม่ทำ cross join ของชุด option
- **การทำงาน:** สร้าง DepartmentList, TypeList, NameList, TankList จาก `Inprocess`; กรอง `Department` และ `Type` ตามลำดับ
- **พารามิเตอร์:** Department, Type

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `Department`, `Type`
- ตารางที่อ้างจากคำสั่ง SQL: `Inprocess`
- หน้าจอที่อ้าง query ID: [/create-inprocess](../../create-inprocess/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Name": {
    "type": "string",
    "name": "Name"
  },
  "Tank": {
    "type": "string",
    "name": "Tank"
  },
  "Department_NO": {
    "type": "string",
    "name": "Department_NO"
  },
  "Type_NO": {
    "type": "string",
    "name": "Type_NO"
  }
}
```

</details>

## `Selection_Options`

**SQL:** [Selection_Options](<Selection_Options.sql>) · **Function ใน Builder:** `read`

SELECT DISTINCT Section และ Section_NO จาก All_plant_Data โดยกรอง Department และ Item แล้วเรียง Section.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (2): `Department`, `Item`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Section": {
    "type": "string",
    "name": "Section"
  },
  "Section_NO": {
    "type": "string",
    "name": "Section_NO"
  }
}
```

</details>

## `SelectionRawMilk`

**SQL:** [SelectionRawMilk](<SelectionRawMilk.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** คืนรายการ Raw Milk ตามวัน Supplier และเลขรถ
- **ตาราง:** `Sampling RawMilk`
- **พารามิเตอร์:** Date, Supplier, TruckNo; SQL ระบุว่าต้องตรงวันที่

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (3): `Date`, `Supplier`, `TruckNo`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling RawMilk`
- หน้าจอที่อ้าง query ID: [/create-rawmilk-microid](../../create-rawmilk-microid/README.md), [/add-rammilk](../../add-rammilk/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Supplier": {
    "type": "string",
    "name": "Supplier"
  },
  "truck_no": {
    "type": "string",
    "name": "truck_no"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  }
}
```

</details>

## `Simple_Options`

**SQL:** [Simple_Options](<Simple_Options.sql>) · **Function ใน Builder:** `read`

SELECT DISTINCT จาก All_plant_Data โดยกรอง Department, Item และ Section แล้วใช้ CROSS APPLY STRING_SPLIT(Sample, ',') แยก Sample ที่คั่นด้วย comma ตัดช่องว่างและเรียงตาม Sample. เป็นการแตกค่าในแต่ละแถว ไม่ใช่ CROSS JOIN ระหว่างทุกแถว.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (3): `Department`, `Item`, `Section`
- ตารางที่อ้างจากคำสั่ง SQL: `All_plant_Data`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Sample": {
    "type": "string",
    "name": "Sample"
  }
}
```

</details>

## `SumTable`

**SQL:** [SumTable](<SumTable.sql>) · **Function ใน Builder:** `read`

- **หน้าที่:** สร้างข้อมูลสรุป/ตาราง Micro Sampling
- **การทำงาน:** อ่าน `Micro Sampling`; จัดรูป Date เป็น `DD/MM/YYYY`, Time เป็น `HH:mm`, อ่าน Status และแยก DataType เป็นคอลัมน์
- **ข้อควรระวัง:** ตรวจ pivot/การรวมกลุ่มหากเพิ่ม DataType ใหม่

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (0): ไม่มี
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`
- หน้าจอที่อ้าง query ID: [/create-microid](../../create-microid/README.md), [/create-rawmilk-microid](../../create-rawmilk-microid/README.md), [/create-inprocess](../../create-inprocess/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "id": {
    "type": "number",
    "name": "id"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Time": {
    "type": "string",
    "name": "Time"
  },
  "Batch": {
    "type": "string",
    "name": "Batch"
  },
  "Department": {
    "type": "string",
    "name": "Department"
  },
  "Page": {
    "type": "string",
    "name": "Page"
  },
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "DataType": {
    "type": "string",
    "name": "DataType"
  },
  "Sum": {
    "type": "string",
    "name": "Sum"
  },
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Item": {
    "type": "string",
    "name": "Item"
  },
  "Selection": {
    "type": "string",
    "name": "Selection"
  },
  "Sample": {
    "type": "string",
    "name": "Sample"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "State": {
    "type": "string",
    "name": "State"
  },
  "Type": {
    "type": "string",
    "name": "Type"
  },
  "Name": {
    "type": "string",
    "name": "Name"
  },
  "Tank": {
    "type": "string",
    "name": "Tank"
  },
  "Machine": {
    "type": "string",
    "name": "Machine"
  },
  "Queue_ID": {
    "type": "string",
    "name": "Queue_ID"
  },
  "Queue_Status": {
    "type": "string",
    "name": "Queue_Status"
  }
}
```

</details>

## `Sup Approve`

**SQL:** [Sup Approve](<Sup Approve.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** บันทึกการอนุมัติของ Supervisor และปรับสถานะ/ข้อมูลผลตรวจที่เกี่ยวข้อง
- **การทำงาน:** รับ Micro, Sup, Sup_date; ทำงานแบบ transaction กับ `Micro`, `Micro Sampling`, `Sampling_Result`, `Sampling RawMilk` และข้อมูลผล RawMilk; อัปเดตเงื่อนไขเมื่อมี Sup แล้วเป็น Success
- **ข้อควรระวัง:** มี write หลายตาราง; ตรวจสิทธิ์การเรียก query และ audit trail ของผู้อนุมัติ/วันเวลา

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (3): `Micro`, `Sup`, `Sup_date`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling RawMilk`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/report/:microid](../../report/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{}
```

</details>

## `Sync_RawMilk_DateTime_To_Micro_Result`

**SQL:** [Sync_RawMilk_DateTime_To_Micro_Result](<Sync_RawMilk_DateTime_To_Micro_Result.sql>) · **Function ใน Builder:** `read`

เมื่อ Action = load: UPDATE Micro Sampling.Date/Time และ Sampling_Result.Date/Time จาก Sampling RawMilk.Date/Plan โดย join SamplingID = SamplingID และ SamplingID = SampID ตามลำดับ แล้วคืน Status=success, Message=Update completed. ไม่มีตัวกรอง SamplingID จึงอัปเดตทุกแถวที่ join ตรงกัน. Action ว่างหรือค่าอื่นคืน Unknown Action; คอมเมนต์เดิมที่บอกว่าอ่านรายการ RawMilk เมื่อ Action ว่างไม่ตรงกับโค้ดจริง.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `Action`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro Sampling`, `Sampling RawMilk`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: ไม่พบ reference ใน 12 screens ของ export นี้; อาจเรียกจากภายนอกหรือเป็น query ที่ยังไม่ใช้

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Status": {
    "type": "string",
    "name": "Status"
  },
  "Message": {
    "type": "string",
    "name": "Message"
  },
  "SamplingID": {
    "type": "string",
    "name": "SamplingID"
  },
  "Date": {
    "type": "string",
    "name": "Date"
  },
  "Plan": {
    "type": "string",
    "name": "Plan"
  }
}
```

</details>

## `Update_PART`

**SQL:** [Update_PART](<Update_PART.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** บันทึกข้อมูลส่วน/part ของงาน Micro พร้อมข้อมูลตัวอย่างและผลที่ส่งจากฟอร์ม
- **การทำงาน:** รับ `MicroID`, `Part`, `NO_page`, inprocess/raw-material/raw-milk/water/lye/airborne/swab/other, ชนิดผล TPC/YM/Coliform/Ecoli ฯลฯ, อุณหภูมิ/สภาพตัวอย่าง, ผู้ส่ง และเวลา; transaction อัปเดต `Micro` และ `Sampling_Result`
- **ข้อควรระวัง:** bindings จำนวนมาก; เปลี่ยนชื่อ/optional status ต้องตรวจ mapping ฝั่งฟอร์มทุก field

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (58): `MicroID`, `Part`, `NO_page`, `inprocess`, `inprocess_remark`, `raw_material`, `raw_milk`, `Hot_water`, `water`, `Lye`, `air_borne`, `swab_test`, `Other_specify_for_detail`, `Other_remark_for_detail`, `TPC`, `Y_M`, `Mesophilic_spore`, `Thermophillic_spore`, `Coliform`, `Ecoli`, `Salmonella`, `Staphylococcus`, `Bacillus`, `Other_Specify_for_type`, `Other_remark_for_type`, `room_temp`, `temperature0_8`, `Freezer`, `Other_Specify_for_sample`, `Other_remark_for_sample`, `Submit_by`, `Submit_Date`, `Coliform_unit`, `Ecoli_unit`, `Salmonella_unit`, `Staphylococcus_unit`, `Bacillus_unit`, `Complete`, `Incomplete`, `Incomplete_remark`, `detail_complete`, `detail_incomplete`, `detail_incomplete_remark`, `Normal`, `Abnormal_Specify`, `Abnormal_Specify_remark`, `Action_on_ploblems`, `received_by`, `recevived_date`, `Check_date1`, `Check_date2`, `Inspector`, `Inspector_date`, `Interpretor`, `Interpretor_date`, `Sup`, `Sup_date`, `Amount_sample`
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`, `Micro Sampling`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/micro-daily](../../micro-daily/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "MicroID": {
    "type": "string",
    "name": "MicroID"
  },
  "Part": {
    "type": "number",
    "name": "Part"
  },
  "NO_page": {
    "type": "string",
    "name": "NO_page"
  },
  "updated": {
    "type": "boolean",
    "name": "updated"
  },
  "TPC_raw": {
    "type": "number",
    "name": "TPC_raw"
  },
  "TPC_Result_Divisor": {
    "type": "number",
    "name": "TPC_Result_Divisor"
  },
  "TPC_Divided": {
    "type": "number",
    "name": "TPC_Divided"
  },
  "TPC_Power": {
    "type": "number",
    "name": "TPC_Power"
  },
  "TPC_Step": {
    "type": "number",
    "name": "TPC_Step"
  },
  "TPC_3Significant": {
    "type": "number",
    "name": "TPC_3Significant"
  },
  "TPC_Integer": {
    "type": "number",
    "name": "TPC_Integer"
  },
  "TPC_Fraction": {
    "type": "number",
    "name": "TPC_Fraction"
  },
  "TPC_EvenOdd": {
    "type": "string",
    "name": "TPC_EvenOdd"
  },
  "TPC_Rounded": {
    "type": "number",
    "name": "TPC_Rounded"
  },
  "TPC_Final": {
    "type": "number",
    "name": "TPC_Final"
  },
  "YM_raw": {
    "type": "number",
    "name": "YM_raw"
  },
  "YM_Divided": {
    "type": "number",
    "name": "YM_Divided"
  },
  "YM_Step": {
    "type": "number",
    "name": "YM_Step"
  },
  "YM_3Significant": {
    "type": "number",
    "name": "YM_3Significant"
  },
  "YM_Integer": {
    "type": "number",
    "name": "YM_Integer"
  },
  "YM_Fraction": {
    "type": "number",
    "name": "YM_Fraction"
  },
  "YM_EvenOdd": {
    "type": "string",
    "name": "YM_EvenOdd"
  },
  "YM_Rounded": {
    "type": "number",
    "name": "YM_Rounded"
  },
  "YM_Final": {
    "type": "number",
    "name": "YM_Final"
  },
  "C35_raw": {
    "type": "number",
    "name": "C35_raw"
  },
  "C35_Divided": {
    "type": "number",
    "name": "C35_Divided"
  },
  "C35_Step": {
    "type": "number",
    "name": "C35_Step"
  },
  "C35_3Significant": {
    "type": "number",
    "name": "C35_3Significant"
  },
  "C35_Integer": {
    "type": "number",
    "name": "C35_Integer"
  },
  "C35_Fraction": {
    "type": "number",
    "name": "C35_Fraction"
  },
  "C35_EvenOdd": {
    "type": "string",
    "name": "C35_EvenOdd"
  },
  "C35_Rounded": {
    "type": "number",
    "name": "C35_Rounded"
  },
  "C35_Final": {
    "type": "number",
    "name": "C35_Final"
  },
  "C55_raw": {
    "type": "number",
    "name": "C55_raw"
  },
  "C55_Divided": {
    "type": "number",
    "name": "C55_Divided"
  },
  "C55_Step": {
    "type": "number",
    "name": "C55_Step"
  },
  "C55_3Significant": {
    "type": "number",
    "name": "C55_3Significant"
  },
  "C55_Integer": {
    "type": "number",
    "name": "C55_Integer"
  },
  "C55_Fraction": {
    "type": "number",
    "name": "C55_Fraction"
  },
  "C55_EvenOdd": {
    "type": "string",
    "name": "C55_EvenOdd"
  },
  "C55_Rounded": {
    "type": "number",
    "name": "C55_Rounded"
  },
  "C55_Final": {
    "type": "number",
    "name": "C55_Final"
  },
  "Coli_raw": {
    "type": "number",
    "name": "Coli_raw"
  },
  "Coli_Divided": {
    "type": "number",
    "name": "Coli_Divided"
  },
  "Coli_Step": {
    "type": "number",
    "name": "Coli_Step"
  },
  "Coli_3Significant": {
    "type": "number",
    "name": "Coli_3Significant"
  },
  "Coli_Integer": {
    "type": "number",
    "name": "Coli_Integer"
  },
  "Coli_Fraction": {
    "type": "number",
    "name": "Coli_Fraction"
  },
  "Coli_EvenOdd": {
    "type": "string",
    "name": "Coli_EvenOdd"
  },
  "Coli_Rounded": {
    "type": "number",
    "name": "Coli_Rounded"
  },
  "Coli_Final": {
    "type": "number",
    "name": "Coli_Final"
  },
  "Ecoli_raw": {
    "type": "number",
    "name": "Ecoli_raw"
  },
  "Ecoli_Divided": {
    "type": "number",
    "name": "Ecoli_Divided"
  },
  "Ecoli_Step": {
    "type": "number",
    "name": "Ecoli_Step"
  },
  "Ecoli_3Significant": {
    "type": "number",
    "name": "Ecoli_3Significant"
  },
  "Ecoli_Integer": {
    "type": "number",
    "name": "Ecoli_Integer"
  },
  "Ecoli_Fraction": {
    "type": "number",
    "name": "Ecoli_Fraction"
  },
  "Ecoli_EvenOdd": {
    "type": "string",
    "name": "Ecoli_EvenOdd"
  },
  "Ecoli_Rounded": {
    "type": "number",
    "name": "Ecoli_Rounded"
  },
  "Ecoli_Final": {
    "type": "number",
    "name": "Ecoli_Final"
  },
  "Update_TPC": {
    "type": "number",
    "name": "Update_TPC"
  },
  "Update_YM": {
    "type": "number",
    "name": "Update_YM"
  },
  "Update_35C": {
    "type": "number",
    "name": "Update_35C"
  },
  "Update_55C": {
    "type": "number",
    "name": "Update_55C"
  },
  "Update_Coliform": {
    "type": "number",
    "name": "Update_Coliform"
  },
  "Update_Ecoli": {
    "type": "number",
    "name": "Update_Ecoli"
  },
  "TotalValue": {
    "type": "number",
    "name": "TotalValue"
  },
  "Dilution": {
    "type": "string",
    "name": "Dilution"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  }
}
```

</details>

## `Update_RawMilk_Micro_Result`

**SQL:** [Update_RawMilk_Micro_Result](<Update_RawMilk_Micro_Result.sql>) · **Function ใน Builder:** `update`

คำนวณผลราย batch แล้วอัปเดตช่อง SPC/Coliform/E. coli ใน `Sampling RawMilk` เฉพาะ SamplingID ที่กำลังทำงานและ batch 1–3

- **พารามิเตอร์:** `SamplingID`
- **การทำงาน:** อ่าน `Sampling_Result`, สรุปผลแยก batch แล้ว map Batch 1/2/3 ลงคอลัมน์ tank ที่กำหนด
- **ข้อควรระวัง:** ไม่ครอบคลุม batch อื่นตามเงื่อนไขที่เห็น; ตรวจว่าต้องการรองรับ batch ใหม่หรือไม่ก่อนขยาย

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (1): `SamplingID`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling RawMilk`, `Sampling_Result`
- หน้าจอที่อ้าง query ID: ไม่พบ reference ใน 12 screens ของ export นี้; อาจเรียกจากภายนอกหรือเป็น query ที่ยังไม่ใช้

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{}
```

</details>

## `Update_Result`

**SQL:** [Update_Result](<Update_Result.sql>) · **Function ใน Builder:** `update`

- **หน้าที่:** อัปเดตผลตรวจตาม Action และ input ของ plate/dilution สำหรับแถว `Sampling_Result`
- **การทำงาน:** รับ `Action`, `SampID`, `Batch_Lot_No`, `No`, ค่า TPC/YM และกลุ่มผลอื่น; ตรวจ/แปลงค่าที่ได้รับและ UPDATE แถวผลเฉพาะตามตัวระบุ; มีการจัดการ error/`THROW`
- **ข้อควรระวัง:** `No` และ Batch อาจเป็นข้อความ/ลำดับทศนิยม; ตรวจว่า WHERE ใช้ key ครบและไม่กระทบหลายแถว

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (156): `Action`, `SampID`, `Batch_Lot_No`, `No`, `TPC_1_1`, `TPC_1_2`, `TPC_10_1`, `TPC_10_2`, `TPC_100_1`, `TPC_100_2`, `TPC_1000_1`, `TPC_1000_2`, `TPC_10000_1`, `TPC_10000_2`, `TPC_100000_1`, `TPC_100000_2`, `TPC_1000000_1`, `TPC_1000000_2`, `TPC_10000000_1`, `TPC_10000000_2`, `TPC_100000000_1`, `TPC_100000000_2`, `TPC_1000000000_1`, `TPC_1000000000_2`, `TPC_Result`, `Y_M_1_1`, `Y_M_1_2`, `Y_M_10_1`, `Y_M_10_2`, `Y_M_100_1`, `Y_M_100_2`, `Y_M_1000_1`, `Y_M_1000_2`, `Y_M_10000_1`, `Y_M_10000_2`, `Y_M_100000_1`, `Y_M_100000_2`, `Y_M_1000000_1`, `Y_M_1000000_2`, `Y_M_10000000_1`, `Y_M_10000000_2`, `Y_M_100000000_1`, `Y_M_100000000_2`, `Y_M_1000000000_1`, `Y_M_1000000000_2`, `Y_M_Result`, `35C_1_1`, `35C_1_2`, `35C_10_1`, `35C_10_2`, `35C_100_1`, `35C_100_2`, `35C_1000_1`, `35C_1000_2`, `35C_10000_1`, `35C_10000_2`, `35C_100000_1`, `35C_100000_2`, `35C_1000000_1`, `35C_1000000_2`, `35C_10000000_1`, `35C_10000000_2`, `35C_100000000_1`, `35C_100000000_2`, `35C_1000000000_1`, `35C_1000000000_2`, `35C_Result`, `55C_1_1`, `55C_1_2`, `55C_10_1`, `55C_10_2`, `55C_100_1`, `55C_100_2`, `55C_1000_1`, `55C_1000_2`, `55C_10000_1`, `55C_10000_2`, `55C_100000_1`, `55C_100000_2`, `55C_1000000_1`, `55C_1000000_2`, `55C_10000000_1`, `55C_10000000_2`, `55C_100000000_1`, `55C_100000000_2`, `55C_1000000000_1`, `55C_1000000000_2`, `55C_Result`, `Coliform_1_1`, `Coliform_1_2`, `Coliform_10_1`, `Coliform_10_2`, `Coliform_100_1`, `Coliform_100_2`, `Coliform_1000_1`, `Coliform_1000_2`, `Coliform_10000_1`, `Coliform_10000_2`, `Coliform_100000_1`, `Coliform_100000_2`, `Coliform_1000000_1`, `Coliform_1000000_2`, `Coliform_10000000_1`, `Coliform_10000000_2`, `Coliform_100000000_1`, `Coliform_100000000_2`, `Coliform_1000000000_1`, `Coliform_1000000000_2`, `Coliform_Result`, `Coliform_MPN_Result`, `Ecoli_1_1`, `Ecoli_1_2`, `Ecoli_10_1`, `Ecoli_10_2`, `Ecoli_100_1`, `Ecoli_100_2`, `Ecoli_1000_1`, `Ecoli_1000_2`, `Ecoli_10000_1`, `Ecoli_10000_2`, `Ecoli_100000_1`, `Ecoli_100000_2`, `Ecoli_1000000_1`, `Ecoli_1000000_2`, `Ecoli_10000000_1`, `Ecoli_10000000_2`, `Ecoli_100000000_1`, `Ecoli_100000000_2`, `Ecoli_1000000000_1`, `Ecoli_1000000000_2`, `Ecoli_result`, `Ecoli_MPN_Result`, `S_aureus`, `B_cereus`, `Salmonella`, `Other_1_1`, `Other_1_2`, `Other_10_1`, `Other_10_2`, `Other_100_1`, `Other_100_2`, `Other_1000_1`, `Other_1000_2`, `Other_10000_1`, `Other_10000_2`, `Other_100000_1`, `Other_100000_2`, `Other_1000000_1`, `Other_1000000_2`, `Other_10000000_1`, `Other_10000000_2`, `Other_100000000_1`, `Other_100000000_2`, `Other_1000000000_1`, `Other_1000000000_2`, `Other_Result`
- ตารางที่อ้างจากคำสั่ง SQL: `Sampling_Result`
- หน้าจอที่อ้าง query ID: [/result-of-micro](../../result-of-micro/README.md)

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "Action": {
    "type": "string",
    "name": "Action"
  },
  "UpdatedRows": {
    "type": "string",
    "name": "UpdatedRows"
  },
  "SampID": {
    "type": "string",
    "name": "SampID"
  },
  "Batch_Lot_No": {
    "type": "string",
    "name": "Batch_Lot_No"
  },
  "No": {
    "type": "string",
    "name": "No"
  },
  "updated": {
    "type": "boolean",
    "name": "updated"
  },
  "TPC_raw": {
    "type": "number",
    "name": "TPC_raw"
  },
  "TPC_Result_Divisor": {
    "type": "number",
    "name": "TPC_Result_Divisor"
  },
  "TPC_Divided": {
    "type": "number",
    "name": "TPC_Divided"
  },
  "TPC_Power": {
    "type": "number",
    "name": "TPC_Power"
  },
  "TPC_Step": {
    "type": "number",
    "name": "TPC_Step"
  },
  "TPC_3Significant": {
    "type": "number",
    "name": "TPC_3Significant"
  },
  "TPC_Integer": {
    "type": "number",
    "name": "TPC_Integer"
  },
  "TPC_Fraction": {
    "type": "number",
    "name": "TPC_Fraction"
  },
  "TPC_EvenOdd": {
    "type": "string",
    "name": "TPC_EvenOdd"
  },
  "TPC_Rounded": {
    "type": "number",
    "name": "TPC_Rounded"
  },
  "TPC_Final": {
    "type": "number",
    "name": "TPC_Final"
  },
  "YM_raw": {
    "type": "number",
    "name": "YM_raw"
  },
  "YM_Divided": {
    "type": "number",
    "name": "YM_Divided"
  },
  "YM_Step": {
    "type": "number",
    "name": "YM_Step"
  },
  "YM_3Significant": {
    "type": "number",
    "name": "YM_3Significant"
  },
  "YM_Integer": {
    "type": "number",
    "name": "YM_Integer"
  },
  "YM_Fraction": {
    "type": "number",
    "name": "YM_Fraction"
  },
  "YM_EvenOdd": {
    "type": "string",
    "name": "YM_EvenOdd"
  },
  "YM_Rounded": {
    "type": "number",
    "name": "YM_Rounded"
  },
  "YM_Final": {
    "type": "number",
    "name": "YM_Final"
  },
  "C35_raw": {
    "type": "number",
    "name": "C35_raw"
  },
  "C35_Divided": {
    "type": "number",
    "name": "C35_Divided"
  },
  "C35_Step": {
    "type": "number",
    "name": "C35_Step"
  },
  "C35_3Significant": {
    "type": "number",
    "name": "C35_3Significant"
  },
  "C35_Integer": {
    "type": "number",
    "name": "C35_Integer"
  },
  "C35_Fraction": {
    "type": "number",
    "name": "C35_Fraction"
  },
  "C35_EvenOdd": {
    "type": "string",
    "name": "C35_EvenOdd"
  },
  "C35_Rounded": {
    "type": "number",
    "name": "C35_Rounded"
  },
  "C35_Final": {
    "type": "number",
    "name": "C35_Final"
  },
  "C55_raw": {
    "type": "number",
    "name": "C55_raw"
  },
  "C55_Divided": {
    "type": "number",
    "name": "C55_Divided"
  },
  "C55_Step": {
    "type": "number",
    "name": "C55_Step"
  },
  "C55_3Significant": {
    "type": "number",
    "name": "C55_3Significant"
  },
  "C55_Integer": {
    "type": "number",
    "name": "C55_Integer"
  },
  "C55_Fraction": {
    "type": "number",
    "name": "C55_Fraction"
  },
  "C55_EvenOdd": {
    "type": "string",
    "name": "C55_EvenOdd"
  },
  "C55_Rounded": {
    "type": "number",
    "name": "C55_Rounded"
  },
  "C55_Final": {
    "type": "number",
    "name": "C55_Final"
  },
  "Coli_raw": {
    "type": "number",
    "name": "Coli_raw"
  },
  "Coli_Divided": {
    "type": "number",
    "name": "Coli_Divided"
  },
  "Coli_Step": {
    "type": "number",
    "name": "Coli_Step"
  },
  "Coli_3Significant": {
    "type": "number",
    "name": "Coli_3Significant"
  },
  "Coli_Integer": {
    "type": "number",
    "name": "Coli_Integer"
  },
  "Coli_Fraction": {
    "type": "number",
    "name": "Coli_Fraction"
  },
  "Coli_EvenOdd": {
    "type": "string",
    "name": "Coli_EvenOdd"
  },
  "Coli_Rounded": {
    "type": "number",
    "name": "Coli_Rounded"
  },
  "Coli_Final": {
    "type": "number",
    "name": "Coli_Final"
  },
  "Ecoli_raw": {
    "type": "number",
    "name": "Ecoli_raw"
  },
  "Ecoli_Divided": {
    "type": "number",
    "name": "Ecoli_Divided"
  },
  "Ecoli_Step": {
    "type": "number",
    "name": "Ecoli_Step"
  },
  "Ecoli_3Significant": {
    "type": "number",
    "name": "Ecoli_3Significant"
  },
  "Ecoli_Integer": {
    "type": "number",
    "name": "Ecoli_Integer"
  },
  "Ecoli_Fraction": {
    "type": "number",
    "name": "Ecoli_Fraction"
  },
  "Ecoli_EvenOdd": {
    "type": "string",
    "name": "Ecoli_EvenOdd"
  },
  "Ecoli_Rounded": {
    "type": "number",
    "name": "Ecoli_Rounded"
  },
  "Ecoli_Final": {
    "type": "number",
    "name": "Ecoli_Final"
  },
  "Update_TPC": {
    "type": "number",
    "name": "Update_TPC"
  },
  "Update_YM": {
    "type": "number",
    "name": "Update_YM"
  },
  "Update_35C": {
    "type": "number",
    "name": "Update_35C"
  },
  "Update_55C": {
    "type": "number",
    "name": "Update_55C"
  },
  "Update_Coliform": {
    "type": "number",
    "name": "Update_Coliform"
  },
  "Update_Ecoli": {
    "type": "number",
    "name": "Update_Ecoli"
  },
  "TotalValue": {
    "type": "number",
    "name": "TotalValue"
  },
  "Dilution": {
    "type": "string",
    "name": "Dilution"
  },
  "TPC_Result": {
    "type": "string",
    "name": "TPC_Result"
  }
}
```

</details>

## `Update_Status`

**SQL:** [Update_Status](<Update_Status.sql>) · **Function ใน Builder:** `update`

UPDATE ทุกแถวของ Micro เพราะไม่มี WHERE: เมื่อ Sup มีค่าที่ไม่ใช่ช่องว่างให้ Status = Success; ถ้า Sup ว่างแต่ received_by มีค่าให้ Pending; กรณีอื่นคง Status เดิม. ไม่มี binding และไม่จำกัด MicroID จึงมีผลทั้งตาราง.

### Bindings และผลกระทบ

- Bindings ที่อ้างใน SQL (0): ไม่มี
- ตารางที่อ้างจากคำสั่ง SQL: `Micro`
- หน้าจอที่อ้าง query ID: ไม่พบ reference ใน 12 screens ของ export นี้; อาจเรียกจากภายนอกหรือเป็น query ที่ยังไม่ใช้

<details><summary>Transformer และ result schema ที่ตั้งค่าใน Builder</summary>

Schema นี้เป็น metadata ของ Builder และอาจไม่ครอบคลุมทุก SELECT branch.

```javascript
return data
```

```json
{
  "updated": {
    "type": "boolean",
    "name": "updated"
  }
}
```

</details>

## SQL เดิมใน repository

ไฟล์ต่อไปนี้มีอยู่ก่อนการส่งออก 39 query ล่าสุด จึงคง body เดิมและเพิ่ม comment ชื่อไฟล์กำกับ ไม่ถือว่าชื่อเหล่านี้เป็นชื่อ query ปัจจุบันโดยอัตโนมัติ:

- [Caculate RawMilk.sql](<Caculate RawMilk.sql>)
- [Calculate Result.sql](<Calculate Result.sql>)
- [MPN.sql](<MPN.sql>)

ให้ใช้ชื่อ query และ query ID ใน manifest เพื่อระบุเวอร์ชันที่ตรงกับ Builder ก่อนเลือก SQL ไปใช้งาน.
