# 🥛 PRP1 นมสดและนมเปรี้ยว

ระบบ **PRP1 สำหรับนมสด** ใช้กระบวนการผลิตที่เหมือนกับ PRP3 จึงใช้ตาราง `prp3 table` ร่วมกัน โดยมี `Product_ID` เป็นข้อมูลอ้างอิงหลักในการเชื่อมโยงข้อมูลทุกตาราง

---

## 🗄️ 1. ฐานข้อมูลของระบบ

| ตาราง | รูปแบบการเก็บ | รายละเอียด |
| ----- | ------------- | ---------- |
| `prp3 table` | คอลัมน์ (สูงสุด 8 Batch) | เก็บ `Product_ID`, Flavor, Batch เนื่องจากนมสดมีกระบวนการเหมือน PRP3 จึงใช้ตารางเดียวกัน |
| `Yield` | คอลัมน์ (สูงสุด 8 Batch) | เก็บข้อมูลการผลิต แบ่งเป็น 4 หน้าย่อย: Thermised, Recombine, After Past, Standardized |
| `Finish-good` | แถว (Row) | เก็บข้อมูลนมที่ผ่านการฆ่าเชื้อแล้ว สร้างแถวตามจำนวน Batch ที่ผลิตด้วย Automation `SaveBatch` |
| `PRP_Spec` | - | ตารางเกณฑ์ที่ใช้ตรวจสอบ Source, Flavor, Size |

---

## 🔑 2. การสร้าง Product_ID

**Sup** เป็นผู้สร้างเลข `Product_ID` โดยใช้ข้อมูลต่อไปนี้ประกอบกัน

```text
Product + Date + Week + Loop + Group
                  │
                  ▼
             Product_ID
                  │
        บันทึกลง 3 ตารางพร้อมกัน
      ┌───────────┼───────────┐
      ▼           ▼           ▼
 prp3 table      Yield    Finish-good
```

> `Product_ID` ไม่ได้ถูกส่งต่อจาก `prp3 table` ไปยังตารางอื่น แต่ถูกบันทึกลงทั้ง 3 ตารางพร้อมกันตั้งแต่ตอนสร้าง

---

## 🔄 3. Production Workflow

```text
                  Sup สร้าง Product_ID
                          │
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
     prp3 table         Yield        Finish-good
   (Product_ID,           │          (เก็บเป็น Row)
    Flavor, Batch)        │                ▲
                          │                │
     ┌──────────┬─────────┼─────────┐      │
     ▼          ▼         ▼         ▼      │
 Thermised  Recombine After Past Standardized
                                           │
                       Automation SaveBatch วนลูปสร้าง Row
                       ตามจำนวน Batch ที่ผลิต
```

---

## 📄 4. หน้ากรอกข้อมูลใน Yield

`Yield` ประกอบด้วย 4 หน้าย่อย แต่ละหน้าใช้ Table สำหรับจัดเก็บข้อมูลของตัวเอง และอ้างอิงด้วย `Product_ID`

| หน้า | Table | หมายเหตุ |
| ---- | ----- | -------- |
| Thermised | `prp1thermised` | มีตรวจ pH และมี Model ตรวจ pH ของน้ำ **ไม่มี** Sediment และ Water Add (ต่างจาก PRP3) |
| Recombine | `blendingprp1` | - |
| After Past | `buffer1_prp1` | เพิ่มการตรวจค่า **SNF** (ต่างจาก PRP3) |
| Standardized | `buffer2_prp1` | Super ตรวจสอบความถูกต้อง และระบบคำนวณ `BOM_Volume`, `Buffer_Volume` อัตโนมัติ |

ทุกหน้าแสดงข้อมูลรวมได้สูงสุด **8 Batch** ในหน้าเดียว

> **หมายเหตุ:** ชื่อ Table ข้างต้นใช้จัดเก็บข้อมูลของแต่ละหน้า ไม่ได้หมายถึงลำดับการส่งข้อมูลระหว่าง Table

### 🧪 4.1 Thermised

* ตรวจสอบค่า **pH**
* มี Model สำหรับตรวจสอบค่า **pH ของน้ำ**
* ไม่มีการตรวจสอบ **Sediment** และ **Water Add**

### 🥛 4.2 Recombine

* กรอกและตรวจสอบข้อมูลได้สูงสุด 8 Batch พร้อมกันในหน้าเดียว

### 🧪 4.3 After Past

* เพิ่มการตรวจสอบค่า **SNF**

### ⚙️ 4.4 Standardized

```text
Standardized
     │
     ▼
Super ตรวจสอบความถูกต้อง
     │
     ├──────────────┐
     ▼              ▼
BOM_Volume     Buffer_Volume
(คำนวณอัตโนมัติ)
```

ระบบคำนวณค่าอัตโนมัติเพื่อลดการคำนวณด้วยตนเองและลดข้อผิดพลาดในการบันทึกข้อมูล

---

## 📦 5. Finish-good

* รับ `Product_ID` ตั้งแต่ตอน Sup สร้าง (ไม่ได้รับจาก 4 หน้าใน Yield)
* เก็บข้อมูลเป็น **Row**
* Automation **`SaveBatch`** วนลูปสร้าง Row ตามจำนวน Batch ที่ผลิต

```text
Product_ID + จำนวน Batch
          │
          ▼
  Automation: SaveBatch
          │  (วนลูป)
          ▼
 Row ที่ 1, 2, 3 ... N
```

---

## 📋 6. Specification — PRP_Spec

ระบบตรวจสอบข้อมูลตามเกณฑ์จากตาราง `PRP_Spec` โดยต้องใช้ทั้ง 3 ค่าในการตรวจสอบ

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

## ⭐ Key Points

| รายการ | รายละเอียด |
| ------ | ---------- |
| **Product** | PRP1 Fresh Milk |
| **ตารางที่ใช้** | `prp3 table`, `Yield`, `Finish-good` (+ `PRP_Spec` เป็นตารางเกณฑ์) |
| **การสร้าง Product_ID** | Sup สร้างจาก Product + Date + Week + Loop + Group |
| **การบันทึก Product_ID** | บันทึกลง 3 ตารางพร้อมกัน: `prp3 table`, `Yield`, `Finish-good` |
| **prp3 table** | เก็บ Product_ID, Flavor, Batch เป็นคอลัมน์ สูงสุด 8 Batch |
| **Yield** | เก็บเป็นคอลัมน์ สูงสุด 8 Batch มี 4 หน้าย่อย |
| **Finish-good** | เก็บเป็น Row สร้างด้วย Automation `SaveBatch` |
| **Thermised** | `prp1thermised` — ตรวจ pH, มี Model pH น้ำ, ไม่มี Sediment และ Water Add |
| **Recombine** | `blendingprp1` |
| **After Past** | `buffer1_prp1` — เพิ่มค่า SNF |
| **Standardized** | `buffer2_prp1` — Super ตรวจสอบ, คำนวณ `BOM_Volume` และ `Buffer_Volume` |
| **Specification** | `PRP_Spec` ใช้ Source, Flavor, Size ตรวจสอบค่า |
