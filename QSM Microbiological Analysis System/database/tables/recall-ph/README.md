# Recall_pH

ตารางกลาง pH1–PH16 สร้าง/อัปเดตด้วย MERGE ตาม SamplingID+Group; ไม่พบ imported schema ใน export.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

ไม่พบ schema ใน datasource export จึงไม่กำหนด PK/FK/type/nullability เอง. คอลัมน์ที่ใช้งานและ JOIN key อ่านได้จาก SQL ที่ลิงก์ด้านล่าง.

## Query ที่เกี่ยวข้อง

- [getph_sampling](<../../Query/getph_sampling.sql>): รับ SamplingID หลัง trim แล้ว JOIN Recall_Ph กับ Sampling. CROSS APPLY VALUES ของ PH1–PH16 เพื่อหา MIN/MAX และอัปเดต Sampling.PH_Before/PH_Before2. SELECT ท้ายคืน PH ทั้ง 16 ค่า MIN/MAX และค่าที่บันทึก. กรอง SamplingID อย่างเดียว ไม่รวม Group; ถ้า Recall_Ph มีหลาย Group สำหรับ sampling เดียว UPDATE JOIN อาจมีหลาย source ต่อหนึ่งหัวและต้องกำหนดกติกาการรวมเพิ่มเติม.
- [Merge_Recall_pH_Unique_SamplingID_Group](<../../Query/Merge_Recall_pH_Unique_SamplingID_Group.sql>): เชื่อม Sampling กับ machine และ Finish-good เมื่อ EXP_Data อยู่ในวันเดียวกับ ExpiredDate และ Group ของ Finish-good ตรงตัวอักษรแรกของชื่อ machine. TRY_CONVERT pH เป็น DECIMAL(10,3), ตัดค่าที่แปลงไม่ได้, เรียง pH จากน้อยไปมากแล้ว id; เลือกสูงสุด 16 ค่าต่อ SamplingID+Group และ pivot PH1–PH16. MERGE Recall_pH WITH(HOLDLOCK) โดย key SamplingID+Group: UPDATE เฉพาะเมื่อ EXCEPT พบค่าต่าง, INSERT เมื่อไม่มี target; ไม่มี DELETE เมื่อ source หาย. คืน ActionType/SamplingID/Group. ไม่มี binding จำกัด sampling จึงประมวลผลทั้งชุด; ค่าที่ 17 เป็นต้นไปถูกละไว้และ PH_MAX จากขั้นถัดไปอาจไม่ใช่ max ของ Finish-good ทั้งหมด.
