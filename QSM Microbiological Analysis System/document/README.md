# หลักฐานและคู่มือบำรุงรักษาเอกสาร

[หน้าหลัก](../README.md) · [Integration](../integration/README.md)

## แหล่งที่อ่าน

- แอป QSM Microbiological Analysis System, app ID `app_dev_ebfe04d0552f482b87e46c838d19cb3e`.
- Budibase latest edited app export วันที่2026-10-12 โดยไม่รวม rows ของ internal tables.
- Query documents66ตัว: อ่าน SQL body ทุกตัว พร้อม parameters, return schema และ transformer.
- Screen documents22หน้า: อ่าน route, access, components, fields, events, data source bindings, conditions และ decoded JavaScript.
- Datasource entities11ตาราง; employee และ Recall_pH พบใน SQL เพิ่มอีก2ตารางแต่ไม่มี imported schema.
- เอกสารและ SQL ของ QSM Sampling Check บน GitHub ใช้เทียบ data contract; ระบุลิงก์ source และ commit ใน Integration.

ชุดเผยแพร่ไม่รวม export archive, datasource connection config, credentials, rows ของบัญชีผู้ใช้หรือข้อมูลธุรกิจ. SQL/schema/code ที่ใช้พัฒนาอยู่ในเอกสารตามขอบเขตงาน.

## ระดับความเชื่อมั่น

| ส่วน | ยืนยันจากอะไร | สิ่งที่ยังไม่ยืนยัน |
|---|---|---|
| SQL | Query document ใน export | ผลการรันจริงบนข้อมูลปัจจุบัน |
| Bindings/actions | Screen config และ JavaScript ที่ถอดรหัส | การประเมินค่า ณ runtime และผลของ plugin ภายนอก |
| Column types/PK | Datasource entity metadata | SQL lengths/defaults/indexes/FK/NOT NULL ที่ไม่ได้ export |
| ER | JOIN/business key ใน SQL | ความเป็น unique และ FK constraints จริง |
| Integration | SQL สองแอปและชื่อ key/fields | connection settings ของ live Sampling Check และ revision ตรงกับ GitHub หรือไม่ |
| Access | PUBLIC20หน้า, BASIC2หน้า | การ enforce สิทธิ์ฝั่ง server/SQL |

ไม่มีการ execute SQL, import CSV, บันทึกผลตรวจ, publish app หรือเปลี่ยน lock ระหว่างจัดทำเอกสาร. เอกสารอ้าง latest edited app จึงอาจต่างจาก published revision.

## จุดที่ต้องอ่านก่อนแก้โค้ด

1. `/login`: Clear Form อยู่ก่อน Login_API; การอ้าง action result ใช้ `actions.4.result...`. การแทรก action ต้องอัปเดต index ที่ตามมา. Sync quantity ทั้งชุดเกิดก่อนตรวจจำนวนแถวผล login.
2. `/in-out-csv/:sampid`: onImport ของ CSV component ทั้งสองชุดอ้าง UpdateTemp30; ปุ่ม IMPORT แยก UPDATE_IMPORT/55. อย่าสมมติว่าการเลือกไฟล์กับการกด IMPORT มีผลเหมือนกัน.
3. SQL provider บางตัวเก็บสำเนาชื่อ/SQL เก่า. เอกสารรายหน้ามี currentQueryName และ embeddedSqlDiffersFromCurrentQuery; แก้ query โดย ID ให้ถูกตัว.
4. SamplingTable.ActualDate filter ใช้ FillingDate+dayFinished; HighAcid_Tables ใช้ check_date. ชื่อ filter คล้ายกันแต่ตรรกะต่างกัน.
5. Unlock ไม่ล้าง supervisor/ผลเดิม; ต้องตกลง re-approval เมื่อกลับไปแก้ Production.
6. MERGE Recall_pH ไม่มี sampling filter และเลือกค่า pH ต่ำสุด16ลำดับ; getph_sampling ใช้ SamplingID โดยไม่มี Group ใน key.
7. Imported schema ของ Sampling high ไม่มี Submit_remark แต่ query เขียนคอลัมน์นี้; ตรวจ DDL/schema refresh.
8. ชื่อ query ไม่ได้ยืนยัน operation: `Physical_Report` เป็น UPDATE, `link data` อัปเดตหลายแถว และ `getph_sampling` มี UPDATE ก่อน SELECT.

## วิธีใช้และอัปเดต SQL

ไฟล์แต่ละตัวเริ่มด้วย comment ระบุ Application, Query name, File, Query ID, Source และ Bindings. Body หลัง header เก็บตาม export. `manifest.json` บันทึก SHA-256 ของ source body ก่อนเพิ่ม header เพื่อเทียบ revision. ไม่เพิ่มคำสั่ง transaction COMMIT ให้ SQL เดิม; commit ที่ผู้พัฒนาใช้ติดตามไฟล์เป็น **Git commit**.

1. ส่งออก latest edited app เมื่อแก้ schema/query/screens แล้วเก็บต้นฉบับในพื้นที่ที่จำกัดสิทธิ์.
2. เทียบ Query ID และ SHA-256; เก็บชื่อไฟล์/ชื่อ query ที่เปลี่ยนเป็นการ rename ที่ตรวจได้.
3. อัปเดตคำอธิบาย inputs, predicates, output, mutation scope และ screen references ใน Query README.
4. เมื่อเปลี่ยน screen events ให้ปรับลำดับและ action-result indices ในเอกสารด้วย.
5. เมื่อเปลี่ยนตารางร่วมให้อัปเดต Integration และประสาน QSM Sampling Check ก่อน deploy.
6. ใช้ commit ที่ระบุแอปและเนื้อหา เช่น `chore(qsm-analysis): export 66 named SQL queries` และ `docs(qsm-analysis): document screens, database and Sampling Check integration`.

## งานที่ควรเตรียมในสภาพแวดล้อมพัฒนา

ก่อนเปลี่ยนพฤติกรรมแอป ให้มี DDL ปัจจุบันและข้อมูลตัวอย่างที่เหมาะสมสำหรับกรณีไม่มี Brik, no ข้าม/ซ้ำ, หลาย Group ต่อ SamplingID, QC มากกว่า10, กล่องมากกว่า15/30/192, CSV มี sampling อื่น และ unlock หลังอนุมัติ. หัวข้อนี้เป็นแนวทางสำหรับผู้รับช่วง ไม่ใช่ผลทดสอบระบบในงานจัดเอกสารนี้.
