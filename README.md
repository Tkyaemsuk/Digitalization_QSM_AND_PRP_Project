# Digitalization QSM & PRP Project

<p align="right">
  🌐 English version: <a href="README.en.md">Cick Me!</a>
</p>

<p align="center">
  <img src="assets/header.svg" alt="Digitalization QSM and PRP Project Header" width="100%">
</p>

<p align="center">
  <a href="#-ภาพรวมโครงการ"><img src="https://img.shields.io/badge/Project-Digitalization-2563EB?style=for-the-badge&logo=github&logoColor=white" alt="Project" /></a>
  <a href="#-การเชื่อมโยงแอปพลิเคชันและหน่วยงาน"><img src="https://img.shields.io/badge/Department-QSM%20%7C%20UHT%20%7C%20PRP-0891B2?style=for-the-badge&logo=databricks&logoColor=white" alt="Departments" /></a>
  <a href="#-เทคโนโลยีที่เกี่ยวข้อง"><img src="https://img.shields.io/badge/Technology-Budibase%20%7C%20MSSQL%20%7C%20JavaScript-14B8A6?style=for-the-badge&logo=javascript&logoColor=white" alt="Technology" /></a>
</p>

<p align="center">
  <strong>ระบบดิจิทัลสำหรับสนับสนุนการทำงาน การตรวจสอบ และการติดตามข้อมูลในกระบวนการผลิต</strong>
</p>

---

## 📌 ภาพรวมโครงการ

โครงการ **Digitalization QSM & PRP** จัดทำขึ้นเพื่อพัฒนาระบบดิจิทัลสำหรับสนับสนุนการทำงานของหน่วยงาน **QSM, UHT และ PRP** โดยมุ่งเน้นการลดการบันทึกข้อมูลด้วยเอกสาร เพิ่มความถูกต้องของข้อมูล และทำให้สามารถติดตามสถานะการทำงานได้อย่างเป็นระบบ

ระบบครอบคลุมการทำงานตั้งแต่การสร้างรายการตรวจสอบ การบันทึกข้อมูล การเชื่อมโยงข้อมูลระหว่างหน่วยงาน ไปจนถึงการจัดทำรายงานและติดตามสถานะของกระบวนการทำงาน

### 🎯 เป้าหมายหลัก

- 🗂️ จัดเก็บข้อมูลการทำงานไว้ในระบบกลาง
- 🧾 ลดการใช้เอกสารและการบันทึกข้อมูลซ้ำซ้อน
- 🔗 เชื่อมโยงข้อมูลระหว่าง QSM, UHT และ PRP
- ✅ เพิ่มความถูกต้องและความครบถ้วนของข้อมูล
- 📊 สนับสนุนการตรวจสอบและจัดทำรายงาน
- 🔍 ติดตามสถานะของงานได้อย่างรวดเร็ว

---

## 🔗 การเชื่อมโยงแอปพลิเคชันและหน่วยงาน

| หน่วยงาน | แอปพลิเคชัน | โฟลเดอร์โครงการ |
|---|---|---|
| 🏭 Filling: UHT1, UHT2, UHT3 | QSM Sampling Check | [เปิดโฟลเดอร์ QSM Sampling Check](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Sampling%20Check) |
| 🧫 QSM Microbiological | QSM Microbiological Analysis System | [เปิดโฟลเดอร์ QSM Microbiological Analysis System](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Microbiological%20Analysis%20System) |
| 🥛 QSM Microbiological | QSM Raw Milk | [เปิดโฟลเดอร์ QSM Raw Milk Analysis](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20RawMilk) |
| 🔬 QSM Microbiological | QSM Microbiological | [เปิดโฟลเดอร์ QSM Microbiological](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Microbiological) |

> ℹ️ หากชื่อโฟลเดอร์ใน GitHub แตกต่างจากที่ระบุไว้ กรุณาปรับ URL ในตารางให้ตรงกับชื่อโฟลเดอร์จริง

---

## 🧩 ขอบเขตการทำงานของแต่ละโครงการ

### 🏭 QSM Sampling Check

ระบบสำหรับฝ่าย Filling และ Production ใช้สร้าง Sampling บันทึกข้อมูลตัวอย่างนมแยกตามอุณหภูมิ 30°C และ 55°C รวมถึงตรวจสอบสถานะและจัดทำรายงาน

ฟังก์ชันสำคัญ:

- สร้าง Sampling และ QR Code
- บันทึกข้อมูล Brik ตามลำดับ
- รองรับการบันทึกข้อมูลตามกะการทำงาน
- ติดตามสถานะ Sampling
- จัดทำ Report Production
- รองรับการล็อก Sampling เมื่อสิ้นสุดกระบวนการ

### 🧫 QSM Microbiological Analysis System

ระบบสำหรับจัดการกระบวนการตรวจวิเคราะห์ทางจุลชีววิทยา ตั้งแต่การรับตัวอย่าง การบันทึกผลการตรวจ การตรวจสอบผล และการอนุมัติผล

### 🥛 QSM Raw Milk Analysis

ระบบสำหรับจัดการข้อมูลการตรวจวิเคราะห์วัตถุดิบประเภทน้ำนมดิบ เพื่อสนับสนุนการควบคุมคุณภาพก่อนเข้าสู่กระบวนการผลิต

### 🔬 QSM Microbiological

โครงการหรือโมดูลที่เกี่ยวข้องกับการจัดเก็บและประมวลผลข้อมูลด้านจุลชีววิทยา รวมถึงการเชื่อมโยงข้อมูลกับกระบวนการตรวจสอบของฝ่าย QSM

---

## 🔄 ภาพรวมกระบวนการทำงาน

```mermaid
flowchart LR
    A[🏭 UHT / Filling] --> B[🧪 Create Sampling]
    B --> C[📝 Record Data]
    C --> D[📤 Send Sampling]
    D --> E[🧫 QSM Receive]
    E --> F[🔬 Microbiological Analysis]
    F --> G[📊 Report & Status]
    G --> H[✅ Approve / Finish]
```

---

## 🛠️ เทคโนโลยีที่เกี่ยวข้อง

| เทคโนโลยี | หน้าที่ |
|---|---|
| 🟨 **Budibase** | พัฒนาอินเทอร์เฟซ แอปพลิเคชัน และ Workflow |
| 🗄️ **Microsoft SQL Server** | จัดเก็บและประมวลผลข้อมูลของระบบ |
| 🟨 **JavaScript** | ประมวลผลข้อมูลและควบคุมการทำงานของหน้าแอปพลิเคชัน |
| 🧰 **GitHub** | จัดเก็บซอร์สโค้ดและเอกสารของโครงการ |

---

## 📁 โครงสร้างโครงการโดยสรุป

```text
Digitalization_QSM_AND_PRP_Project/
├── QSM Sampling Check/
├── QSM Microbiological Analysis System/
├── QSM RAW MILK ANALYSIS/
├── QSM Microbiological/
├── assets/
├── README.md
└── README.en.md
```

---

## 📈 ประโยชน์ที่ได้รับ

- ⚡ ลดระยะเวลาในการค้นหาและตรวจสอบข้อมูล
- 📋 ลดข้อผิดพลาดจากการคีย์ข้อมูลด้วยตนเอง
- 🔐 ควบคุมสิทธิ์และลำดับการทำงานของผู้ใช้งาน
- 🧭 มองเห็นสถานะของ Sampling และผลการตรวจได้ชัดเจน
- 🗃️ มีเอกสารและข้อมูลอ้างอิงที่เป็นระบบ
- 🤝 สนับสนุนการทำงานร่วมกันระหว่าง Production, UHT และ QSM

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:14B8A6,50:0891B2,100:0F172A&height=120&section=footer" alt="Project Footer" width="100%" />
</p>

<p align="center">
  <sub>Digitalization QSM & PRP Project • Quality • Accuracy • Traceability</sub>
</p>
