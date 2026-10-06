# 🌱 Create Tag Plant 1 — Soy Milk

ระบบสำหรับสร้าง **Product ID** และจัดการ Batch ของกระบวนการผลิต **PRP1**
รองรับการผลิตทั้ง **นมถั่วเหลือง (Soy Milk)** และ **นมสด (Fresh Milk)**

---

## 📌 Overview

ในกระบวนการผลิตของ **PRP1** มีการผลิตทั้งนมถั่วเหลืองและนมสด โดยแบ่งกระบวนการผลิตออกเป็นทั้งหมด **5 Groups**

| Group | รายละเอียด         |
| :---: | ------------------ |
|   A   | Production Group A |
|   B   | Production Group B |
|   C   | Production Group C |
|   D   | Production Group D |
|   E   | Production Group E |

สำหรับ **นมถั่วเหลือง** กระบวนการผลิตจะเริ่มต้นจาก **Soy Base 1 Batch** จากนั้นเมื่อเข้าสู่กระบวนการ **Buffer** จะแบ่งออกเป็น

```text
Soy Base
   │
   ▼
1 Batch
   │
   ▼
Buffer
 ┌─┴─┐
 ▼   ▼
/1  /2
```

---

## 🥛 Soy Milk Production Flow

การสร้าง Product ID ของนมถั่วเหลืองจะเริ่มจากการสร้าง **Product Date** ก่อน

ในขั้นตอนแรก **ยังไม่มีการกำหนด Group**

เนื่องจากในการผลิต 1 Batch สามารถมีการเปลี่ยน Group ได้ จึงกำหนด Group ในขั้นตอนสุดท้าย หลังจากเลือก Group แล้ว ระบบจึงนำ Group มาสร้างเป็น Product ID

```text
Create Product
      │
      ▼
 Product Date
      │
      ▼
 Week / Loop
      │
      ▼
Generate Batches
      │
      ▼
 Select Group
      │
      ▼
Generate Product ID
      │
      ▼
 Save Data
   ┌──┴───────────┐
   ▼              ▼
prp1_table    Finish-good
```

---

# 🆔 Product ID

เมื่อผู้ใช้งานเลือก Group แล้ว ระบบจะนำ **Product Date + Group** มาสร้างเป็น **Product ID**

### ตัวอย่างข้อมูล

```text
Product Date = 300726-31Th1
Week         = 1
Loop         = 1
Size         = 30
Flavor       = D
Batch        = 123
Group        = C
```

ระบบจะสร้าง Product ID เป็น

```text
300726-31Th1-C
```

### Product ID Format

```text
[Product Date]-[Group]
```

ตัวอย่าง

```text
300726-31Th1-C
```

---

# 🗃️ Data Storage

ข้อมูลจะถูกจัดเก็บลงในตาราง

* `prp1_table`
* `Finish-good`

> **Finish-good** เป็นตารางเดียวกันที่ใช้ร่วมกันทั้ง 3 Plans โดยรายละเอียดของตารางและการทำงานได้อธิบายไว้ใน **PRP3**

---

# 📊 Row-Based Data Structure

ในกระบวนการผลิตมีประมาณ **13 Batch**

หากออกแบบ Database โดยสร้าง Column แยกสำหรับแต่ละ Batch จะทำให้มีจำนวน Column เพิ่มขึ้นจำนวนมาก และทำให้การเพิ่มข้อมูลในอนาคตทำได้ยาก

ดังนั้นระบบจึงเลือกจัดเก็บข้อมูลในรูปแบบ **Row**

ตัวอย่าง

```text
Batch 123-1
Batch 123-2
Batch 124-1
Batch 124-2
...
```

### ข้อดี

* ✅ ลดจำนวน Column ใน Database
* ✅ รองรับจำนวน Batch ที่เพิ่มขึ้น
* ✅ สามารถเพิ่มข้อมูลได้อย่างยืดหยุ่น
* ✅ ง่ายต่อการ Query และจัดการข้อมูล
* ✅ รองรับการแบ่ง Batch
* ✅ ลดความซับซ้อนของโครงสร้างตาราง

---

# ⚙️ Automation

ระบบใช้ **Budibase Automation** ในการสร้าง Batch และบันทึกข้อมูลเป็น Row

### Automation Name

```text
Generate Product Batches
```

Automation นี้ทำหน้าที่สร้างข้อมูล Batch ตามข้อมูลที่ **SUP (Supervisor)** กำหนด และบันทึกข้อมูลลงในรูปแบบ Row

---

# 🔢 Batch Generation

ผู้ใช้งานสามารถกำหนดข้อมูลสำหรับสร้าง Batch ได้จาก

| Input           | Description                  |
| --------------- | ---------------------------- |
| **Start Batch** | เลข Batch ที่ต้องการเริ่มต้น |
| **Batch Count** | จำนวน Batch ที่ต้องการสร้าง  |
| **Product**     | Product ที่ต้องการผลิต       |
| **Batch Size**  | ขนาดของ Batch                |

---

## 🧮 Batch Count Logic

เมื่อมีการระบุ **Start Batch** และ **Batch Count** ระบบจะสร้าง Batch และแบ่งเป็น `/1` และ `/2` ให้อัตโนมัติ

### ตัวอย่าง

กำหนด

```text
Start Batch = 125
Batch Count = 2
```

ระบบจะสร้างทั้งหมด **4 Rows**

```text
125-1
125-2
126-1
126-2
```

### Flow

```text
Start Batch = 125
       │
       ▼
Batch Count = 2
       │
       ▼
Generate Product Batches
       │
 ┌─────┼─────┐
 ▼     ▼     ▼
125-1 125-2 126-1
              │
              ▼
            126-2
```

---

# 📝 Normal Batch

หาก Batch นั้น **ไม่ต้องการแบ่ง Batch** ให้กรอกเฉพาะ **Start Batch**

โดยไม่ต้องกรอก **Batch Count**

### ตัวอย่าง

```text
Start Batch = 125
Batch Count = ไม่ระบุ
```

ระบบจะสร้างเป็น

```text
125
```

แทนที่จะเป็น

```text
125-1
125-2
```

---

# 🏷️ Product & Batch Size

เมื่อผู้ใช้งานเลือก **Product** และระบุ **Batch Size** ระบบจะนำข้อมูลดังกล่าวไปกำหนดให้กับทุก Row ที่ถูกสร้างขึ้น

### ตัวอย่าง

```text
Product    = Soy Milk
Batch Size = 30
```

เมื่อระบบ Generate Batch

```text
125-1
125-2
126-1
126-2
```

ข้อมูล Product และ Batch Size จะถูกกำหนดให้กับทุก Row โดยอัตโนมัติ

---

# 🔄 System Workflow

```text
              ┌──────────────────┐
              │  Create Product  │
              └────────┬─────────┘
                       │
                       ▼
              ┌──────────────────┐
              │   Product Date   │
              └────────┬─────────┘
                       │
                       ▼
              ┌──────────────────┐
              │    Week / Loop   │
              └────────┬─────────┘
                       │
                       ▼
        ┌────────────────────────────┐
        │ Generate Product Batches   │
        └─────────────┬──────────────┘
                      │
                      ▼
             ┌─────────────────┐
             │ Product / Size  │
             └────────┬────────┘
                      │
                      ▼
             ┌─────────────────┐
             │   Select Group  │
             └────────┬────────┘
                      │
                      ▼
             ┌─────────────────┐
             │ Generate        │
             │ Product ID      │
             └────────┬────────┘
                      │
                      ▼
          ┌─────────────────────────┐
          │       Save Data         │
          │                         │
          │  • prp1_table           │
          │  • Finish-good           │
          └─────────────────────────┘
```

---

# 📋 Example

### Input

```text
Start Batch = 125
Batch Count = 2
Product     = Soy Milk
Batch Size  = 30
Group       = C
```

### Generated Rows

| Batch | Product  | Batch Size | Group |
| ----- | -------- | ---------: | :---: |
| 125-1 | Soy Milk |         30 |   C   |
| 125-2 | Soy Milk |         30 |   C   |
| 126-1 | Soy Milk |         30 |   C   |
| 126-2 | Soy Milk |         30 |   C   |

### Generated Product ID

```text
300726-31Th1-C
```

---

# 🎯 Key Features

* 🌱 รองรับการสร้าง Product ID สำหรับ Soy Milk
* 🥛 รองรับกระบวนการผลิต PRP1
* 🔢 สร้าง Batch อัตโนมัติ
* ✂️ รองรับการแบ่ง Batch เป็น `/1` และ `/2`
* ⚙️ ใช้ Automation `Generate Product Batches`
* 📊 จัดเก็บข้อมูลแบบ Row-Based
* 🏷️ Generate Product และ Batch Size ให้ทุก Row
* 🆔 Generate Product ID จาก Product Date และ Group
* 💾 บันทึกข้อมูลลง `prp1_table`
* 📦 รองรับการบันทึกลง `Finish-good`
* 🔄 รองรับการเพิ่มจำนวน Batch ในอนาคต

---

# 🧩 Summary

ระบบ **Create Tag Plant 1 — Soy Milk** ถูกออกแบบมาเพื่อให้การสร้าง Product ID และ Batch ในกระบวนการผลิต PRP1 มีความยืดหยุ่นและรองรับการขยายข้อมูลในอนาคต

### Process Summary

```text
Product Date
     │
     ▼
Week / Loop
     │
     ▼
Batch Generation
     │
     ▼
Generate Rows
     │
     ▼
Product / Batch Size
     │
     ▼
Select Group
     │
     ▼
Generate Product ID
     │
     ▼
Save to Database
     │
 ┌───┴────────────┐
 ▼                ▼
prp1_table    Finish-good
```

> **Automation:** `Generate Product Batches`
> **Main Table:** `prp1_table`
> **Shared Table:** `Finish-good`
