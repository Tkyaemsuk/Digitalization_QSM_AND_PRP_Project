# 📚 หลักฐานและการดูแลเอกสาร

[กลับหน้าหลัก](../README.md)

เอกสารนี้ใช้ Budibase latest edited app export วันที่ 2026-10-12. ส่งออกโดยไม่รวม rows ของ internal tables. เผยแพร่เฉพาะ SQL source, metadata ที่ใช้ทำเอกสาร และอธิบาย screen events; datasource connection config, credentials, export archive และข้อมูลธุรกิจไม่อยู่ในชุดเผยแพร่.

## ระดับหลักฐาน

- SQL: source body เก็บครบใน database/Query; manifest มี SHA-256 ของ body ก่อนเพิ่ม header.
- Tables: data dictionary มาจาก schema ใน Builder, ไม่ยืนยัน SQL constraints/length/default ที่ export ไม่ระบุ.
- Screens: fields, actions และ query mappings มาจาก screen config จริง; ไม่ใช่ mapping ที่เดาจากชื่อ route.
- ER: เงื่อนไขเชื่อมจาก SQL; cardinality เป็น logical model ยังไม่ใช่ FK constraint ที่ยืนยันจาก SQL Server.
- ไม่ได้รัน SQL บนฐานข้อมูลจริง. ไม่มีการทดสอบผลตรวจหรือรับรองสูตรทางห้องปฏิบัติการ.

## อัปเดตชุดเอกสาร

1. ส่งออก latest edited app หลังเปลี่ยนแปลง และเก็บ archive ในที่เข้าถึงจำกัด.
2. เทียบ query ID และ source hash แล้วอัปเดต SQL พร้อม comment ชื่อ query.
3. อัปเดต Query README และ screen usage พร้อมกันเมื่อ bindings/actions เปลี่ยน.
4. อัปเดตตารางและ ER เมื่อ schema หรือ JOIN key เปลี่ยน.
5. ใช้ commit message ที่บอกแอปและขอบเขต เช่น `docs(qsm-microbiological): document tables and screen actions` และ `chore(qsm-microbiological): export 39 named SQL queries`.
