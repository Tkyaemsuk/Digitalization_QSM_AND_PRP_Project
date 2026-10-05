# 🏭 ระบบบันทึกข้อมูลการผลิต
### PRP Production Data Entry

> ระบบสำหรับบันทึกข้อมูลในแต่ละขั้นตอนการผลิต  
> **Thermised → Blending → After Past / After Cooling → Standardized / Standardization**

รองรับผลิตภัณฑ์ **4 ประเภท** ซึ่งแต่ละประเภทมีค่าที่ต้องเก็บไม่เหมือนกัน

---

## 📑 สารบัญ

- [📌 ภาพรวม](#-ภาพรวม)
- [🥛 ประเภทผลิตภัณฑ์](#-ประเภทผลิตภัณฑ์)
- [🔄 ลำดับการทำงาน](#-ลำดับการทำงาน)
- [📋 รายละเอียดแต่ละหน้า](#-รายละเอียดแต่ละหน้า)
- [🗄️ ฐานข้อมูล](#️-ฐานข้อมูล)
- [🧮 คิวรีและสูตรคำนวณ](#-คิวรีและสูตรคำนวณ)
- [👤 สิทธิ์การใช้งาน](#-สิทธิ์การใช้งาน)
- [🔗 พารามิเตอร์ใน-URL](#-พารามิเตอร์ใน-url)

---

# 📌 ภาพรวม

### 🔹 Workflow หลัก

| ขั้นตอน | รายละเอียด |
|:---:|---|
| **1** | **SUP** สร้าง `product_ID` ที่หน้า `/create-tag/:user` |
| **2** | ระบบนำ `product_ID` ไปสร้างแถวข้อมูลในตาราง **Yield** |
| **3** | สำหรับ **นมเปรี้ยว** จะสร้างข้อมูลใน **Yield2** |
| **4** | พนักงานบันทึกข้อมูลตามขั้นตอน `/inputdata`, `/blending`, `/buffer`, `/buffer2` |
| **5** | เมื่อกดบันทึก ข้อมูลจะถูกเขียนลง **Yield / Yield2** และ **prp3 table** |

---

# 🥛 ประเภทผลิตภัณฑ์

เนื่องจากผลิตภัณฑ์แต่ละตัวมีค่าที่ต้องเก็บต่างกัน แต่ละหน้าจึงแสดงฟอร์มตามชื่อ product **(conditional display)**

| ผลิตภัณฑ์ | ตารางที่เก็บข้อมูล |
|:---:|:---:|
| 🥛 นมดีมอล์ | `Yield` |
| 🫘 นมถั่วเหลือง | `Yield` |
| 🍵 ชา | `Yield` |
| 🥣 นมเปรี้ยว | `Yield2` |

> 💡 **หมายเหตุ:** ตาราง `Yield` เก็บข้อมูลเต็มแล้ว จึงเพิ่มตาราง **Yield2** เพื่อเก็บข้อมูลนมเปรี้ยวโดยเฉพาะ เมื่อ SUP สร้าง `product_ID` ของนมเปรี้ยว ระบบจะสร้างแถวข้อมูลใน `Yield2` ให้อัตโนมัติ

---

# 🔄 ลำดับการทำงาน

```text
┌──────────────────────────────┐
│ /create-tag/:user            │
│ SUP สร้าง product_ID          │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ /inputdata/:a/:b/:user       │
│ Thermised                    │
│ ข้อมูลที่เช็คจาก prp2        │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ /blending/:a/:b/:user        │
│ Blending                     │
│ ข้อมูลที่เช็คตอนรับนมเข้า    │
│ tank car                     │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ /buffer/:a/:b/:user          │
│ After Past / After cooling   │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│ /buffer2/:a/:b/:user         │
│ Standardized / Standardization│
└──────────────────────────────┘
```

---

# 📋 รายละเอียดแต่ละหน้า

## 1. 🏷️ `/create-tag/:user` — สร้างแท็ก

- ใช้โดย **SUP**
- สร้าง `product_ID`
- ตาราง `Yield` และ `Yield2` จะรับค่านี้ไปใช้ในหน้าลงข้อมูลทุกหน้า

---

## 2. 🔥 `/inputdata/:a/:b/:user` — Thermised

เก็บข้อมูลที่เช็คมาจาก **prp2**

### ผลิตภัณฑ์

- นมดีมอล์
- นมถั่วเหลือง
- ชา
- นมเปรี้ยว

### การทำงาน

- แสดงฟอร์มตามชื่อ product
- เมื่อเข้าหน้านี้ จะเห็น **8 batch** เรียงลงมา
- มีโมเดล (modal) สำหรับกรอก **pH น้ำ**
- **SUP** สามารถเปลี่ยนเลข batch, ลบ หรือเพิ่ม batch ได้
- สามารถแก้ไขข้อมูลได้ตลอดเวลา
- **รหัสพนักงาน** บันทึกได้ **ครั้งเดียว** เท่านั้น
- มี JavaScript ตรวจสอบความครบถ้วน
- หากช่องใดกรอกไม่ครบ **จะไม่สามารถบันทึกได้**
- เมื่อบันทึกสำเร็จ **พื้นหลังของ batch เปลี่ยนเป็นสีเขียว**
- มีการ **เช็คค่า Spec** โดยดึงจากตาราง `PRP_Spec`

ดูรายละเอียดที่ [CheckSpecPrp](#checkspecprp)

---

## 3. 🥛 `/blending/:a/:b/:user` — Blending

เก็บข้อมูลที่เช็คตอน **รับนมเข้า tank car**

### ผลิตภัณฑ์

- นมดีมอล์
- นมถั่วเหลือง
- ชา
- นมเปรี้ยว

### การทำงาน

การทำงานเหมือนหน้า Thermised ทุกประการ

- 8 batch
- สิทธิ์ SUP
- รหัสพนักงานบันทึกครั้งเดียว
- ตรวจความครบถ้วน
- พื้นหลังสีเขียวเมื่อบันทึก

---

## 4. ❄️ `/buffer/:a/:b/:user` — After Past / After cooling

ชื่อหัวข้อที่แสดงขึ้นกับผลิตภัณฑ์

| ผลิตภัณฑ์ | ชื่อที่แสดง |
|:---:|:---:|
| นมสด | **After Past** |
| ชา | **After cooling** |
| นมถั่วเหลือง | **After cooling** |

---

## 5. ⚙️ `/buffer2/:a/:b/:user` — Standardized / Standardization

ชื่อหัวข้อที่แสดงขึ้นกับผลิตภัณฑ์

| ผลิตภัณฑ์ | ชื่อที่แสดง |
|:---:|:---:|
| นมสด | **Standardized** |
| นมถั่วเหลือง | **Standardized** |
| ชา | **Standardization** |

### ฟีเจอร์เพิ่มเติม

- มีช่องให้ **SUP ลงชื่อตรวจสอบ**
- มีการคำนวณ **BOM**
- มีการคำนวณ **buffer_vol**
- เมื่อบันทึก ข้อมูลจะถูกเขียนลงตาราง **Yield** และ **prp3 table**

ดูรายละเอียดที่ [สูตรคำนวณ](#สูตรคำนวณ)

---

# 🗄️ ฐานข้อมูล

| ตาราง | หน้าที่ |
|:---|:---|
| `Yield` | เก็บข้อมูลการผลิตของนมดีมอล์, นมถั่วเหลือง, ชา และรับ `product_ID` จากหน้า `/create-tag/:user` |
| `Yield2` | เก็บข้อมูลนมเปรี้ยว เนื่องจาก `Yield` เต็ม |
| `prp3 table` | ได้รับข้อมูลเมื่อบันทึกจากหน้า Standardized / Standardization |
| `PRP_Spec` | ตาราง Spec สำหรับตรวจสอบค่าที่กรอก |

---

## 📊 ข้อมูลที่แต่ละหน้าเก็บ

| หน้า | ข้อมูลที่เก็บ |
|:---|:---|
| `/inputdata/:a/:b/:user` | ข้อมูลที่เช็คจาก prp2 (Thermised) |
| `/blending/:a/:b/:user` | ข้อมูลที่เช็คตอนรับนมเข้า tank car |
| `/buffer/:a/:b/:user` | After Past / After cooling |
| `/buffer2/:a/:b/:user` | Standardized / Standardization |

---

# 🧮 คิวรีและสูตรคำนวณ

## 🔍 CheckSpecPrp

ใช้ตรวจสอบค่า Spec ในหน้า Thermised Blending buffer buffer2

ต้องมีค่าครบทั้ง **3 ตัว**

- `source`
- `flavor`
- `Size`

จึงจะดึงค่ามาเช็คได้

```sql
SELECT *
FROM PRP_Spec
WHERE Milk_Source = {{source}}
  AND Flavor = {{flavor}}
  AND Batch_Size = {{Size}}
```

---

## 🧮 สูตรคำนวณ

### BOM — ปริมาตรรวม

นับจำนวน Flavor ที่มีค่า **Flavor1–Flavor8** แล้วคูณด้วย `BOM_Volume`

```javascript
var flavors = [
  $("New Repeater.Prp 3 table.Flavor1"),
  $("New Repeater.Prp 3 table.Flavor2"),
  $("New Repeater.Prp 3 table.Flavor3"),
  $("New Repeater.Prp 3 table.Flavor4"),
  $("New Repeater.Prp 3 table.Flavor5"),
  $("New Repeater.Prp 3 table.Flavor6"),
  $("New Repeater.Prp 3 table.Flavor7"),
  $("New Repeater.Prp 3 table.Flavor8")
];

var count = 0;

for (var i = 0; i < flavors.length; i++) {
  var flavor = flavors[i];

  if (flavor !== null && flavor !== undefined && flavor !== "") {
    count++;
  }
}

var bomVolume =
  parseFloat(
    $("New Data Provider 3.Rows.0.BOM_Volume")
  ) || 0;

var total = count * bomVolume;

return total;
```

---

### 📦 buffer_vol — ปริมาตรรวมของ Summary

รวมค่า `Summery1` ถึง `Summery8`

ค่าที่ไม่ใช่ตัวเลขจะถูกนับเป็น `0`

```javascript
const c =
  (Number($("New Form.Fields.Summery1")) || 0) +
  (Number($("New Form.Fields.Summery2")) || 0) +
  (Number($("New Form.Fields.Summery3")) || 0) +
  (Number($("New Form.Fields.Summery4")) || 0) +
  (Number($("New Form.Fields.Summery5")) || 0) +
  (Number($("New Form.Fields.Summery6")) || 0) +
  (Number($("New Form.Fields.Summery7")) || 0) +
  (Number($("New Form.Fields.Summery8")) || 0);

return c;
```

---

# 👤 สิทธิ์การใช้งาน

| บทบาท | สิทธิ์ |
|:---:|:---|
| **SUP** | สร้าง `product_ID` |
| **SUP** | เปลี่ยนเลข batch |
| **SUP** | เพิ่ม / ลบ batch |
| **SUP** | แก้ไขข้อมูลได้ตลอด |
| **SUP** | ลงชื่อตรวจสอบในหน้า Standardized |
| **พนักงาน** | กรอกข้อมูลในแต่ละ batch |
| **พนักงาน** | รหัสพนักงานบันทึกได้ครั้งเดียว |

---

# 🔗 พารามิเตอร์ใน URL

| พารามิเตอร์ | ความหมาย |
|:---:|:---|
| `:user` | ผู้ใช้งานที่เข้าสู่ระบบ |
| `:a`, `:b` | ค่าที่ส่งต่อระหว่างหน้า (ใช้อ้างอิง `product_ID` / ข้อมูลของ batch) |

---

<div align="center">

**PRP Production Data Entry**

</div>
