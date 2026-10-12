# 🧪 QSM Microbiological

ระบบจัดการตัวอย่างและผลตรวจจุลชีววิทยาบน Budibase เชื่อม Microsoft SQL Server: สร้างงาน Micro, เก็บตัวอย่างทั่วไป/น้ำนมดิบ/Inprocess, บันทึกและคำนวณผล, ตรวจภายใน และรายงาน/อนุมัติ.

จัดโครงสร้างตาม [QSM Sampling Check](https://github.com/Tkyaemsuk/Digitalization_QSM_AND_PRP_Project/tree/main/QSM%20Sampling%20Check). เนื้อหาจาก latest edited app export วันที่ 12 ต.ค. 2026 ประกอบด้วย 39 queries, 12 active screens และ 12 table schemas.

## 📂 Directory

```text
QSM Microbiological/
├── README.md
├── database/
│   ├── README.md                 # Data dictionary index + ER diagram
│   ├── Query/
│   │   ├── README.md             # รายละเอียด 39 queries + bindings + usage
│   │   ├── manifest.json         # ชื่อ/ID/hash ของ SQL source
│   │   └── <ชื่อ query>.sql       # SQL จริงพร้อม comment ชื่อกำกับ
│   └── tables/<table>/README.md  # 1 table : 1 README
├── <screen-route>/README.md      # 1 screen : 1 README
└── document/README.md            # หลักฐาน ขอบเขต และการดูแลเอกสาร
```

## 🗄️ ฐานข้อมูลและ Query

- [Database design, table dictionary และ ER diagram](database/README.md)
- [Query catalog และ SQL จริง](database/Query/README.md)

## 🖥️ Design Screens

| Route | หน้าที่ | เอกสาร |
|---|---|---|
| `/add-rammilk` | เพิ่ม raw milk sampling ให้ชุดงาน | [README](add-rammilk/README.md) |
| `/changepassword` | เปลี่ยนรหัสผ่านบัญชี | [README](changepassword/README.md) |
| `/create-inprocess` | สร้างรายการตัวอย่างระหว่างกระบวนการ | [README](create-inprocess/README.md) |
| `/create-microid` | สร้างตัวอย่างทั่วไป/PlanSwab และ MicroID | [README](create-microid/README.md) |
| `/create-rawmilk-microid` | สร้าง MicroID สำหรับตัวอย่างน้ำนมดิบ | [README](create-rawmilk-microid/README.md) |
| `/login` | รับบัญชีผู้ใช้ ตรวจข้อมูล และนำเข้าสู่เมนู | [README](login/README.md) |
| `/menu` | เมนูเข้าถึงงาน Micro และหน้าสร้าง/รายงาน | [README](menu/README.md) |
| `/micro-daily` | ฟอร์มข้อมูลหัวงาน Micro และรายละเอียด Part | [README](micro-daily/README.md) |
| `/micro-table` | ตารางเลือก MicroID และจัดการรายการ | [README](micro-table/README.md) |
| `/part3/:microid` | บันทึก Internal Quality ผู้ตรวจ และผู้แปลผล | [README](part3/README.md) |
| `/report/:microid` | รายงานผลตาม MicroID และคำสั่งอนุมัติ | [README](report/README.md) |
| `/result-of-micro` | บันทึกและคำนวณผลรายตัวอย่าง/หลอด/ความเจือจาง | [README](result-of-micro/README.md) |

## ⚙️ เทคโนโลยี

| เทคโนโลยี | หน้าที่ |
|---|---|
| Budibase | Screen, data provider, event actions, bindings |
| Microsoft SQL Server | ตารางข้อมูลและ SQL query |
| JavaScript | การตรวจฟอร์ม คำนวณ state และแปลงค่าใน bindings |

## 📌 ข้อเท็จจริงสำหรับผู้รับช่วง

- ชื่อ query และ route สะกดตาม Builder เช่น `Caculate 1`, `Genarate_*`, `/add-rammilk`.
- SQL เก็บ source เดิมครบถ้วนพร้อม comment ระบุชื่อไฟล์; ไม่มีการเพิ่ม SQL COMMIT เข้า business logic. Git commit เป็นประวัติไฟล์แยกจากคำสั่ง COMMIT ใน SQL.
- ทุก active screen ใน export ตั้ง role เป็น PUBLIC; เงื่อนไขใน event/UI อธิบายรายหน้า.
- Query ที่ไม่พบ screen reference ยังเก็บไว้ครบ และระบุสถานะใน catalog.
- [อ่านข้อจำกัดของหลักฐานและแนวทางอัปเดต](document/README.md).
