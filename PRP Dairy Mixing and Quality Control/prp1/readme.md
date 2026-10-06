# 🏭 Project Overview — PRP Dairy Mixing and Quality Control

## 📌 Overview

**PRP 1** คืออาคารการผลิตที่ 1 ซึ่งรองรับการผลิตผลิตภัณฑ์ ได้แก่

* 🥛 นมสด (Fresh Milk)
* 🌱 นมถั่วเหลือง (Soy Milk)
* 🥛 นมเปรี้ยว (Fermented Milk)

กระบวนการผลิตของ PRP1 แบ่งออกเป็น 2 ฝั่งหลัก ได้แก่

| Production Area | Product                                         |
| --------------- | ----------------------------------------------- |
| **Blending**    | Soy Milk                                        |
| **Recombine**   | Fresh Milk และกระบวนการที่มีลักษณะเดียวกับ PRP3 |

ระบบ **PRP Dairy Mixing and Quality Control** ถูกพัฒนาขึ้นเพื่อจัดเก็บข้อมูลการผลิตและข้อมูลที่เกี่ยวข้องกับการควบคุมคุณภาพในรูปแบบ Digital แทนการจัดเก็บข้อมูลด้วยกระดาษ

---

# 🎯 Why Was the System Developed?

ปัจจุบันข้อมูลการผลิตมีการจัดเก็บในรูปแบบ **กระดาษ (Paper-based Data)** ทำให้เกิดข้อจำกัดในการทำงาน เช่น

* การค้นหาข้อมูลย้อนหลังทำได้ยาก
* การตรวจสอบข้อมูลใช้เวลานาน
* การรวบรวมข้อมูลเพื่อนำไปใช้งานต่อทำได้ไม่สะดวก
* ข้อมูลกระจายอยู่ในเอกสารหลายส่วน
* มีการใช้กระดาษในการจัดเก็บข้อมูลจำนวนมาก

จึงได้มีการพัฒนาระบบ **PRP Dairy Mixing and Quality Control** เพื่อเปลี่ยนการจัดเก็บข้อมูลจาก Paper-based เป็น Digital Data

### ระบบช่วยแก้ปัญหา

* 📄 ลดการใช้กระดาษ
* 🔎 ค้นหาข้อมูลการผลิตได้สะดวกขึ้น
* 📊 ตรวจสอบข้อมูลย้อนหลังได้ง่ายขึ้น
* 💾 จัดเก็บข้อมูลไว้ใน Database
* 🔄 สามารถนำข้อมูลไปใช้งานต่อในส่วนอื่นได้ง่ายขึ้น
* ⚡ ลดเวลาในการค้นหาและตรวจสอบข้อมูล

---

# 👥 System Users

ผู้ใช้งานหลักของระบบ ได้แก่

| User                 | Responsibility                                         |
| -------------------- | ------------------------------------------------------ |
| **SUP (Supervisor)** | สร้าง Product_ID และกำหนดข้อมูลที่เกี่ยวข้องกับการผลิต |
| **Operator**         | บันทึกข้อมูลการผลิตในแต่ละขั้นตอน                      |

---

# 🔄 Overall Production Workflow

## 🥛 Fresh Milk — Recombine

กระบวนการผลิตนมสดของ PRP1 มีลำดับการทำงานดังนี้

```text
SUP Creates Product_ID
          │
          ▼
      Thermised
          │
          ▼
       Recombine
          │
          ▼
      After Past
          │
          ▼
     Standardized
          │
          ▼
      Finish-good
```

กระบวนการของนมสดในส่วน **Recombine** มีลักษณะเดียวกับกระบวนการของ **PRP3** จึงมีการใช้โครงสร้างข้อมูลบางส่วนร่วมกัน

---

## 🌱 Soy Milk — Blending

กระบวนการผลิตนมถั่วเหลืองของ PRP1 มีลำดับการทำงานดังนี้

```text
SUP Creates Product_ID
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
      Finish-good
```

---

# 🆔 Product_ID

**Product_ID** เป็นข้อมูลสำคัญที่ใช้เชื่อมโยงข้อมูลการผลิตในแต่ละขั้นตอนและแต่ละตาราง

ทุกตารางที่เกี่ยวข้องกับกระบวนการผลิตจะมีการจัดเก็บ **Product_ID**

เมื่อผู้ใช้งานค้นหาด้วย Product_ID ระบบสามารถใช้เลขดังกล่าวเพื่อค้นหาข้อมูลการผลิตที่เกี่ยวข้องได้

```text
                          Product_ID
                              │
        ┌─────────────────────┼──────────────│───────────────┐
        ▼                     ▼              ▼               ▼
    Thermised             Recombine      After Past    Standardized
        │                     │              │              │
        └─────────────────────┴──────────────┴──────────────┘
                              │
                              ▼
                         Finish-good

> Product_ID ทำหน้าที่เป็นตัวอ้างอิงร่วมระหว่างข้อมูลในแต่ละขั้นตอนและตาราง

---

# ⚙️ Manual vs Automatic Data

ข้อมูลภายในระบบมีทั้งส่วนที่ผู้ใช้งานกรอกเอง และส่วนที่ระบบสร้างหรือคำนวณให้อัตโนมัติ

## 👤 Manual Data

ผู้ใช้งานเป็นผู้บันทึกข้อมูลในส่วนต่าง ๆ เช่น

* Operator บันทึกข้อมูลการผลิตในแต่ละขั้นตอน
* SUP สร้าง Product_ID
* SUP กำหนดข้อมูลที่เกี่ยวข้องกับการผลิต

---

## 🤖 Automatic Data

ระบบมีการสร้างและคำนวณข้อมูลบางส่วนโดยอัตโนมัติ

### Product_ID / Batch

ในส่วนของ **Soy Milk** ระบบมีการวนลูปเลข Batch และจัดเก็บข้อมูลเป็น **Row** เพื่อให้ SUP ไม่จำเป็นต้องเพิ่มข้อมูลทีละ Batch

```text
SUP Creates Product_ID
          │
          ▼
   Generate Batch
          │
          ▼
   ┌──────┼──────┐
   ▼      ▼      ▼
 Batch 1 Batch 2 Batch 3
   │      │      │
   └──────┼──────┘
          ▼
       Database
```

### Finish-good

เมื่อ SUP สร้าง Product_ID ระบบจะวนลูปและสร้างข้อมูลที่เกี่ยวข้องใน **Finish-good** ให้อัตโนมัติ

อย่างไรก็ตาม หากเกิดปัญหาและจำเป็นต้องตรวจสอบผลิตภัณฑ์ใหม่ Operator สามารถสร้างข้อมูลที่จำเป็นเพิ่มเติมเองได้

### BOM / Buffer Volume

ในส่วนของ SUP มีข้อมูล **BOM** และ **Buffer Volume (buffer_vol)** โดย `buffer_vol` จะถูกคำนวณโดยระบบตามข้อมูลที่กำหนด

---

# 🗃️ Database Relationship

ข้อมูลของ PRP1 แบ่งตามลักษณะผลิตภัณฑ์และกระบวนการผลิต

## 🥛 Fresh Milk — Recombine

เนื่องจากกระบวนการผลิตนมสดของ PRP1 มีลักษณะเดียวกับ PRP3 จึงใช้โครงสร้างตารางร่วมกันในบางส่วน

### Prp 3 table

ใช้สำหรับเก็บข้อมูลพื้นฐานของ Product ได้แก่

```text
Product_ID
Week
Loop
Group
Flavor
Batch
```

ข้อมูล `Product_ID` จาก **Prp 3 table** จะถูกนำไปใช้ในตารางที่เกี่ยวข้อง

```text
                 Prp 3 table
                      │
          ┌───────────┴───────────┐
          │                       │
          ▼                       ▼
        Yield                Finish-good
          │                       │
          └── Product_ID ─────────┘
```

### Yield

ตาราง **Yield** จะรับ `Product_ID` จาก **Prp 3 table** เพื่อเชื่อมโยงข้อมูล Yield กับ Product ที่กำลังผลิต

### Finish-good

ตาราง **Finish-good** จะรับ `Product_ID` จาก **Prp 3 table** เพื่อเชื่อมโยงข้อมูลผลิตภัณฑ์สำเร็จรูปกับ Product ที่ผลิต

---

# 📋 PRP_Spec

ตาราง **PRP_Spec** ใช้เป็นแหล่งข้อมูลสำหรับกำหนดเกณฑ์หรือ Specification ที่ใช้ในการตรวจสอบ

ข้อมูลหลักที่เกี่ยวข้อง ได้แก่

```text
Source
Flavor
Size
```

แนวคิดการทำงาน

```text
PRP_Spec
   │
   ├── Source
   ├── Flavor
   └── Size
        │
        ▼
   Specification
        │
        ▼
    Data Checking
```

---

# 🌱 Soy Milk — Database

ข้อมูลการผลิตนมถั่วเหลืองของ PRP1 จะจัดเก็บในตาราง

```text
Prp 1 table
```

โดย **Finish-good** จะรับ `Product_ID` จาก **Prp 1 table**

```text
                 Prp 1 table
                      │
                      │ Product_ID
                      ▼
                 Finish-good
```

ส่วน **PRP_Spec** ยังคงใช้เป็นแหล่งข้อมูล Specification สำหรับการตรวจสอบ เช่น

```text
PRP_Spec
   │
   ├── Source
   ├── Flavor
   └── Size
```

---

# 🧩 Overall Database Relationship

ภาพรวมความสัมพันธ์ของข้อมูลสามารถสรุปได้ดังนี้

```text
                         Product_ID
                              │
             ┌────────────────┴────────────────┐
             │                                 │
             ▼                                 ▼
       Fresh Milk                         Soy Milk
       (Recombine)                        (Blending)
             │                                 │
             ▼                                 ▼
       Prp 3 table                         Prp 1 table
             │                                 │
       ┌─────┴─────┐                           │
       ▼           ▼                           ▼
     Yield     Finish-good                Finish-good
       │           ▲                           ▲
       │           │                           │
       └───────────┴───────────────────────────┘

                         PRP_Spec
                            │
                 ┌──────────┼──────────┐
                 ▼          ▼          ▼
               Source     Flavor      Size
                            │
                            ▼
                    Specification Check
```

> **หมายเหตุ:** `Finish-good` เป็นตารางที่ใช้ร่วมกันสำหรับข้อมูลจากหลาย Plans โดย Product_ID ถูกใช้เป็นข้อมูลอ้างอิงเพื่อเชื่อมโยงกลับไปยังข้อมูลของแต่ละ Plan

---

# 🎯 Project Goals

ระบบ **PRP Dairy Mixing and Quality Control** มีเป้าหมายหลักในการ

* เปลี่ยนการจัดเก็บข้อมูลจาก Paper-based เป็น Digital
* ลดการใช้กระดาษในกระบวนการผลิต
* ทำให้ค้นหาข้อมูลด้วย Product_ID ได้สะดวก
* เพิ่มความสะดวกในการตรวจสอบข้อมูลย้อนหลัง
* ลดเวลาในการค้นหาและรวบรวมข้อมูล
* ทำให้ข้อมูลสามารถนำไปใช้งานต่อในส่วนต่าง ๆ ได้ง่ายขึ้น
* รองรับการจัดเก็บข้อมูลของกระบวนการผลิตทั้ง Fresh Milk และ Soy Milk
* รองรับการทำงานของ SUP และ Operator
