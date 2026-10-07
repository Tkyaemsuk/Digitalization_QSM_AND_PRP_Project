# Recombined PRP2

## 1. กระบวนการ Recombined

นม Recombined: **Recombine 3 ถัง → ได้ Incubation (Incu) 1 ถัง**

```mermaid
flowchart LR
    R1[Recombine ถังที่ 1] --> I
    R2[Recombine ถังที่ 2] --> I
    R3[Recombine ถังที่ 3] --> I[Incubation 1 ถัง]
```

## 2. หน้าที่เกี่ยวข้อง

| หน้า | ผู้ใช้งาน | ข้อมูลที่ลง |
|---|---|---|
| `recombined_prp2` | Sup, Control | ข้อมูล Recombine ของ Control |
| `recombined_labprp2` | Sup, Lab | ข้อมูล Recombine ของ Lab |

## 3. ตารางที่ใช้

| ตาราง | เก็บข้อมูล |
|---|---|
| `Mixing_prp2` | ข้อมูล Batch |
| `Recombine_labprp2` | ข้อมูล Recombine ของ Lab / Control |

## 4. หน้า `recombined_prp2` (Control)

- สิทธิ์เข้าถึง: Sup, Control
- สิทธิ์แก้ไข **Batch**: Sup และ Control เพิ่ม / อัพเดต / ลบ ได้ โดยจะเปลี่ยนข้อมูลในตาราง `Mixing_prp2` และ `Recombine_labprp2`
- **1 กะ สร้างได้ 6 Batch**
- Control ลงข้อมูล Recombine อื่นๆ ได้ตามปกติ
- ยกเว้น **Brix, SG, QC** ที่ดึงมาจากหน้า `recombined_labprp2` (ที่ Lab ลงไว้) อัตโนมัติ และแสดงเป็น **สีเทา** (อ่านอย่างเดียว กรอกเองไม่ได้)

## 5. หน้า `recombined_labprp2` (Lab)

- สิทธิ์เข้าถึง: Sup, Lab
- **Lab แก้เลข Batch ไม่ได้**
- ข้อมูลที่ลง:
  1. Recombine 3 ถัง
  2. Culture Used
  3. 3 hr
  4. Before Incubation

## 6. Workflow

```mermaid
flowchart TD
    A([เริ่มกะผลิต]) --> B[Sup / Control สร้าง Batch<br/>สูงสุด 6 batch ต่อกะ<br/>หน้า recombined_prp2]
    B --> C[(Mixing_prp2<br/>เก็บ Batch)]
    B --> D[(Recombine_labprp2<br/>เก็บข้อมูล Recombine)]

    D --> E[Lab ลงข้อมูล<br/>หน้า recombined_labprp2<br/>แก้เลข Batch ไม่ได้]
    E --> E1[Recombine 3 ถัง] --> E2[Culture Used] --> E3[3 hr] --> E4[Before Incubation]

    D -. ดึง Brix, SG, QC .-> F[recombined_prp2<br/>Brix, SG, QC แสดงสีเทา อ่านอย่างเดียว<br/>ข้อมูลอื่น Control ลงเอง]
    F -->|ข้อมูลที่ Control ลง| D
    E4 --> G([จบ])
```

## 7. สิทธิ์การเข้าถึง

| หน้า | Sup | Lab | Control |
|---|---|---|---|
| `recombined_prp2` | ✅ | ❌ | ✅ |
| `recombined_labprp2` | ✅ | ✅ | ❌ |
