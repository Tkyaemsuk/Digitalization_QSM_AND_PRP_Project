# PRP2 — Dairy Mixing and Quality Control

[← PRP overview](../README.md)

## 📌 Overall Project Overview

**PRP2 (Production Building 2)** คืออาคารการผลิตที่ 2 ของระบบการผลิต โดยมีหน้าที่หลักในการผลิต **นมเปรี้ยว (Fermented Milk)** และมีการส่ง **นมสด (Fresh Milk)** และ **นมเปรี้ยว (Fermented Milk)** ไปยัง PRP1 และ PRP3 เพื่อใช้ในกระบวนการผลิตต่อไป

นอกจากการเก็บข้อมูลการผลิต PRP2 ยังมีส่วนสำหรับจัดการข้อมูล **Mixing** ซึ่งใช้สำหรับบันทึกข้อมูลส่วนผสม การควบคุมการผสมนม และการตรวจสอบคุณภาพ โดยแบ่งการทำงานของ Mixing ออกเป็น **6 Groups ได้แก่ F, G, H, I, J และ K**

ระบบ PRP2 ถูกพัฒนาขึ้นเพื่อจัดเก็บข้อมูลการผลิต การตรวจสอบ การจัดการข้อมูลส่วนผสม การควบคุมการผสมนม และข้อมูลผลิตภัณฑ์หลังผ่านกระบวนการฆ่าเชื้อ โดยข้อมูลแต่ละส่วนเชื่อมโยงกันผ่าน `Product_ID`, `Batch` และ `Date_ID`

---

## 👥 System Users

ระบบ PRP2 มีผู้ใช้งานหลัก 3 กลุ่ม

| User | Responsibility |
|---|---|
| **SUP** | สร้าง `Product_ID` และดำเนินการในส่วนที่ต้องใช้สิทธิ์ SUP |
| **Control** | กรอกและตรวจสอบข้อมูลด้าน Control และข้อมูลที่เกี่ยวข้องกับ Mixing |
| **Operator** | กรอกข้อมูลการผลิตและข้อมูลที่เกิดขึ้นในแต่ละกระบวนการ |

สิทธิ์การเข้าถึงและการแก้ไขข้อมูลของแต่ละหน้าจะขึ้นอยู่กับหน้าที่ของผู้ใช้งาน

---

# 🔄 Workflow

```mermaid
flowchart TD

    A["Create Tag — /create-tag-plant2<br/>SUP สร้าง Product_ID"]

    A -->|"Automation: Save Row"| Y[("Yield_prp2<br/>1 row / Batch")]
    A -->|"Automation: Save Row"| FG[("Finish-good<br/>1 row / Batch")]

    Y -->|"Buffer Lab / Buffer Control"| S[("PRP_Spec<br/>Source / Flavor")]
    Y -->|"ข้อมูลส่วนผสมที่ผสมเป็น Buffer"| M["/mixing_table/:user control สร้าง Date_ID "]

    M -->|"Control สร้าง Date_ID"| MT[("Mixing_prp2<br/>1 row / 5 Batch")]
    M -->|"Control สร้าง Date_ID"| CM[("Control_Mixing<br/>1 row / 5 Batch")]
    M -->|"Control สร้าง Date_ID"| RL[("Recombine_labprp2<br/>1 row / 6 Batch")]

    S -.->|"Spec Check"| Y
