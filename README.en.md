# Digitalization QSM & PRP Project

<p align="right">
  🌐 เวอร์ชันภาษาไทย: <a href="README.md">README.md</a>
</p>

<p align="center">
  <img src="assets/header.svg" alt="Digitalization QSM and PRP Project Header" width="100%">
</p>

<p align="center">
  <a href="#-project-overview"><img src="https://img.shields.io/badge/Project-Digitalization-2563EB?style=for-the-badge&logo=github&logoColor=white" alt="Project" /></a>
  <a href="#-application-and-department-integration"><img src="https://img.shields.io/badge/Department-QSM%20%7C%20UHT%20%7C%20PRP-0891B2?style=for-the-badge&logo=databricks&logoColor=white" alt="Departments" /></a>
  <a href="#-technology-stack"><img src="https://img.shields.io/badge/Technology-Budibase%20%7C%20MSSQL%20%7C%20JavaScript-14B8A6?style=for-the-badge&logo=javascript&logoColor=white" alt="Technology" /></a>
</p>

<p align="center">
  <strong>A digital platform for supporting operations, inspections, and production-process traceability</strong>
</p>

---

## 📌 Project Overview

The **Digitalization QSM & PRP** project develops digital systems to support the **QSM, UHT, and PRP** departments. It focuses on reducing paper-based work, improving data accuracy, and providing systematic process-status tracking.

The systems cover the full workflow: creating inspection records, recording data, connecting information between departments, generating reports, and tracking process status.

### 🎯 Main Objectives

- 🗂️ Store operational data in a centralized system
- 🧾 Reduce paperwork and duplicate data entry
- 🔗 Connect data across QSM, UHT, and PRP
- ✅ Improve data accuracy and completeness
- 📊 Support inspections and report generation
- 🔍 Track work status quickly and clearly

---

## 🔗 Application and Department Integration

| Department | Application | Project Folder |
|---|---|---|
| 🏭 Filling: UHT1, UHT2, UHT3 | QSM Sampling Check | [Open QSM Sampling Check](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Sampling%20Check) |
| 🧫 QSM Microbiological | QSM Microbiological Analysis System | [Open QSM Microbiological Analysis System](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Microbiological%20Analysis%20System) |
| 🥛 QSM Microbiological | QSM Raw Milk | [Open QSM Raw Milk Analysis](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20RawMilk) |
| 🔬 QSM Microbiological | QSM Microbiological | [Open QSM Microbiological](https://github.com/Tkyaemsuk/Digitalization_QSM_Project/tree/main/QSM%20Microbiological) |

> ℹ️ If a folder name differs on GitHub, update the corresponding URL to match the actual folder name.

---

## 🧩 Project Scope

### 🏭 QSM Sampling Check

A system for the Filling and Production teams to create sampling records, record milk-sample data at 30°C and 55°C, monitor status, and generate reports.

Key features:

- Create Sampling records and QR Codes
- Record Brik data in sequence
- Support shift-based data entry
- Track Sampling status
- Generate Production Reports
- Lock Sampling records when the process is complete

### 🧫 QSM Microbiological Analysis System

A system for managing microbiological analysis, from sample receiving and test-result entry to result verification and approval.

### 🥛 QSM Raw Milk Analysis

A system for managing raw-milk analysis data to support quality control before the production process.

### 🔬 QSM Microbiological

A project or module for storing and processing microbiological data, including integration with QSM inspection workflows.

---

## 🔄 Process Overview

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

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| 🟨 **Budibase** | Build application interfaces, applications, and workflows |
| 🗄️ **Microsoft SQL Server** | Store and process system data |
| 🟨 **JavaScript** | Process data and control application-page behavior |
| 🧰 **GitHub** | Store project source code and documentation |

---

## 📁 Project Structure

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

## 📈 Benefits

- ⚡ Reduce the time required to find and verify data
- 📋 Reduce errors from manual data entry
- 🔐 Control user permissions and workflow sequence
- 🧭 Provide clear visibility into Sampling status and test results
- 🗃️ Maintain organized documentation and reference data
- 🤝 Support collaboration between Production, UHT, and QSM

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:14B8A6,50:0891B2,100:0F172A&height=120&section=footer" alt="Project Footer" width="100%" />
</p>

<p align="center">
  <sub>Digitalization QSM & PRP Project • Quality • Accuracy • Traceability</sub>
</p>
