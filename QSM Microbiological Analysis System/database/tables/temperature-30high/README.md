# temperature_30high

Brik High Acid: TPC/Y_M, Colour/Smell/Appearance และข้อมูล product/flavour.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `No` | `nvarchar` | string | False | False |
| `Product` | `nvarchar` | string | False | False |
| `sampling_ref_id` | `nvarchar` | string | False | False |
| `Code` | `datetime2` | datetime | False | False |
| `Flavour` | `nvarchar` | string | False | False |
| `SampID` | `nvarchar` | string | False | False |
| `TPC` | `nvarchar` | string | False | False |
| `Y_M` | `nvarchar` | string | False | False |
| `Colour` | `bit` | boolean | False | False |
| `Smell` | `bit` | boolean | False | False |
| `Appearance` | `bit` | boolean | False | False |
| `Remark` | `nvarchar` | string | False | False |
| `ColourCode` | `nvarchar` | string | False | False |
| `status` | `nvarchar` | string | False | False |
| `id` | `int` | number | False | True |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง

- [Bottom_Recall](<../../Query/Bottom_Recall.sql>): อ่าน temperature_30high สำหรับรายการ SamplingID คั่น comma; join Sampling high และ machine เพื่อแสดงชื่อเครื่องจักร. เรียง global_row ตาม t.id และจัด 96 กล่องต่อหน้า, 8 คอลัมน์, 4 แถวต่อชั้น, 16 กล่องต่อถาด, 32 กล่องต่อชั้น. คืน Brik_Time จาก code +7 ชั่วโมง พร้อม page_no/floor_no/tray_no/row_no/col_no และ flags เริ่มหน้า/ชั้น/ถาด/แถวที่ SQL มี. page_no ว่างอ่านทุกหน้า; ค่าอื่น CAST เป็น INT.
- [CallBack Sampling_HighAcid](<../../Query/CallBack Sampling_HighAcid.sql>): อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.
- [CallBackTable](<../../Query/CallBackTable.sql>): อ่าน temperature_30high ของ sampID เรียง id พร้อม RowNo และ Time จาก Code +7 ชั่วโมง. PageNo ว่างหรือ all คืนทุกแถว; ค่าเลขแบ่งหน้าละ 30. TRY_CAST ที่แปลงไม่ได้ทำให้ช่วง BETWEEN เป็น NULL และไม่พบแถว แทนการคืน error จากการแปลง.
- [CheckBox_Bottom_Brik](<../../Query/CheckBox_Bottom_Brik.sql>): แก้ ColourCode, colour, smell และ Appearance ของ temperature_30high ตาม id. Appearance รับ binding Smell ตัวเดียวกับ smell ไม่ใช่ binding แยก; รักษาพฤติกรรมนี้ไว้ใน SQL source.
- [SYNCHIGH_QUNITY_SAMPLINGS](<../../Query/SYNCHIGH_QUNITY_SAMPLINGS.sql>): หา no ของ temperature_30high แถว id ล่าสุดต่อ sampID แล้วตั้ง Sampling high.amount. ไม่มี WHERE; หัวที่ไม่มี Brik ถูกตั้ง amount=NULL. เรียกใน /login คู่กับ sync Low Acid.
- [Update_Physicial_BottomPass_Brik](<../../Query/Update_Physicial_BottomPass_Brik.sql>): ตั้ง Colourcode/Colour/Smell/Appearance ของทุก Brik temperature_30high ใน samplings แบบ comma. ไม่มีตัวกรอง id, หน้า หรือสถานะเดิม จึงมีผลกับทุกกล่องของ sampling ที่เลือก.
- [Update_TPC_BottomPass_Brik](<../../Query/Update_TPC_BottomPass_Brik.sql>): ตั้ง Colourcode และ TPC ของทุก Brik temperature_30high ใน samplings แบบ comma. ไม่จำกัดเฉพาะกล่องที่แสดงอยู่ในหน้า และไม่แก้ค่า Y_M.
- [Update_Y&m_BottomPass_Brik](<../../Query/Update_Y&m_BottomPass_Brik.sql>): ตั้ง Colourcode และ Y_M ของทุก Brik temperature_30high ใน samplings แบบ comma. คงผล TPC เดิม; ชื่อมี & ให้รักษาชื่อไฟล์/ลิงก์ตรงกัน.
