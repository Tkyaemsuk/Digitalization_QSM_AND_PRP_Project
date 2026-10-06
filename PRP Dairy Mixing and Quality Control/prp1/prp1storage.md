# 🥛 PRP1 Storage

ระบบ PRP1 Storage ใช้สำหรับบันทึกข้อมูลการผลิตของนมถั่วเหลือง โดยข้อมูลถูกจัดเก็บในตาราง `prp1 table` ในรูปแบบ **Row-based** ทำให้แต่ละ Batch ถูกจัดเก็บเป็นคนละ Row และสามารถรองรับจำนวน Batch ที่เพิ่มขึ้นได้

---

## 📊 1. การจัดเก็บข้อมูลแบบ Row-based

ข้อมูลของแต่ละ Batch จะถูกจัดเก็บเป็นคนละ Row ใน `prp1 table`

ตัวอย่างข้อมูล

| Product_Date | Loop | Week | Batch  | Flavor |
| ------------ | ---: | ---: | ------ | ------ |
| 7/30/2026    |    1 |   31 | 1773-1 | D      |
| 7/30/2026    |    1 |   31 | 1773-2 | D      |

ระบบจะนำ `Product_Date`, `Week` และ `Loop` มาคำนวณเป็น `Product_ID`

```text
Product_Date = 7/30/2026
Week         = 31
Loop         = 1

        │
        ▼

Product_ID = 300726-31Th1
```

ดังนั้นข้อมูลที่ได้จะเป็น

```text
Product_ID: 300726-31Th1

┌────────────────┬─────────┬────────┐
│   Product_ID   │  Batch  │ Flavor │
├────────────────┼─────────┼────────┤
│ 300726-31Th1   │ 1773-1  │ D      │
│ 300726-31Th1   │ 1773-2  │ D      │
└────────────────┴─────────┴────────┘
```

---

## 🔎 2. การเลือก Batch

เมื่อผู้ใช้งานเข้าสู่หน้า PRP1 Storage ระบบจะแสดงรายการ Batch ที่มีอยู่

ผู้ใช้งานต้องเลือก Batch ที่ต้องการก่อน จึงจะสามารถเข้าสู่หน้ากรอกข้อมูลของ Batch นั้นได้

```text
PRP1 Storage
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

## ⚙️ 3. Condition และ Step

ภายในหน้า PRP1 Storage มีการกำหนด **Condition และ Step** เพื่อควบคุมลำดับการแสดงหน้ากรอกข้อมูล

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

ระบบจะตรวจสอบ Condition ของแต่ละขั้นตอนก่อนแสดงข้อมูลหรือเปิดให้ผู้ใช้งานกรอกข้อมูลในขั้นตอนถัดไป

---

## 🧪 4. Standardized

ในหน้า `Standardized` ผู้ใช้งานจะต้อง **เลือก Group และกด Save ก่อน**

เมื่อบันทึก Group แล้ว ระบบจึงจะแสดงข้อมูลที่เกี่ยวข้องให้ผู้ใช้งานกรอกต่อ

```text
Standardized
     │
     ▼
เลือก Group
     │
     ▼
   Save
     │
     ▼
แสดงข้อมูลสำหรับกรอก
```

---

## 🧮 5. BOM และ `buffer_vol`

ระบบมีการคำนวณข้อมูลจาก **BOM** เพื่อนำมาใช้ในการคำนวณ `buffer_vol`

```text
BOM
 │
 ▼
คำนวณ
 │
 ▼
buffer_vol
```

ผู้ใช้งานไม่จำเป็นต้องคำนวณ `buffer_vol` ด้วยตนเอง เนื่องจากระบบคำนวณจากข้อมูล BOM

---

## 🔄 6. Overall Workflow

ภาพรวมการทำงานของ PRP1 Storage

```text
                 PRP1 Storage
                       │
                       ▼
                  Product_ID
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
                       ▼
                  เลือก Group
                       │
                       ▼
                     Save
                       │
                       ▼
              แสดงข้อมูลสำหรับกรอก
                       │
                       ▼
                      BOM
                       │
                       ▼
                  buffer_vol
```

### Key Points

| รายการ          | รายละเอียด                              |
| --------------- | --------------------------------------- |
| Table           | `prp1 table`                            |
| Data Structure  | Row-based                               |
| Product_ID      | คำนวณจาก Product Date, Week และ Loop    |
| Batch           | แต่ละ Batch จัดเก็บเป็นคนละ Row         |
| Batch Selection | ต้องเลือก Batch ก่อนกรอกข้อมูล          |
| Condition       | ใช้ควบคุมการแสดง Step และหน้ากรอกข้อมูล |
| Standardized    | ต้องเลือก Group และ Save ก่อน           |
| BOM             | ใช้สำหรับคำนวณ                          |
| `buffer_vol`    | ระบบคำนวณจาก BOM                        |

