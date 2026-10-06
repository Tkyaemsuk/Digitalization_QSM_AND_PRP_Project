# 🌱 Create Tag Plant 1 — Soy Milk

ระบบสำหรับสร้าง **Product Date, Batch และ Product ID** สำหรับกระบวนการผลิต **PRP1**

รองรับผลิตภัณฑ์:

* 🌱 **Soy Milk**
* 🥛 **Fresh Milk**

ระบบครอบคลุมตั้งแต่การสร้าง **Product Date โดย SUP**, การสร้าง **Batch อัตโนมัติ**, การลงข้อมูลตาม Batch, การเลือก **Group** ไปจนถึงการสร้าง **Product ID** ก่อนเข้าสู่กระบวนการผลิตขั้นตอนถัดไป

---

## 📌 Overview

กระบวนการผลิต **PRP1** เริ่มต้นจากหน้า **Create Tag Plant 1 Soy** โดย `SUP (Supervisor)` เป็นผู้กำหนดข้อมูลสำหรับรอบการผลิต

ข้อมูลหลักที่ใช้ในการสร้าง Product Date ได้แก่:

| Field            | Description            |
| ---------------- | ---------------------- |
| **Product Date** | วันที่ผลิต             |
| **Loop**         | รอบการผลิต             |
| **Week**         | สัปดาห์การผลิต         |
| **Start Batch**  | หมายเลข Batch เริ่มต้น |
| **Batch Count**  | จำนวน Batch หลัก       |
| **Product**      | ผลิตภัณฑ์              |
| **Batch Size**   | ขนาดของ Batch          |

จากข้อมูลดังกล่าว ระบบจะสร้าง **Product Date และ Batch** ลงในตาราง `prp1_table`

> **หมายเหตุ:** ในขั้นตอนการสร้าง Product Date จะยังไม่กำหนด `Group` เนื่องจาก Batch สามารถเปลี่ยน Group ได้ในภายหลัง

---

## 🥛 Production Flow

ภาพรวมกระบวนการผลิต PRP1:

```text
Create Tag Plant 1 Soy
          │
          ▼
    SUP สร้าง Product Date
          │
          ▼
      Generate Batch
          │
          ▼
      Save to prp1_table
          │
          ▼
    ผู้ใช้งานเลือก Batch
          │
          ▼
        Storage
          │
          ▼
        Blending
          │
          ▼
       After Past
          │
          ▼
      Standardized
          │
          ▼
       เลือก Group
          │
          ▼
   Generate Product ID
          │
          ▼
  ลงข้อมูล Standardized
```

---

## 📅 Product Date

Product Date ถูกสร้างจากข้อมูลที่ `SUP` กำหนดในหน้า **Create Tag Plant 1 Soy**

### Input

```text
Product Date = 7/30/2026
Loop         = 1 Week
Week         = 31
```

ระบบจะนำข้อมูลมาสร้าง `Product_Date` ในรูปแบบ:

```text
300726-31Th1
```

### Product Date Format

```text
DDMMYY-WW + Loop
```

ตัวอย่าง:

```text
300726-31Th1
```

ประกอบด้วย:

```text
30      = วันที่
07      = เดือน
26      = ปี
31      = Week
Th1     = Loop
```

ดังนั้น:

```text
300726-31Th1
```

จะถูกใช้เป็นค่า **Product_Date** ภายใน `prp1_table`

---

## 🔢 Batch

**Batch** คือหน่วยการผลิตที่ใช้สำหรับติดตามข้อมูลตลอดกระบวนการ PRP1

Batch จะถูกสร้างพร้อมกับ Product Date และจัดเก็บในรูปแบบ **1 Batch = 1 Row**

ตัวอย่าง:

```text
Product_Date   Batch
300726-31Th1   125-1
300726-31Th1   125-2
300726-31Th1   126-1
300726-31Th1   126-2
```

### ✂️ Batch Split

กรณีที่ Batch หลักต้องถูกแบ่งออกเป็น 2 ส่วน ระบบจะแบ่งเป็น:

```text
125-1
125-2
```

โดย:

```text
125 = Batch หลัก
-1  = Batch ย่อยส่วนที่ 1
-2  = Batch ย่อยส่วนที่ 2
```

---

## 🔢 Batch Generation

ข้อมูลที่ใช้ในการสร้าง Batch:

| Input            | Description            |
| ---------------- | ---------------------- |
| **Start Batch**  | หมายเลข Batch เริ่มต้น |
| **Batch Count**  | จำนวน Batch หลัก       |
| **Product**      | ผลิตภัณฑ์              |
| **Batch Size**   | ขนาด Batch             |
| **Product Date** | วันที่ผลิต             |

### ตัวอย่าง

กำหนด:

```text
Start Batch = 125
Batch Count = 2
```

ระบบจะสร้าง Batch หลัก:

```text
125
126
```

หากกำหนดให้ Split Batch:

```text
125-1
125-2
126-1
126-2
```

ดังนั้นระบบจะสร้างทั้งหมด:

```text
4 Rows
```

---

## 🧮 Batch Count Logic

> **Batch Count หมายถึงจำนวน Batch หลัก ไม่ใช่จำนวน Row ที่ระบบสร้าง**

ตัวอย่าง:

```text
Start Batch = 125
Batch Count = 2
```

หมายถึง:

```text
Batch หลักที่ 1 = 125
Batch หลักที่ 2 = 126
```

เมื่อ Split Batch:

```text
125
 ├── 125-1
 └── 125-2

126
 ├── 126-1
 └── 126-2
```

ผลลัพธ์:

```text
125-1
125-2
126-1
126-2
```

รวมทั้งหมด **4 Rows**

---

## 📝 Normal Batch

กรณีที่ไม่ต้องการแบ่ง Batch เป็น Batch ย่อย ระบบจะสร้างเฉพาะ Batch หลัก

ตัวอย่าง:

```text
Start Batch = 125
Batch Count = 1
Split       = No
```

ผลลัพธ์:

```text
125
```

จะไม่สร้าง:

```text
125-1
125-2
```

ดังนั้นระบบรองรับทั้ง:

### Normal Batch

```text
125
```

### Split Batch

```text
125-1
125-2
```

---

## 🏷️ Product & Batch Size

เมื่อ `SUP` กำหนด Product และ Batch Size ระบบจะนำข้อมูลดังกล่าวไปใช้กับ Batch ที่สร้างจาก Product Date เดียวกัน

ตัวอย่าง:

```text
Product    = Soy Milk
Batch Size = 30
```

ระบบสร้าง:

```text
125-1
125-2
126-1
126-2
```

ข้อมูลที่บันทึกในแต่ละ Row:

| Batch | Product  | Batch Size |
| ----- | -------- | ---------: |
| 125-1 | Soy Milk |         30 |
| 125-2 | Soy Milk |         30 |
| 126-1 | Soy Milk |         30 |
| 126-2 | Soy Milk |         30 |

---

## 🆔 Product ID

**Product ID จะยังไม่ถูกสร้างในขั้นตอน Create Product Date**

ระบบจะสร้าง Product ID เมื่อผู้ใช้งานเข้าสู่ขั้นตอน **Standardized** และเลือก `Group` แล้ว

### เหตุผล

Batch เดียวกันสามารถมีการเปลี่ยน Group ได้ในภายหลัง ดังนั้นจึงไม่ควรกำหนด Group ตั้งแต่ตอนสร้าง Batch

---

### Product ID Format

```text
[Product Date]-[Group]
```

ตัวอย่าง:

```text
Product Date = 300726-31Th1
Group        = C
```

ระบบจะสร้าง:

```text
300726-31Th1-C
```

### ตัวอย่างเต็ม

```text
Product Date = 300726-31Th1
Batch        = 125-1
Group        = C
```

Product ID:

```text
300726-31Th1-C
```

> **หมายเหตุ:** `Batch` และ `Product ID` เป็นคนละข้อมูลกัน
>
> * **Batch** ใช้ระบุหน่วยการผลิต
> * **Product ID** ใช้ระบุผลิตภัณฑ์ตาม Product Date และ Group

---

## 🗃️ Data Storage

ข้อมูลหลักของกระบวนการ Create Tag Plant 1 ถูกจัดเก็บใน:

```text
prp1_table
```

ส่วนข้อมูลที่เกี่ยวข้องกับผลิตภัณฑ์สำเร็จรูปจะถูกจัดเก็บหรือเชื่อมโยงกับ:

```text
Finish-good
```

> `Finish-good` เป็นตารางที่ใช้ร่วมกันทั้ง 3 Plans โดยรายละเอียดโครงสร้างและการทำงานของตารางสามารถดูเพิ่มเติมได้ในเอกสาร **PRP3**

---

## 📊 `prp1_table` Structure

### Initial Data

ในช่วงที่สร้าง Product Date และ Batch ค่า `Group` และ `Product ID` จะยังไม่มีค่า

| Product_Date | Batch | Product  | Batch Size | Group | Product ID |
| ------------ | ----- | -------- | ---------: | ----- | ---------- |
| 300726-31Th1 | 125-1 | Soy Milk |         30 | -     | -          |
| 300726-31Th1 | 125-2 | Soy Milk |         30 | -     | -          |
| 300726-31Th1 | 126-1 | Soy Milk |         30 | -     | -          |
| 300726-31Th1 | 126-2 | Soy Milk |         30 | -     | -          |

### หลังเลือก Group

เมื่อผู้ใช้งานเข้าสู่ Standardized และเลือก:

```text
Group = C
```

ระบบจะสร้าง Product ID:

```text
300726-31Th1-C
```

ตัวอย่าง:

| Product_Date | Batch | Product  | Batch Size | Group | Product ID     |
| ------------ | ----- | -------- | ---------: | ----- | -------------- |
| 300726-31Th1 | 125-1 | Soy Milk |         30 | C     | 300726-31Th1-C |

---

## 📊 Row-Based Data Structure

ระบบจัดเก็บข้อมูล Batch แบบ **Row-Based Structure**

แทนการสร้าง Column แยกสำหรับแต่ละ Batch

### ตัวอย่าง

```text
Batch 125-1 → 1 Row
Batch 125-2 → 1 Row
Batch 126-1 → 1 Row
Batch 126-2 → 1 Row
```

หากมี 13 Batch:

```text
13 Batch
   ↓
13 Rows
```

ไม่จำเป็นต้องเพิ่ม Column ใหม่สำหรับแต่ละ Batch

### ข้อดี

* ✅ ลดจำนวน Column ใน Database
* ✅ รองรับจำนวน Batch ที่เพิ่มขึ้น
* ✅ รองรับการ Split Batch
* ✅ Query ข้อมูลง่าย
* ✅ เพิ่มข้อมูลในอนาคตได้ยืดหยุ่น
* ✅ ลดความซับซ้อนของ Database Structure

---

## ⚙️ Automation

ระบบใช้ **Budibase Automation** สำหรับสร้าง Batch และบันทึกข้อมูลลง `prp1_table`

### Automation Name

```text
Generate Product Batches
```

### หน้าที่ของ Automation

1. รับข้อมูลที่ SUP กำหนด
2. สร้าง Product Date
3. สร้าง Batch ตามจำนวนที่กำหนด
4. ตรวจสอบการ Split Batch
5. สร้าง Row สำหรับแต่ละ Batch
6. บันทึก Product Date
7. บันทึก Product
8. บันทึก Batch Size
9. บันทึกข้อมูลลง `prp1_table`

> ⚠️ Automation นี้ **ยังไม่สร้าง Product ID** เนื่องจากในขั้นตอนนี้ยังไม่มีการกำหนด Group

---

## 🔄 System Workflow

```text
┌──────────────────────────────┐
│ Create Tag Plant 1 Soy       │
│ SUP                          │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Product Date                 │
│                              │
│ 7/30/2026                    │
│ Loop = 1 Week                │
│ Week = 31                    │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Generate Product_Date        │
│                              │
│ 300726-31Th1                 │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Generate Batch               │
│                              │
│ 125-1                        │
│ 125-2                        │
│ 126-1                        │
│ 126-2                        │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Save to prp1_table           │
│                              │
│ Product Date                 │
│ Batch                        │
│ Product                      │
│ Batch Size                   │
└──────────────┬───────────────┘
               │
               ▼
        ผู้ใช้งานเลือก Batch
               │
               ▼
┌──────────────────────────────┐
│ Storage                      │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Blending                     │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ After Past                   │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Standardized                 │
│                              │
│ Select Group                 │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Generate Product ID          │
│                              │
│ 300726-31Th1-C               │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ Standardized Data            │
└──────────────────────────────┘
```

---

# 📋 Example

## 1. SUP สร้าง Product Date

```text
Product Date = 7/30/2026
Loop         = 1 Week
Week         = 31
```

ระบบสร้าง:

```text
Product_Date = 300726-31Th1
```

---

## 2. กำหนด Batch

```text
Start Batch = 125
Batch Count = 2
Product     = Soy Milk
Batch Size  = 30
Split       = Yes
```

ระบบสร้าง:

| Product Date | Batch | Product  | Batch Size |
| ------------ | ----- | -------- | ---------: |
| 300726-31Th1 | 125-1 | Soy Milk |         30 |
