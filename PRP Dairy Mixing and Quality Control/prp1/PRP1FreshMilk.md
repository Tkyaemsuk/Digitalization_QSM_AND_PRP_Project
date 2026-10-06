# 🥛 PRP1 Fresh Milk

ระบบ **PRP1 สำหรับนมสด** ใช้กระบวนการผลิตที่มีลักษณะคล้ายกับ PRP3 โดยแต่ละกระบวนการมีตารางสำหรับจัดเก็บข้อมูลแยกกัน และใช้ `Product_ID` เป็นข้อมูลอ้างอิงในการเชื่อมโยงข้อมูล

---

## 🔄 Production Workflow

```text
                         Product_ID
                              │
          ┌───────────────────┼───────────────────┬───────────────────┐
          ▼                   ▼                   ▼                   ▼
      Thermised           Recombined          After Past          Standardized
          │                   │                   │                   │
          └───────────────────┴───────────────────┴───────────────────┘
                                      │
                                      ▼
                                 Finish-good
```

---

## 🧪 1. PRP1 Thermised

ตาราง `prp1thermised` ใช้สำหรับจัดเก็บข้อมูลในขั้นตอน **Thermised**

รูปแบบการทำงานคล้ายกับ PRP3 โดยระบบรับ `Product_ID` จากตาราง `Prp 3 table`

```text
Prp 3 table
     │
     │ Product_ID
     ▼
prp1thermised
     │
     ▼
Thermised Data
```

### การกรอกข้อมูล

* หน้ากรอกข้อมูลแสดงข้อมูลรวมได้สูงสุด **8 Batch**
* มีการตรวจสอบค่า **pH**
* มี Model สำหรับตรวจสอบค่า **pH ของน้ำ**
* แตกต่างจาก PRP3 โดย **ไม่มีการตรวจสอบค่า Sediment และ Water Add**

---

## 🥛 2. Blending PRP1 — Recombined

ตาราง `blendingprp1` ใช้สำหรับจัดเก็บข้อมูลในขั้นตอน **Recombined**

```text
Product_ID
     │
     ▼
blendingprp1
     │
     ▼
Recombined Data
```

หน้ากรอกข้อมูลสามารถแสดงข้อมูลรวมได้สูงสุด **8 Batch** ในหน้าเดียว เพื่อให้ผู้ใช้งานสามารถกรอกและตรวจสอบข้อมูลของแต่ละ Batch ได้พร้อมกัน

---

## 🧪 3. Buffer1_PRP1 — After Past

ตาราง `buffer1_prp1` ใช้สำหรับจัดเก็บข้อมูลในขั้นตอน **After Past**

```text
Product_ID
     │
     ▼
buffer1_prp1
     │
     ▼
After Past Data
```

ในขั้นตอนนี้มีการเพิ่มการตรวจสอบค่า **SNF** ซึ่งแตกต่างจากกระบวนการของ PRP3

---

## ⚙️ 4. Buffer2_PRP1 — Standardized

ตาราง `buffer2_prp1` ใช้สำหรับจัดเก็บข้อมูลในขั้นตอน **Standardized**

ในขั้นตอนนี้ **Super** จะเป็นผู้ตรวจสอบความถูกต้องของข้อมูล และระบบจะคำนวณค่าที่เกี่ยวข้องโดยอัตโนมัติ

```text
Standardized
     │
     ▼
Super ตรวจสอบ
     │
     ▼
ตรวจสอบความถูกต้อง
     │
     ├──────────────┐
     ▼              ▼
BOM_Volume     Buffer_Volume
```

ระบบจะคำนวณ

* `BOM_Volume`
* `Buffer_Volume`

เพื่อลดการคำนวณด้วยตนเองและช่วยลดข้อผิดพลาดในการบันทึกข้อมูล

---

## 📋 5. Specification — PRP_Spec

ระบบมีการตรวจสอบข้อมูลตาม Specification จากตาราง `PRP_Spec`

`PRP_Spec` ใช้เป็นเกณฑ์สำหรับตรวจสอบข้อมูลต่อไปนี้

| Specification | รายละเอียด             |
| ------------- | ---------------------- |
| `Source`      | แหล่งที่มาของผลิตภัณฑ์ |
| `Flavor`      | รสชาติ                 |
| `Size`        | ขนาด                   |

```text
                         PRP_Spec
                            │
              ┌─────────────┼─────────────┐
              ▼             ▼             ▼
           Source         Flavor         Size
              │             │             │
              └─────────────┼─────────────┘
                            ▼
                      ตรวจสอบ Spec
```

---

## 🗃️ 6. Database Relationship

ภาพรวมการจัดเก็บข้อมูลของ **PRP1 นมสด**

`Product_ID` เป็นข้อมูลอ้างอิงหลักที่ใช้เชื่อมโยงข้อมูล โดยแต่ละตารางใช้สำหรับจัดเก็บข้อมูลของแต่ละกระบวนการ

### ส่วนที่ 1

```text
                         Prp 3 table
                              │
                              │ Product_ID
                              ▼
                         Product_ID
                              │
          ┌───────────────────┼───────────────────┬───────────────────┐
          │                   │                   │                   │
          ▼                   ▼                   ▼                   ▼
    prp1thermised       blendingprp1        buffer1_prp1        buffer2_prp1
      Thermised           Recombined           After Past          Standardized
          │                   │                   │                   │
          └───────────────────┴───────────────────┴───────────────────┘
                                      │
                                      ▼
                                 Finish-good
```

> **หมายเหตุ:** `prp1thermised`, `blendingprp1`, `buffer1_prp1` และ `buffer2_prp1` เป็นชื่อ Table ที่ใช้จัดเก็บข้อมูลของแต่ละหน้า ไม่ได้หมายถึงลำดับการส่งข้อมูลระหว่าง Table

---

## ⭐ Key Points

| รายการ                      | รายละเอียด                                   |
| --------------------------- | -------------------------------------------- |
| **Product**                 | PRP1 Fresh Milk                              |
| **Product_ID**              | รับจาก `Prp 3 table`                         |
| **Thermised**               | `prp1thermised`                              |
| **Recombined**              | `blendingprp1`                               |
| **After Past**              | `buffer1_prp1`                               |
| **Standardized**            | `buffer2_prp1`                               |
| **Batch Display**           | แสดงรวมได้สูงสุด 8 Batch                     |
| **Thermised**               | มี Model ตรวจสอบค่า pH น้ำ                   |
| **Thermised ต่างจาก PRP3**  | ไม่มี Sediment และ Water Add                 |
| **After Past ต่างจาก PRP3** | เพิ่มค่า SNF                                 |
| **Standardized**            | Super ตรวจสอบความถูกต้อง                     |
| **Calculation**             | คำนวณ `BOM_Volume` และ `Buffer_Volume`       |
| **Specification**           | `PRP_Spec` ใช้เป็นเกณฑ์ Source, Flavor, Size |
