# 🧪 QSM Database Design

เอกสาร Database Design ของระบบ **QSM Microbiology Analysis System** แยกอธิบายแบบ **1 Table : 1 README** เพื่อให้ค้นหาและดูแลได้ง่ายบน GitHub

## 🗂️ Table Directory

| กลุ่ม | Table | Documentation |
|---|---|---|
| 🔐 Authentication | TB_APP1_LOGIN | [เปิด README](tables/tb-app1-login/README.md) |
| 🥛 Low Acid | Sampling | [เปิด README](tables/sampling/README.md) |
| 🌡️ Low Acid | temperature_30 | [เปิด README](tables/temperature-30/README.md) |
| 🌡️ Low Acid | temperature_55 | [เปิด README](tables/temperature-55/README.md) |
| 🔥 High Acid | [Sampling high] | [เปิด README](tables/sampling-high/README.md) |
| 🔥 High Acid | temperature_30high | [เปิด README](tables/temperature-30high/README.md) |
| 🍓 High Acid | HighAcid_Sampling_Flavour | [เปิด README](tables/highacid-sampling-flavour/README.md) |
| 🧪 Quality Control | Qualilty_Control | [เปิด README](tables/qualilty-control/README.md) |
| 🏭 Master Data | Machine | [เปิด README](tables/machine/README.md) |
| 📦 Master Data | Machine_Size | [เปิด README](tables/machine-size/README.md) |
| 👥 Master Data | empolyee | [เปิด README](tables/empolyee/README.md) |

---

## 🧾 Query Directory

ไฟล์ SQL ทั้งหมดอยู่ในโฟลเดอร์ [Query](Query/README.md) โดย README นี้อธิบายหน้าที่ของแต่ละ Query และเชื่อมไปยังไฟล์ SQL จริง

| กลุ่ม Query | ตัวอย่างไฟล์ |
|---|---|
| 📝 Create | [Create Sampling.sql](<Query/Create Sampling.sql>), [Create Sampling_HighAcid.sql](<Query/Create Sampling_HighAcid.sql>) |
| 🧱 Insert Brik | [Temp30_Insert.sql](<Query/Temp30_Insert.sql>), [Temp55_Insert.sql](<Query/Temp55_Insert.sql>), [HighAcid_InsertBrik.sql](<Query/HighAcid_InsertBrik.sql>) |
| 📊 Select / Table | [Sampling_Table.sql](<Query/Sampling_Table.sql>), [Sampling_HighAcid_Tables.sql](<Query/Sampling_HighAcid_Tables.sql>) |
| ✏️ Update | [Update Sampling.sql](<Query/Update Sampling.sql>), [Sup_Production_Update.sql](<Query/Sup_Production_Update.sql>) |
| 🗑️ Delete | [DEV_LOW_DELETE.sql](<Query/DEV_LOW_DELETE.sql>), [DEV_DELETE.sql](<Query/DEV_DELETE.sql>) |

### 🧭 Query Path Convention

จาก README ของแต่ละ Table ให้ใช้รูปแบบที่อยู่ไฟล์ดังนี้:

`../../../Query/<ชื่อไฟล์>.sql`

ตัวอย่าง: [Sampling_Table.sql](<../Query/Sampling_Table.sql>)

---

## 🔗 Key Relationship Overview

~~~~mermaid
flowchart LR
    EMP["👥 empolyee<br/>PK: Code"]
    MAC["🏭 Machine<br/>PK: No"]
    LOGIN["🔐 TB_APP1_LOGIN<br/>PK: id"]

    S["🥛 Sampling<br/>PK: SamplingID"]
    T30["🌡️ temperature_30<br/>FK: sampID"]
    T55["🌡️ temperature_55<br/>FK: sampID"]

    SH["🔥 [Sampling high]<br/>PK: SamplingIDH"]
    TH["🔥 temperature_30high<br/>FK: SampID"]
    HF["🍓 HighAcid_Sampling_Flavour<br/>FK: SamplingID"]

    S -->|"SamplingID = sampID"| T30
    S -->|"SamplingID = sampID"| T55
    SH -->|"SamplingIDH = SampID"| TH
    SH -->|"SamplingIDH = SamplingID"| HF

    EMP -.->|"Code = ผู้ปฏิบัติงาน"| S
    EMP -.->|"Code = ผู้ปฏิบัติงาน"| SH
    MAC -.->|"No = Machine"| S
    MAC -.->|"No = machine"| SH
    LOGIN -.->|"ตรวจสอบสิทธิ์"| S

    classDef low fill:#102d46,stroke:#54e7ff,color:#eaf9ff,stroke-width:2px;
    classDef high fill:#402a18,stroke:#ffad5c,color:#fff4e7,stroke-width:2px;
    classDef detail fill:#20234b,stroke:#9b8cff,color:#f2f0ff;
    classDef master fill:#173b32,stroke:#7df1a8,color:#ecfff5;
    classDef auth fill:#32224b,stroke:#c697ff,color:#fbf4ff;

    class S low;
    class SH high;
    class T30,T55,TH,HF detail;
    class EMP,MAC master;
    class LOGIN auth;
~~~~

---

## 🔑 Relationship Summary

| จาก Table | ไปยัง Table | Key | ประเภท |
|---|---|---|---|
| Sampling | temperature_30 | SamplingID → sampID | One-to-Many |
| Sampling | temperature_55 | SamplingID → sampID | One-to-Many |
| [Sampling high] | temperature_30high | SamplingIDH → SampID | One-to-Many |
| [Sampling high] | HighAcid_Sampling_Flavour | SamplingIDH → SamplingID | One-to-One/Optional |
| empolyee | Sampling | Code → SendBY และผู้ปฏิบัติงาน | Many-to-One |
| Machine | Sampling | No → Machine | Many-to-One |
| TB_APP1_LOGIN | Application | user, password | Authentication |

## 🧭 Data Flow

1. 📝 สร้าง Sampling ปกติหรือ High Acid
2. 🧱 สร้าง Brik ในตาราง temperature
3. 👥 เชื่อมผู้ปฏิบัติงานจาก empolyee
4. 🏭 เชื่อมเครื่องจักรจาก Machine
5. 🌡️ บันทึกผลตรวจและสถานะ
6. ✅ สรุปผลและอนุมัติผ่าน QSM/QA

> 📌 ชื่อตารางและ Column ให้ยึดตาม Database จริง หากมีการเปลี่ยนชื่อควรแก้ README ของ Table และหน้าหลักพร้อมกัน
