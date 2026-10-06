# 🥛 PRP1 Soy Milk

ระบบ PRP1 สำหรับนมถั่วเหลือง ใช้บันทึกข้อมูลการผลิตตั้งแต่ Storage จนถึง Standardized โดยข้อมูลถูกจัดเก็บแบบ **Row-based** คือแต่ละ Batch เป็นคนละ Row ทำให้รองรับจำนวน Batch ที่เพิ่มขึ้นได้

---

## 🗄️ 1. ฐานข้อมูลของระบบ

| ตาราง | รูปแบบการเก็บ | รายละเอียด |
| ----- | ------------- | ---------- |
| `prp1_table` | Row | เก็บ `Product_ID`, Flavor, Batch และข้อมูลการผลิต (Yield) ของทั้ง 4 หน้ากรอกข้อมูล |
| `Finish-good` | Row | เก็บข้อมูลนมที่ผ่านการฆ่าเชื้อแล้ว |
| `PRP_Spec` | - | ตารางเกณฑ์ที่ใช้ตรวจสอบ Source, Flavor, Size |

---

## 🔑 2. การสร้าง Product_ID

**Sup** เป็นผู้สร้างข้อมูลเริ่มต้น โดยใช้ Automation **`Generate Product Batches`** นำ `Product_Date`, `Loop`, `Week` มาสร้าง `Product_ID` แล้วบันทึกลง `prp1_table`

ตัวอย่างข้อมูลใน `prp1_table`

| Product_Date | Loop | Week | Batch  | Flavor |
| ------------ | ---: | ---: | ------ | ------ |
| 7/30/2026    |    1 |   31 | 1773-1 | D      |
| 7/30/2026    |    1 |   31 | 1773-2 | D      |

```text
Product_Date = 7/30/2026
Week         = 31
Loop         = 1
        │
        ▼
Automation: Generate Product Batches
        │
        ▼
Product_ID (เริ่มต้น) = 300726-31Th1
```

> **Group:** `Product_ID` สุดท้ายต้องมี **Group** ซึ่งจะใส่ในหน้า Standardized เพราะตามกระบวนการทำงาน Group อาจเปลี่ยนภายหลังได้ (ดูหัวข้อ 6)

---

## 🔎 3. การเลือก Batch

เมื่อเข้าสู่หน้า PRP1 ระบบแสดงรายการ Batch ที่มีอยู่ ผู้ใช้งานต้องเลือก Batch ก่อน จึงจะเข้าหน้ากรอกข้อมูลของ Batch นั้นได้

```text
PRP1
  │
  ▼
แสดงรายการ Batch
  │
  ▼
ผู้ใช้งานเลือก Batch
  │
  ▼
หน้ากรอกข้อมูล
```

---

## ⚙️ 4. หน้ากรอกข้อมูลและ Condition

`prp1_table` มีหน้ากรอกข้อมูล 4 หน้า โดยมี **Condition และ Step** ควบคุมลำดับการแสดงหน้า

```text
Storage
   │
   ▼
Before Cooling
   │
   ▼
After Cooling
   │
   ▼
Standardized
```

ระบบตรวจสอบ Condition ของแต่ละขั้นตอนก่อนเปิดให้กรอกข้อมูลในขั้นตอนถัดไป

---

## 📋 5. การตรวจสอบ Specification — PRP_Spec

ทุกหน้าตรวจสอบค่าตามเกณฑ์จากตาราง `PRP_Spec` โดยต้องใช้ทั้ง 3 ค่าในการตรวจสอบ

```text
PRP_Spec
   │
   ├── Source
   ├── Flavor
   └── Size
```

| Specification | รายละเอียด |
| ------------- | ---------- |
| `Source` | แหล่งที่มาของผลิตภัณฑ์ |
| `Flavor` | รสชาติ |
| `Size` | ขนาด |

---

## 🧪 6. Standardized

ในหน้า `Standardized` ผู้ใช้งานต้อง **เลือก Group และกด Save ก่อน** จึงจะเห็นข้อมูลที่ต้องกรอกต่อ

* Group ถูกนำมาใช้สร้าง `Product_ID` สุดท้าย
* ใส่ Group ที่หน้านี้ เนื่องจากกระบวนการทำงานอาจมีการเปลี่ยน Group ภายหลัง
* เมื่อกด Save ระบบจะเพิ่ม `Product_ID` ลงตาราง `Finish-good` ตามข้อมูลที่กรอกในหน้า Standardized

```text
Standardized
     │
     ▼
เลือก Group
     │
     ▼
   Save
     │
     ├─────────────────────────┐
     ▼                         ▼
แสดงข้อมูลสำหรับกรอก      Product_ID (มี Group)
                               │
                               ▼
                          Finish-good
```

### 🧮 BOM และ `buffer_vol`

ในหน้า Standardized ระบบคำนวณ `buffer_vol` จากข้อมูล **BOM** อัตโนมัติ ผู้ใช้งานไม่ต้องคำนวณเอง

```text
BOM
 │
 ▼
คำนวณ
 │
 ▼
buffer_vol
```

---

## 🔄 7. Overall Workflow

```text
Sup
 │
 ▼
Automation: Generate Product Batches
(Product_Date + Loop + Week)
 │
 ▼
prp1_table  ← ข้อมูล Product_ID, Flavor, Batch
 │
 ▼
เลือก Batch
 │
 ▼
Storage
 │
 ▼
Before Cooling
 │
 ▼
After Cooling
 │
 ▼
Standardized
 │
 ├── เลือก Group → Save → แสดงข้อมูลสำหรับกรอก
 ├── BOM → buffer_vol
 │
 ▼
Product_ID (มี Group) → Finish-good

* ทุกหน้าตรวจค่าด้วย PRP_Spec (Source, Flavor, Size)
```

---

## ⭐ Key Points

| รายการ | รายละเอียด |
| ------ | ---------- |
| **Product** | PRP1 Soy Milk |
| **ตารางที่ใช้** | `prp1_table`, `Finish-good` (+ `PRP_Spec` เป็นตารางเกณฑ์) |
| **Data Structure** | Row-based (แต่ละ Batch เป็นคนละ Row) |
| **การสร้างข้อมูลเริ่มต้น** | Sup ใช้ Automation `Generate Product Batches` จาก Product_Date, Loop, Week |
| **หน้ากรอกข้อมูล** | Storage → Before Cooling → After Cooling → Standardized |
| **Batch Selection** | ต้องเลือก Batch ก่อนกรอกข้อมูล |
| **Condition** | ควบคุมการแสดง Step และหน้ากรอกข้อมูล |
| **Standardized** | ต้องเลือก Group และ Save ก่อน |
| **Group** | ใส่ที่หน้า Standardized เพื่อสร้าง Product_ID สุดท้าย (Group เปลี่ยนภายหลังได้) |
| **Finish-good** | เมื่อ Save ที่ Standardized ระบบเพิ่ม Product_ID ลง Finish-good |
| **BOM / `buffer_vol`** | อยู่ในหน้า Standardized ระบบคำนวณ `buffer_vol` จาก BOM |
| **Specification** | `PRP_Spec` ใช้ Source, Flavor, Size ตรวจสอบค่า |
