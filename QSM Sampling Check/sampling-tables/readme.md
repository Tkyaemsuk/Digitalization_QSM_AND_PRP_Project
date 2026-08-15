# 📋 Sampling Tables Details

## 1. รายละเอียดหน้า Sampling Tables

หน้า **Sampling Tables** ใช้สำหรับแสดงรายการ Sampling ทั้งหมดของแต่ละแผนก โดยผู้ใช้งานสามารถตรวจสอบข้อมูล Sampling และเข้าสู่หน้าบันทึกข้อมูลหรือหน้าเอกสารของแต่ละรายการได้

---

## 2. ข้อมูลที่แสดงในตาราง

| ลำดับ | รายการ                   | Field / รายละเอียด                      |
| ----: | ------------------------ | --------------------------------------- |
|     1 | รหัส Sampling            | `SamplingID`                            |
|     2 | วันที่ผลิต               | `FillingDate`                           |
|     3 | ชื่อผลิตภัณฑ์            | `Product`                               |
|     4 | ชื่อเครื่องจักร          | `Machine`                               |
|     5 | จำนวน Brik อุณหภูมิ 30°C | `Quantity (30°C)`                       |
|     6 | จำนวน Brik อุณหภูมิ 55°C | `Quantity (55°C)`                       |
|     7 | Record Data              | ปุ่มสำหรับบันทึกข้อมูลการเก็บตัวอย่างนม |
|     8 | Document                 | ปุ่มสำหรับเปิดเอกสารของ Sampling        |

---

## 3. ปุ่ม Record Data

ปุ่ม **Record Data** ใช้สำหรับเข้าสู่หน้าบันทึกข้อมูลตัวอย่างนมของแต่ละ Brik

เมื่อผู้ใช้งานกดปุ่ม ระบบจะส่งค่า `SamplingID` ของรายการที่เลือกไปยังหน้า:

```text
/record-data/:sampid
```

ตัวอย่าง:

```text
/record-data/QSM-07012026-06014-01
```

โดยค่า `:sampid` จะถูกดึงมาจาก `SamplingID` ของแถวข้อมูลนั้น และนำไปใช้ค้นหารายละเอียด Sampling สำหรับบันทึกข้อมูลต่อไป

---

## 4. ปุ่ม Document

ปุ่ม **Document** ใช้สำหรับเปิดหน้าเอกสารของ Sampling ที่ผู้ใช้งานเลือก

เมื่อกดปุ่ม ระบบจะส่งข้อมูล `SamplingID` ไปยังหน้า:

```text
/document
```

หน้า Document จะใช้ `SamplingID` เพื่อแสดงเมนูและรายละเอียดที่เกี่ยวข้องกับ Sampling รายการนั้น ได้แก่:

* Sampling Status
* Report Production
* Production Checklist Sampling

---

## 5. 🔄 ลำดับการทำงาน

```text
Sampling Tables
      │
      ├── Record Data
      │       └── /record-data/:sampid
      │
      └── Document
              └── /document
```

หน้า Sampling Tables จึงทำหน้าที่เป็นศูนย์กลางสำหรับตรวจสอบรายการ Sampling และเชื่อมต่อไปยังขั้นตอนการบันทึกข้อมูลและการจัดทำเอกสารของแต่ละ Sampling
