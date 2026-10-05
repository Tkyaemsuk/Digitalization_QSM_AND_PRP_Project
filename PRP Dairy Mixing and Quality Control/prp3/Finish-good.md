# ตาราง Finish-good และ Automation SaveBatch

## 📋 ภาพรวม

ตาราง **Finish-good** เก็บข้อมูลหลังจากนมผ่านการผสมแล้ว ผ่านเครื่องฆ่าเชื้อ และบรรจุลงกล่อง โดยพนักงานจะไปหยิบนมมาเช็คค่าตาม **batch** ที่ได้ผลิต

| หัวข้อ | รายละเอียด |
|:---|:---|
| **หน้าลงข้อมูล** | `/finish-good1/:user` |
| **การเก็บข้อมูล** | 1 batch = 1 แถว |
| **Automation** | `SaveBatch` (ทำงานเมื่อ SUP สร้าง `product_ID`) |
| **ผู้ใช้งาน** | SUP สร้าง `product_ID`, พนักงานเช็คค่าที่หน้า `/finish-good1/:user` |

---

## 📌 ทำไมต้องเก็บเป็นแถว (row) ไม่ใช่คอลัมน์

เมื่อเริ่มดึงนมเข้าเครื่อง พนักงานจะเก็บตัวอย่างนมมาเช็คค่า

- **ดึงต่อเนื่อง:** batch ถัดไปที่ดึงต่อเนื่องกัน สามารถเช็ครอบเดียวได้เลย
- **เกิดเหตุฉุกเฉินต้องหยุดเครื่อง:** batch นั้นต้องเริ่มดึงนมใหม่และเช็คค่าใหม่

เพราะเหตุการณ์ข้างต้น **จำนวน batch ต่อการเช็คหนึ่งครั้งไม่แน่นอน** จึงไม่สามารถกำหนดจำนวน batch ตายตัวเป็นคอลัมน์ได้

ดังนั้น ระบบจึงเก็บแบบ **1 batch = 1 แถว** แทน  
> เดิมเก็บเป็นคอลัมน์

---

## ⚙️ Automation: `SaveBatch`

ทำงานเมื่อ SUP สร้าง `product_ID` โดยวนลูปสร้างแถวในตาราง **Finish-good** ให้ทุก batch ที่มีการกรอก  
(ตรวจ `Batch1`–`Batch11` และตัดช่วงที่ว่างออก)

| ฟิลด์ที่ได้ | ความหมาย |
|:---|:---|
| `Group` | กลุ่ม/เครื่อง (MC) |
| `Flavor` | รสชาติของ batch นั้น |
| `Batch` | เลข batch |
| `Product_ID` | รหัสผลิตภัณฑ์ที่สร้างจากวันที่ผลิตและรอบการผลิต |

---

## 🆔 รูปแบบ `Product_ID`

```text
{ปี 2 หลัก}{เดือน}{วัน}-{Week}{ตัวย่อวัน}{Loop}-{Group}
```

### ตัวอย่าง

```text
260106-41Tu1-A
```

> วันที่ 6 ม.ค. 2026, Week 41, วันอังคาร, Loop 1, Group A

### ตัวย่อวัน

| วัน | ตัวย่อ |
|:---|:---:|
| อาทิตย์ | `Su` |
| จันทร์ | `Mo` |
| อังคาร | `Tu` |
| พุธ | `We` |
| พฤหัสบดี | `Th` |
| ศุกร์ | `Fr` |
| เสาร์ | `Sa` |

---

## 💻 สคริปต์

```javascript
let dateTimeString = $("trigger.fields.Product Date");
let dateTime = new Date(dateTimeString);
let date = String(dateTime.getDate()).padStart(2, '0');
let month = String(dateTime.getMonth() + 1).padStart(2, '0');
let year = (dateTime.getFullYear() % 100).toString().padStart(2, '0');
let dayNames = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"];
let day = dayNames[dateTime.getDay()];
let week = $("trigger.fields.Week");
let loop = $("trigger.fields.Loop");
let MC = $("trigger.fields.Group");
let productId = `${year}${month}${date}-${week}${day}${loop}-${MC}`;

return [
  { Group: MC, Flavor: $("trigger.fields.Flavor1"), Batch: $("trigger.fields.Batch1"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor2"), Batch: $("trigger.fields.Batch2"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor3"), Batch: $("trigger.fields.Batch3"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor4"), Batch: $("trigger.fields.Batch4"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor5"), Batch: $("trigger.fields.Batch5"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor6"), Batch: $("trigger.fields.Batch6"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor7"), Batch: $("trigger.fields.Batch7"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor8"), Batch: $("trigger.fields.Batch8"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor9"), Batch: $("trigger.fields.Batch9"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor10"), Batch: $("trigger.fields.Batch10"), Product_ID: productId },
  { Group: MC, Flavor: $("trigger.fields.Flavor11"), Batch: $("trigger.fields.Batch11"), Product_ID: productId }
].filter(item => item.Batch && item.Batch.toString().trim() !== "");
```

---

## 🚨 กรณีฉุกเฉิน: ต้องหยุดเครื่องและดึงนมใหม่

เมื่อต้องเริ่มดึงนมใหม่ **พนักงานต้องสร้าง `product_ID` ใหม่เอง** โดยเปลี่ยนค่า **no** จาก `1` เป็น `2`

จากนั้นบันทึกข้อมูลที่หน้า:

```text
/finish-good1/:user
```
