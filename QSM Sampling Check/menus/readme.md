# 🧭 Menus Details

## 1. รายละเอียดหน้าเมนูหลัก

หน้า **Menus** เป็นหน้าหลักของแอปพลิเคชัน ซึ่งผู้ใช้งานจะเข้าสู่หน้านี้หลังจาก Login สำเร็จ

ระบบแบ่งการทำงานออกเป็น 2 ส่วนหลัก ได้แก่:

1. **Low Acid**
2. **High Acid**

การแบ่งเมนูดังกล่าวช่วยให้ผู้ใช้งานสามารถเลือกกระบวนการทำงานให้ตรงกับประเภทผลิตภัณฑ์ได้อย่างถูกต้อง

---

# 🥛 Low Acid

เมื่อผู้ใช้งานเลือกเมนู **Low Acid** ระบบจะแสดงเมนูสำหรับการสร้างและตรวจสอบ Sampling ดังนี้:

| เมนู                                     | รายละเอียด                                       | URL Path           |
| ---------------------------------------- | ------------------------------------------------ | ------------------ |
| Create Sampling (Low-Acid)               | สร้าง Sampling สำหรับผลิตภัณฑ์ประเภท Low Acid    | `/create-sampling` |
| Production Checklist Sampling (Low-Acid) | ตรวจสอบและแสดงรายการ Sampling ของฝ่าย Production | `/sampling-tables` |

### ลำดับการทำงาน

* เมื่อกดปุ่ม **Create Sampling (Low-Acid)** ระบบจะนำไปยังหน้า:

```text
/create-sampling
```

* เมื่อกดปุ่ม **Production Checklist Sampling (Low-Acid)** ระบบจะนำไปยังหน้า:

```text
/sampling-tables
```

---

# 🧃 High Acid

เมื่อผู้ใช้งานเลือกเมนู **High Acid** ระบบจะแสดงเมนูสำหรับการสร้างและตรวจสอบ Sampling ดังนี้:

| เมนู                                      | รายละเอียด                                       | URL Path           |
| ----------------------------------------- | ------------------------------------------------ | ------------------ |
| Create Sampling (High-Acid)               | สร้าง Sampling สำหรับผลิตภัณฑ์ประเภท High Acid   | `/create-sampling` |
| Production Checklist Sampling (High-Acid) | ตรวจสอบและแสดงรายการ Sampling ของฝ่าย Production | `/sampling-tables` |

### ลำดับการทำงาน

* เมื่อกดปุ่ม **Create Sampling (High-Acid)** ระบบจะนำไปยังหน้า:

```text
/create-sampling
```

* เมื่อกดปุ่ม **Production Checklist Sampling (High-Acid)** ระบบจะนำไปยังหน้า:

```text
/sampling-tables
```

---

## 🔗 สรุปเส้นทางการทำงาน

```text
Login
  ↓
Menus
  ├── Low Acid
  │   ├── Create Sampling
  │   │   └── /create-sampling
  │   └── Production Checklist Sampling
  │       └── /sampling-tables
  │
  └── High Acid
      ├── Create Sampling
      │   └── /create-sampling
      └── Production Checklist Sampling
          └── /sampling-tables
```

> ℹ️ หมายเหตุ: Low Acid และ High Acid ใช้ URL Path เดียวกัน แต่ระบบจะกำหนดประเภทการทำงานตามเมนูที่ผู้ใช้งานเลือก
