# 🧩 QSM Database Relationship Map

แผนผังแสดงความสัมพันธ์ของตารางในระบบ **QSM Microbiology Analysis System** โดยใช้ Mermaid ซึ่งสามารถแสดงผลได้บน GitHub, GitLab และ Markdown Viewer ที่รองรับ Mermaid

## 🗺️ Database Relationship Infographic

```mermaid
flowchart LR
    %% =============================
    %% Master Data
    %% =============================
    subgraph MASTER["🗂️ MASTER DATA"]
        direction TB
        EMP["👥 empolyee<br/><b>PK: Code</b><br/>Name · Dep"]
        MAC["🏭 Machine<br/><b>PK: No</b><br/>Machine · DEP"]
        LOGIN["🔐 TB_APP1_LOGIN<br/><b>PK: id</b><br/>user · Plant"]
    end

    %% =============================
    %% Core Tables
    %% =============================
    subgraph CORE["🎯 CORE TABLES"]
        direction TB
        S["🥛 Sampling<br/><b>PK: SamplingID</b><br/>Product · Flavour · FillingDate"]
        SH["🔥 [Sampling high]<br/><b>PK: SamplingIDH</b><br/>Product · MFG · EXP"]
    end

    %% =============================
    %% Detail Tables
    %% =============================
    subgraph DETAIL["📊 DETAIL TABLES"]
        direction TB
        T30["🌡️ temperature_30<br/><b>FK: sampID</b><br/>Brik 30°C · Colour · pH"]
        T55["🌡️ temperature_55<br/><b>FK: sampID</b><br/>Brik 55°C · ATP · TPC"]
        TH["🔥 temperature_30high<br/><b>FK: SampID</b><br/>High Acid Brik · Flavour"]
        HF["🍓 HighAcid_Sampling_Flavour<br/><b>FK: SamplingID</b><br/>Product · Flavour 1–6"]
    end

    %% =============================
    %% Relationships
    %% =============================
    S -->|"SamplingID = sampID"| T30
    S -->|"SamplingID = sampID"| T55
    SH -->|"SamplingIDH = SampID"| TH
    SH -->|"SamplingIDH = SamplingID"| HF

    EMP -.->|"Code = ผู้ปฏิบัติงาน"| S
    EMP -.->|"Code = ผู้ปฏิบัติงาน"| SH
    MAC -.->|"No = Machine"| S
    MAC -.->|"No = machine"| SH
    LOGIN -.->|"ตรวจสอบสิทธิ์"| S

    %% =============================
    %% Visual Styles
    %% =============================
    classDef low fill:#102d46,stroke:#54e7ff,color:#eaf9ff,stroke-width:2px;
    classDef high fill:#402a18,stroke:#ffad5c,color:#fff4e7,stroke-width:2px;
    classDef detail fill:#20234b,stroke:#9b8cff,color:#f2f0ff,stroke-width:1.5px;
    classDef master fill:#173b32,stroke:#7df1a8,color:#ecfff5,stroke-width:1.5px;
    classDef auth fill:#32224b,stroke:#c697ff,color:#fbf4ff,stroke-width:1.5px;

    class S low;
    class SH high;
    class T30,T55,TH,HF detail;
    class EMP,MAC master;
    class LOGIN auth;

    linkStyle 0,1 stroke:#54e7ff,stroke-width:2.5px;
    linkStyle 2,3 stroke:#ffad5c,stroke-width:2.5px;
    linkStyle 4,5,6 stroke:#7df1a8,stroke-width:1.5px,stroke-dasharray:5 5;
    linkStyle 7 stroke:#c697ff,stroke-width:1.5px,stroke-dasharray:5 5;
```

## 🔑 Key Relationship

| ตารางต้นทาง | ตารางปลายทาง | Column ที่ใช้เชื่อม | ความสัมพันธ์ |
|---|---|---|---|
| `Sampling` | `temperature_30` | `SamplingID = sampID` | Sampling 1 รายการมี Brik 30°C หลายรายการ |
| `Sampling` | `temperature_55` | `SamplingID = sampID` | Sampling 1 รายการมี Brik 55°C หลายรายการ |
| `[Sampling high]` | `temperature_30high` | `SamplingIDH = SampID` | High Acid 1 รายการมี Brik หลายรายการ |
| `[Sampling high]` | `HighAcid_Sampling_Flavour` | `SamplingIDH = SamplingID` | เก็บ Product และ Flavour ของ Sampling |
| `empolyee` | `Sampling` / `[Sampling high]` | `Code` | เชื่อมรหัสผู้ปฏิบัติงาน |
| `Machine` | `Sampling` / `[Sampling high]` | `No` | เชื่อมข้อมูลเครื่องจักร |
| `TB_APP1_LOGIN` | ระบบ Login | `user`, `password` | ตรวจสอบบัญชีผู้ใช้งาน |

## 🎨 Legend

- 🔵 **เส้นสีฟ้า:** ความสัมพันธ์ของ Sampling ปกติ / Low Acid
- 🟠 **เส้นสีส้ม:** ความสัมพันธ์ของ Sampling High Acid
- 🟢 **เส้นประสีเขียว:** ความสัมพันธ์กับข้อมูลพนักงานและเครื่องจักร
- 🟣 **เส้นประสีม่วง:** ความสัมพันธ์ของระบบ Login
- **PK:** Primary Key — คีย์หลักของตาราง
- **FK:** Foreign Key — คีย์ที่ใช้อ้างอิงไปยังตารางอื่น

## 🔄 Data Flow โดยสรุป

1. 📝 สร้างรายการใน `Sampling` หรือ `[Sampling high]`
2. 🧱 สร้างรายการ Brik ในตาราง `temperature_*`
3. 👥 เชื่อมผู้ปฏิบัติงานจาก `empolyee`
4. 🏭 เชื่อมเครื่องจักรจาก `Machine`
5. 🌡️ บันทึกผลตรวจ เช่น Colour, pH, ATP และ TPC
6. ✅ สรุปผลและอนุมัติผ่านกระบวนการ QSM/QA

> 📌 หมายเหตุ: GitHub จะแสดง Mermaid เมื่อไฟล์อยู่ใน Repository และเปิดผ่านหน้าเว็บ GitHub โดยตรง

