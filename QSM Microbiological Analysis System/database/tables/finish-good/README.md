# Finish-good

แหล่งข้อมูลตรวจ Finished Goods; query ดึง pH โดยเทียบวันหมดอายุและกลุ่มเครื่องจักร.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `F_ID` | `nvarchar` | string | False | False |
| `F_Time` | `datetime2` | datetime | False | False |
| `Start_Steril` | `bit` | boolean | False | False |
| `Stop_Steril` | `bit` | boolean | False | False |
| `Steril` | `bit` | boolean | False | False |
| `Temp` | `float` | number | False | False |
| `pH` | `float` | number | False | False |
| `Brix` | `float` | number | False | False |
| `FAT` | `float` | number | False | False |
| `PROT` | `float` | number | False | False |
| `TS` | `float` | number | False | False |
| `SG` | `float` | number | False | False |
| `Sediment` | `float` | number | False | False |
| `SNF` | `float` | number | False | False |
| `Color` | `bit` | boolean | False | False |
| `Oder` | `bit` | boolean | False | False |
| `Taste` | `bit` | boolean | False | False |
| `OPT` | `float` | number | False | False |
| `Flavor` | `nvarchar` | string | False | False |
| `Size_ml` | `float` | number | False | False |
| `Group` | `nvarchar` | string | False | False |
| `Prodution_date` | `datetime2` | datetime | False | False |
| `EXP_Data` | `datetime2` | datetime | False | False |
| `Batch` | `nvarchar` | string | False | False |
| `No` | `float` | number | False | False |
| `OPT2` | `float` | number | False | False |
| `OPT3` | `float` | number | False | False |
| `Brix2` | `float` | number | False | False |
| `Brix3` | `float` | number | False | False |
| `F_Time2` | `datetime2` | datetime | False | False |
| `F_Time3` | `float` | number | False | False |
| `F_Remark1` | `float` | number | False | False |
| `F_Remark2` | `float` | number | False | False |
| `F_Remark3` | `float` | number | False | False |
| `F_Remark2 copy copy` | `float` | number | False | False |
| `F_sup` | `float` | number | False | False |
| `F_supdate` | `float` | number | False | False |
| `Color copy` | `bit` | boolean | False | False |
| `Week` | `float` | number | False | False |
| `Loop` | `float` | number | False | False |
| `Size` | `float` | number | False | False |
| `Fill_Time` | `float` | number | False | False |
| `TA` | `float` | number | False | False |
| `pH2` | `float` | number | False | False |
| `colorTable` | `float` | number | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Merge_Recall_pH_Unique_SamplingID_Group](<../../Query/Merge_Recall_pH_Unique_SamplingID_Group.sql>): เชื่อม Sampling กับ machine และ Finish-good เมื่อ EXP_Data อยู่ในวันเดียวกับ ExpiredDate และ Group ของ Finish-good ตรงตัวอักษรแรกของชื่อ machine. TRY_CONVERT pH เป็น DECIMAL(10,3), ตัดค่าที่แปลงไม่ได้, เรียง pH จากน้อยไปมากแล้ว id; เลือกสูงสุด 16 ค่าต่อ SamplingID+Group และ pivot PH1–PH16. MERGE Recall_pH WITH(HOLDLOCK) โดย key SamplingID+Group: UPDATE เฉพาะเมื่อ EXCEPT พบค่าต่าง, INSERT เมื่อไม่มี target; ไม่มี DELETE เมื่อ source หาย. คืน ActionType/SamplingID/Group. ไม่มี binding จำกัด sampling จึงประมวลผลทั้งชุด; ค่าที่ 17 เป็นต้นไปถูกละไว้และ PH_MAX จากขั้นถัดไปอาจไม่ใช่ max ของ Finish-good ทั้งหมด.
