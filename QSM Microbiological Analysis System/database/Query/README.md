# SQL Query — QSM Microbiological Analysis System

[หน้าหลัก](../../README.md) · [Database/ER](../README.md) · [เชื่อมต่อ Sampling Check](../../integration/README.md)

อ่าน SQL source ครบ **66 queries** จาก latest edited app วันที่ 2026-10-12. ชื่อไฟล์ตรงชื่อ query รวมการสะกดและช่องว่าง; ทุกไฟล์มี comment ระบุชื่อและ ID. `{...}` เป็น Budibase binding ต้องแทนค่าผ่าน connector จึงจะรันได้. Git commit ของไฟล์ไม่ใช่คำสั่ง COMMIT ใน SQL.

## สารบัญ

| Query / SQL | คำสั่งที่พบ | ตาราง | หน้าจออ้างอิง |
|---|---|---|---|
| [app_logs](<app_logs.sql>) | INSERT | app_activity_log | 3 |
| [Batch_Recall](<Batch_Recall.sql>) | SELECT | Quanity_Control_Sampling_highacid | 1 |
| [Bottom_Recall](<Bottom_Recall.sql>) | SELECT | machine, Sampling high, temperature_30high | 0 |
| [Call Actual pH](<Call Actual pH.sql>) | SELECT | machine, Sampling | 1 |
| [Call_Edit_Page](<Call_Edit_Page.sql>) | SELECT | machine, Sampling high | 1 |
| [CallBack Sampling](<CallBack Sampling.sql>) | SELECT | machine, Sampling, temperature_30, temperature_55, employee | 3 |
| [CallBack Sampling_HighAcid](<CallBack Sampling_HighAcid.sql>) | SELECT | machine, Quanity_Control_Sampling_highacid, Sampling high, temperature_30high, employee | 2 |
| [CallBackTable](<CallBackTable.sql>) | SELECT | temperature_30high | 3 |
| [CallProduct30](<CallProduct30.sql>) | SELECT | Sampling, temperature_30 | 1 |
| [CallProduct55](<CallProduct55.sql>) | SELECT | Sampling, temperature_55 | 1 |
| [CallProduct_Temp30](<CallProduct_Temp30.sql>) | SELECT | Sampling, temperature_30 | 1 |
| [CallProduct_Temp55](<CallProduct_Temp55.sql>) | SELECT | Sampling, temperature_55 | 1 |
| [Change_Colour](<Change_Colour.sql>) | UPDATE | temperature_30 | 0 |
| [ChangeColor_UseBtn](<ChangeColor_UseBtn.sql>) | UPDATE | temperature_30 | 1 |
| [ChangeColor_UseBtn55](<ChangeColor_UseBtn55.sql>) | UPDATE | temperature_55 | 1 |
| [CheckBox_Bottom_Brik](<CheckBox_Bottom_Brik.sql>) | UPDATE | temperature_30high | 0 |
| [CheckList Sampling](<CheckList Sampling.sql>) | SELECT | machine, Sampling high | 3 |
| [ColourCode](<ColourCode.sql>) | UPDATE | temperature_30 | 1 |
| [ColourCode 55](<ColourCode 55.sql>) | UPDATE | temperature_55 | 1 |
| [EditActurl30&55](<EditActurl30&55.sql>) | UPDATE | Sampling | 1 |
| [Getall_Sampling](<Getall_Sampling.sql>) | SELECT | Sampling | 1 |
| [GetList_Product30](<GetList_Product30.sql>) | SELECT | temperature_30 | 0 |
| [getph_sampling](<getph_sampling.sql>) | UPDATE, SELECT | Sampling, Recall_pH | 1 |
| [HighAcid_Tables](<HighAcid_Tables.sql>) | SELECT | machine, Sampling high | 1 |
| [link data](<link data.sql>) | UPDATE | Sampling, temperature_30 | 0 |
| [Login_API](<Login_API.sql>) | SELECT | tb_app1_login | 1 |
| [Merge_Recall_pH_Unique_SamplingID_Group](<Merge_Recall_pH_Unique_SamplingID_Group.sql>) | SELECT, MERGE, UPDATE, INSERT | Finish-good, machine, Sampling, Recall_pH | 1 |
| [Physical_Report](<Physical_Report.sql>) | UPDATE | Sampling | 1 |
| [Physical_Report2](<Physical_Report2.sql>) | UPDATE | Sampling | 1 |
| [Product_Remark](<Product_Remark.sql>) | UPDATE, EXEC |  | 1 |
| [Quanity Table](<Quanity Table.sql>) | SELECT | machine, Quanity_Control_Sampling_highacid, Sampling high | 1 |
| [Quanity_Control_Added](<Quanity_Control_Added.sql>) | INSERT, SELECT | Quanity_Control_Sampling_highacid | 1 |
| [Qunity_pass](<Qunity_pass.sql>) | UPDATE, SELECT | Quanity_Control_Sampling_highacid | 1 |
| [Remove_Qc Table](<Remove_Qc Table.sql>) | DELETE | Quanity_Control_Sampling_highacid | 1 |
| [Report_List_Page](<Report_List_Page.sql>) | SELECT | temperature_30 | 2 |
| [result_physical_api](<result_physical_api.sql>) | UPDATE | Sampling | 1 |
| [result_physical_api 2](<result_physical_api 2.sql>) | UPDATE | Sampling | 1 |
| [SamplingTable](<SamplingTable.sql>) | SELECT | machine, Sampling | 1 |
| [Save CheckDate HighAcid](<Save CheckDate HighAcid.sql>) | UPDATE | Sampling high | 1 |
| [Sup_Approve](<Sup_Approve.sql>) | UPDATE | Sampling | 2 |
| [Sup_Edit_PART](<Sup_Edit_PART.sql>) | UPDATE | Sampling high | 1 |
| [SYNC_QUNITY_SAMPLINGS](<SYNC_QUNITY_SAMPLINGS.sql>) | SELECT, UPDATE | Sampling, temperature_30, temperature_55 | 1 |
| [SYNCHIGH_QUNITY_SAMPLINGS](<SYNCHIGH_QUNITY_SAMPLINGS.sql>) | SELECT, UPDATE | Sampling high, temperature_30high | 1 |
| [Table_30](<Table_30.sql>) | SELECT | temperature_30 | 1 |
| [Table_55](<Table_55.sql>) | SELECT | temperature_55 | 0 |
| [UnlockSamp_HighAcid_Production](<UnlockSamp_HighAcid_Production.sql>) | UPDATE | Sampling high | 1 |
| [UnlockSamp_Production](<UnlockSamp_Production.sql>) | UPDATE | Sampling | 1 |
| [Update  Results](<Update  Results.sql>) | UPDATE | Sampling | 1 |
| [UPDATE CheckBox](<UPDATE CheckBox.sql>) | UPDATE | Sampling | 1 |
| [Update PHB](<Update PHB.sql>) | UPDATE | Sampling | 1 |
| [Update Sampling Submit](<Update Sampling Submit.sql>) | UPDATE | Sampling | 1 |
| [Update_Filling](<Update_Filling.sql>) | UPDATE | Sampling | 1 |
| [Update_Filling_LOW](<Update_Filling_LOW.sql>) | UPDATE | Sampling | 0 |
| [Update_HighAcid_Recevied](<Update_HighAcid_Recevied.sql>) | UPDATE | Sampling high | 1 |
| [Update_HighAcid_Submitted_Sampling](<Update_HighAcid_Submitted_Sampling.sql>) | UPDATE | Sampling high | 1 |
| [UPDATE_IMPORT](<UPDATE_IMPORT.sql>) | UPDATE | temperature_30 | 1 |
| [UPDATE_IMPORT55](<UPDATE_IMPORT55.sql>) | UPDATE | temperature_55 | 1 |
| [Update_Microbe_highacid](<Update_Microbe_highacid.sql>) | UPDATE, SELECT | Sampling high | 1 |
| [Update_Physical_highacid](<Update_Physical_highacid.sql>) | UPDATE, SELECT | Sampling high | 1 |
| [Update_Physicial_BottomPass_Brik](<Update_Physicial_BottomPass_Brik.sql>) | UPDATE, SELECT | temperature_30high | 1 |
| [Update_Sampling](<Update_Sampling.sql>) | UPDATE | Sampling | 1 |
| [Update_Sup_HighAcid](<Update_Sup_HighAcid.sql>) | UPDATE, SELECT | Sampling high | 2 |
| [Update_TPC_BottomPass_Brik](<Update_TPC_BottomPass_Brik.sql>) | UPDATE, SELECT | temperature_30high | 1 |
| [Update_Y&m_BottomPass_Brik](<Update_Y&m_BottomPass_Brik.sql>) | UPDATE, SELECT | temperature_30high | 1 |
| [UpdateTemp30](<UpdateTemp30.sql>) | UPDATE | temperature_30 | 2 |
| [UpdateTemp55](<UpdateTemp55.sql>) | UPDATE | temperature_55 | 1 |

## รูปแบบข้อมูลที่ใช้ร่วมกัน

- SamplingID/SamplingIDH เป็น business keys; Builder ระบุ PK ของตารางหัวเป็น `id`.
- bindings แบบรายการมีทั้ง `s1..s6`, CSV ผ่าน STRING_SPLIT และ SQL IN list; ต้องใช้รูปแบบตรงกับ query.
- Query verbs/return schema ของ Builder อาจไม่ตรงกับชนิดคำสั่ง SQL จริง จึงให้อ่าน source ก่อนเรียก.
- Mutation ไม่มี SELECT ท้ายมักไม่มี result set ทางธุรกิจ; connector อาจคืน metadata จำนวนแถวตาม driver.
- `PUBLIC` และเงื่อนไข UI ไม่ได้ยืนยันการบังคับ authorization ฝั่งฐานข้อมูล.

## รายละเอียดทุก Query

### app_logs

[app_logs](<app_logs.sql>)

เพิ่มแถว app_activity_log ระบุ app_name, screen_name, action_type, created_by, device_id และ rows_affected จาก bindings 6 ตัว ใช้ติดตามการใช้งานเมนู/หน้าจอ. SQL ไม่กำหนด logged_at_utc เอง; ค่า default ต้องตรวจจากฐานข้อมูล. ไม่มี SELECT ผลลัพธ์ท้ายคำสั่ง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771`
- Builder queryVerb: `create`
- SQL operations: `INSERT`
- ตาราง: `app_activity_log`
- Bindings ใน SQL: `app`, `screen`, `action`, `createdby`, `device`, `rows`

**หน้าที่อ้าง query ID นี้**

- [`/home/menu-selector/:userid`](../../home-menu-selector/README.md)
- [`/login`](../../login/README.md)
- [`/sampling-tables`](../../sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "app",
      "default": ""
    },
    {
      "name": "screen",
      "default": ""
    },
    {
      "name": "action",
      "default": ""
    },
    {
      "name": "createdby",
      "default": ""
    },
    {
      "name": "device",
      "default": ""
    },
    {
      "name": "rows",
      "default": ""
    }
  ],
  "schema": {
    "created": {
      "type": "boolean",
      "name": "created"
    }
  },
  "transformer": "return data"
}
```

</details>

### Batch_Recall

[Batch_Recall](<Batch_Recall.sql>)

อ่าน QC ของ sampID และกำหนด ROW_NUMBER ตาม id จากนั้น pivot 10 ลำดับเป็น No1–No10, Media1–Media10, Batch1–Batch10, Pass1–Pass10 และ Notpass1–Notpass10. Pass/Notpass คืนเป็นข้อความ true/false; ลำดับที่ไม่มีข้อมูลเป็น false ส่วนข้อมูลอื่น NULL. TOP(10) ใน subquery ไม่มี ORDER BY ระดับเดียวกัน แม้ ROW_NUMBER จะเรียง id จึงควรทบทวนความแน่นอนเมื่อมีมากกว่า 10 แถว.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Quanity_Control_Sampling_highacid`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid-report/:sampid`](../../high-acid-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "No1": {
      "type": "string",
      "name": "No1"
    },
    "Media1": {
      "type": "string",
      "name": "Media1"
    },
    "Batch1": {
      "type": "string",
      "name": "Batch1"
    },
    "Pass1": {
      "type": "string",
      "name": "Pass1"
    },
    "Notpass1": {
      "type": "string",
      "name": "Notpass1"
    },
    "No2": {
      "type": "string",
      "name": "No2"
    },
    "Media2": {
      "type": "string",
      "name": "Media2"
    },
    "Batch2": {
      "type": "string",
      "name": "Batch2"
    },
    "Pass2": {
      "type": "string",
      "name": "Pass2"
    },
    "Notpass2": {
      "type": "string",
      "name": "Notpass2"
    },
    "No3": {
      "type": "string",
      "name": "No3"
    },
    "Media3": {
      "type": "string",
      "name": "Media3"
    },
    "Batch3": {
      "type": "string",
      "name": "Batch3"
    },
    "Pass3": {
      "type": "string",
      "name": "Pass3"
    },
    "Notpass3": {
      "type": "string",
      "name": "Notpass3"
    },
    "No4": {
      "type": "string",
      "name": "No4"
    },
    "Media4": {
      "type": "string",
      "name": "Media4"
    },
    "Batch4": {
      "type": "string",
      "name": "Batch4"
    },
    "Pass4": {
      "type": "string",
      "name": "Pass4"
    },
    "Notpass4": {
      "type": "string",
      "name": "Notpass4"
    },
    "No5": {
      "type": "string",
      "name": "No5"
    },
    "Media5": {
      "type": "string",
      "name": "Media5"
    },
    "Batch5": {
      "type": "string",
      "name": "Batch5"
    },
    "Pass5": {
      "type": "string",
      "name": "Pass5"
    },
    "Notpass5": {
      "type": "string",
      "name": "Notpass5"
    },
    "No6": {
      "type": "string",
      "name": "No6"
    },
    "Media6": {
      "type": "string",
      "name": "Media6"
    },
    "Batch6": {
      "type": "string",
      "name": "Batch6"
    },
    "Pass6": {
      "type": "string",
      "name": "Pass6"
    },
    "Notpass6": {
      "type": "string",
      "name": "Notpass6"
    },
    "No7": {
      "type": "string",
      "name": "No7"
    },
    "Media7": {
      "type": "string",
      "name": "Media7"
    },
    "Batch7": {
      "type": "string",
      "name": "Batch7"
    },
    "Pass7": {
      "type": "string",
      "name": "Pass7"
    },
    "Notpass7": {
      "type": "string",
      "name": "Notpass7"
    },
    "No8": {
      "type": "string",
      "name": "No8"
    },
    "Media8": {
      "type": "string",
      "name": "Media8"
    },
    "Batch8": {
      "type": "string",
      "name": "Batch8"
    },
    "Pass8": {
      "type": "string",
      "name": "Pass8"
    },
    "Notpass8": {
      "type": "string",
      "name": "Notpass8"
    },
    "No9": {
      "type": "string",
      "name": "No9"
    },
    "Media9": {
      "type": "string",
      "name": "Media9"
    },
    "Batch9": {
      "type": "string",
      "name": "Batch9"
    },
    "Pass9": {
      "type": "string",
      "name": "Pass9"
    },
    "Notpass9": {
      "type": "string",
      "name": "Notpass9"
    },
    "No10": {
      "type": "string",
      "name": "No10"
    },
    "Media10": {
      "type": "string",
      "name": "Media10"
    },
    "Batch10": {
      "type": "string",
      "name": "Batch10"
    },
    "Pass10": {
      "type": "string",
      "name": "Pass10"
    },
    "Notpass10": {
      "type": "string",
      "name": "Notpass10"
    }
  },
  "transformer": "return data"
}
```

</details>

### Bottom_Recall

[Bottom_Recall](<Bottom_Recall.sql>)

อ่าน temperature_30high สำหรับรายการ SamplingID คั่น comma; join Sampling high และ machine เพื่อแสดงชื่อเครื่องจักร. เรียง global_row ตาม t.id และจัด 96 กล่องต่อหน้า, 8 คอลัมน์, 4 แถวต่อชั้น, 16 กล่องต่อถาด, 32 กล่องต่อชั้น. คืน Brik_Time จาก code +7 ชั่วโมง พร้อม page_no/floor_no/tray_no/row_no/col_no และ flags เริ่มหน้า/ชั้น/ถาด/แถวที่ SQL มี. page_no ว่างอ่านทุกหน้า; ค่าอื่น CAST เป็น INT.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_07df295be935485f9d03ced237ea35c6`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling high`, `temperature_30high`
- Bindings ใน SQL: `samplings`, `page_no`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "page_no",
      "default": "1"
    },
    {
      "name": "samplings",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "No": {
      "type": "string",
      "name": "No"
    },
    "Code": {
      "type": "string",
      "name": "Code"
    },
    "TPC": {
      "type": "string",
      "name": "TPC"
    },
    "Flavour": {
      "type": "string",
      "name": "Flavour"
    },
    "SampID": {
      "type": "string",
      "name": "SampID"
    },
    "Y_M": {
      "type": "string",
      "name": "Y_M"
    },
    "Colour": {
      "type": "string",
      "name": "Colour"
    },
    "Smell": {
      "type": "string",
      "name": "Smell"
    },
    "Appearance": {
      "type": "string",
      "name": "Appearance"
    },
    "Remark": {
      "type": "string",
      "name": "Remark"
    },
    "ColourCode": {
      "type": "string",
      "name": "ColourCode"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "Brik_Time": {
      "type": "string",
      "name": "Brik_Time"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "global_row": {
      "type": "string",
      "name": "global_row"
    },
    "page_no": {
      "type": "number",
      "name": "page_no"
    },
    "col_no": {
      "type": "string",
      "name": "col_no"
    },
    "row_no": {
      "type": "string",
      "name": "row_no"
    },
    "tray_no": {
      "type": "number",
      "name": "tray_no"
    },
    "floor_no": {
      "type": "number",
      "name": "floor_no"
    },
    "is_new_floor": {
      "type": "number",
      "name": "is_new_floor"
    },
    "is_new_tray": {
      "type": "number",
      "name": "is_new_tray"
    },
    "is_new_row": {
      "type": "number",
      "name": "is_new_row"
    }
  },
  "transformer": "return data"
}
```

</details>

### Call Actual pH

[Call Actual pH](<Call Actual pH.sql>)

รับ s1–s6 ตามลำดับช่อง แล้ว LEFT JOIN Sampling และ Machine. ประกอบชื่อเครื่อง รสชาติ และช่วง Spec_Actual–Spec_Actual2 เป็น ItemText; STRING_AGG ด้วยตัวคั่น | คืนคอลัมน์ ResultSequence แถวเดียว. ไม่ตัด SamplingID ซ้ำเหมือน CallProduct_Temp30/55 และไม่ได้อ่านค่าตรวจ pH ราย Brik.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ae831060148e40109e8145b6f1ac861d`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling`
- Bindings ใน SQL: `s1`, `s2`, `s3`, `s4`, `s5`, `s6`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "s1",
      "default": ""
    },
    {
      "name": "s2",
      "default": ""
    },
    {
      "name": "s3",
      "default": ""
    },
    {
      "name": "s4",
      "default": ""
    },
    {
      "name": "s5",
      "default": ""
    },
    {
      "name": "s6",
      "default": ""
    }
  ],
  "schema": {
    "ResultSequence": {
      "type": "string",
      "name": "ResultSequence"
    },
    "sampling_order": {
      "type": "number",
      "name": "sampling_order"
    },
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Spec_Actual": {
      "type": "string",
      "name": "Spec_Actual"
    },
    "Spec_Actual2": {
      "type": "string",
      "name": "Spec_Actual2"
    }
  },
  "transformer": "return data"
}
```

</details>

### Call_Edit_Page

[Call_Edit_Page](<Call_Edit_Page.sql>)

อ่าน Sampling High ทุกคอลัมน์ตาม SamplingIDH={{Sampling}} และเติม machine_name. JOIN ใช้ TRY_CONVERT(INT) กับ machine/no จึงไม่จับคู่รหัสที่แปลงเป็นเลขไม่ได้; ถ้ารหัสต่างกันเพียงศูนย์นำหน้าอาจจับคู่กันหลังแปลง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_85e1570168e34e1db0a29eea593189ba`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling high`
- Bindings ใน SQL: `Sampling`

**หน้าที่อ้าง query ID นี้**

- [`/edit-page/:sampid`](../../edit-page/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Sampling",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SamplingIDH": {
      "type": "string",
      "name": "SamplingIDH"
    },
    "machine": {
      "type": "string",
      "name": "machine"
    },
    "amount": {
      "type": "string",
      "name": "amount"
    },
    "TPCH": {
      "type": "string",
      "name": "TPCH"
    },
    "Y_M": {
      "type": "string",
      "name": "Y_M"
    },
    "Physical_T": {
      "type": "string",
      "name": "Physical_T"
    },
    "Room_Temp": {
      "type": "string",
      "name": "Room_Temp"
    },
    "Temp0_8": {
      "type": "string",
      "name": "Temp0_8"
    },
    "Feezer": {
      "type": "string",
      "name": "Feezer"
    },
    "Other_Spec": {
      "type": "string",
      "name": "Other_Spec"
    },
    "Submit_by": {
      "type": "string",
      "name": "Submit_by"
    },
    "Submit_date": {
      "type": "string",
      "name": "Submit_date"
    },
    "Complete": {
      "type": "string",
      "name": "Complete"
    },
    "De_Complete": {
      "type": "string",
      "name": "De_Complete"
    },
    "Packaging": {
      "type": "string",
      "name": "Packaging"
    },
    "De_incom_spec": {
      "type": "string",
      "name": "De_incom_spec"
    },
    "incom_spec": {
      "type": "string",
      "name": "incom_spec"
    },
    "ab_spec": {
      "type": "string",
      "name": "ab_spec"
    },
    "incom_spec_re": {
      "type": "string",
      "name": "incom_spec_re"
    },
    "De_incom_spec_re": {
      "type": "string",
      "name": "De_incom_spec_re"
    },
    "ab_spec_re": {
      "type": "string",
      "name": "ab_spec_re"
    },
    "recieved_by": {
      "type": "string",
      "name": "recieved_by"
    },
    "recieved_date": {
      "type": "string",
      "name": "recieved_date"
    },
    "check_date": {
      "type": "string",
      "name": "check_date"
    },
    "MFG_code": {
      "type": "string",
      "name": "MFG_code"
    },
    "EXP_code": {
      "type": "string",
      "name": "EXP_code"
    },
    "inspector_by": {
      "type": "string",
      "name": "inspector_by"
    },
    "inspector_date": {
      "type": "string",
      "name": "inspector_date"
    },
    "interpretor_by": {
      "type": "string",
      "name": "interpretor_by"
    },
    "QSM_Sup_by": {
      "type": "string",
      "name": "QSM_Sup_by"
    },
    "interpretor_date": {
      "type": "string",
      "name": "interpretor_date"
    },
    "QSM_Sup_date": {
      "type": "string",
      "name": "QSM_Sup_date"
    },
    "OtherSpecBox": {
      "type": "string",
      "name": "OtherSpecBox"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "SendBY2": {
      "type": "string",
      "name": "SendBY2"
    },
    "SendBY3": {
      "type": "string",
      "name": "SendBY3"
    },
    "Send4": {
      "type": "string",
      "name": "Send4"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "Locked_Production": {
      "type": "string",
      "name": "Locked_Production"
    },
    "product": {
      "type": "string",
      "name": "product"
    },
    "SendBY_Date": {
      "type": "string",
      "name": "SendBY_Date"
    },
    "SendBY_Date2": {
      "type": "string",
      "name": "SendBY_Date2"
    },
    "SendBY_Date3": {
      "type": "string",
      "name": "SendBY_Date3"
    },
    "SendBY_Date4": {
      "type": "string",
      "name": "SendBY_Date4"
    },
    "check_date2": {
      "type": "string",
      "name": "check_date2"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "Unlocked_Uid": {
      "type": "string",
      "name": "Unlocked_Uid"
    },
    "Submit_remark": {
      "type": "string",
      "name": "Submit_remark"
    },
    "machine_name": {
      "type": "string",
      "name": "machine_name"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallBack Sampling

[CallBack Sampling](<CallBack Sampling.sql>)

อ่านหัว Sampling ตาม SamplingID พร้อมรูปแบบวันที่ dd/mm/yyyy และเวลา CreatedBY +7 ชั่วโมง. JOIN employee แยกตามผู้ส่ง 4 ช่อง ผู้ submit ผู้รับ ผู้ตรวจ physical/results ทั้ง 30/55 และ supervisor; JOIN machine เพื่อชื่อ/DEP. OUTER APPLY ดึงหมายเหตุที่ไม่ NULL ลำดับแรก 3 รายการตาม no แบบ INT จากแต่ละตาราง temperature. คืน s.* พร้อม alias สำหรับรายงาน; ถ้า employee.code หรือ machine.no ซ้ำอาจทำให้ผลลัพธ์หลายแถว.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling`, `temperature_30`, `temperature_55`, `employee`
- Bindings ใน SQL: `SamplingID`

**หน้าที่อ้าง query ID นี้**

- [`/report-low/:samp`](../../report-low/README.md)
- [`/sampling-tracker/:sampid`](../../sampling-tracker/README.md)
- [`/supervisor-report/:samp`](../../supervisor-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "SamplingID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Product": {
      "type": "string",
      "name": "Product"
    },
    "Flavour": {
      "type": "string",
      "name": "Flavour"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "FillingDate": {
      "type": "string",
      "name": "FillingDate"
    },
    "ExpiredDate": {
      "type": "string",
      "name": "ExpiredDate"
    },
    "Department": {
      "type": "string",
      "name": "Department"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "Plan_CheckDate": {
      "type": "string",
      "name": "Plan_CheckDate"
    },
    "Actual_CheckDate": {
      "type": "string",
      "name": "Actual_CheckDate"
    },
    "PH_Before": {
      "type": "number",
      "name": "PH_Before"
    },
    "Spec_Actual": {
      "type": "string",
      "name": "Spec_Actual"
    },
    "Temperature": {
      "type": "string",
      "name": "Temperature"
    },
    "Temperature2": {
      "type": "string",
      "name": "Temperature2"
    },
    "Quanity": {
      "type": "string",
      "name": "Quanity"
    },
    "Quanity2": {
      "type": "string",
      "name": "Quanity2"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "RecevieBy": {
      "type": "string",
      "name": "RecevieBy"
    },
    "SupervisorBy": {
      "type": "string",
      "name": "SupervisorBy"
    },
    "Supervisor_Date": {
      "type": "string",
      "name": "Supervisor_Date"
    },
    "CreatedBY": {
      "type": "string",
      "name": "CreatedBY"
    },
    "Products": {
      "type": "string",
      "name": "Products"
    },
    "PH": {
      "type": "string",
      "name": "PH"
    },
    "Colour": {
      "type": "string",
      "name": "Colour"
    },
    "Smell": {
      "type": "string",
      "name": "Smell"
    },
    "Atp": {
      "type": "string",
      "name": "Atp"
    },
    "PH2": {
      "type": "string",
      "name": "PH2"
    },
    "Tpc2": {
      "type": "string",
      "name": "Tpc2"
    },
    "Atp2": {
      "type": "string",
      "name": "Atp2"
    },
    "Tpc": {
      "type": "string",
      "name": "Tpc"
    },
    "Colour2": {
      "type": "string",
      "name": "Colour2"
    },
    "Smell2": {
      "type": "string",
      "name": "Smell2"
    },
    "EditBy": {
      "type": "string",
      "name": "EditBy"
    },
    "UpdateAt": {
      "type": "string",
      "name": "UpdateAt"
    },
    "Plan_CheckDate55": {
      "type": "string",
      "name": "Plan_CheckDate55"
    },
    "Actual_CheckDate55": {
      "type": "string",
      "name": "Actual_CheckDate55"
    },
    "dayFinished": {
      "type": "string",
      "name": "dayFinished"
    },
    "dayFinished2": {
      "type": "string",
      "name": "dayFinished2"
    },
    "Recieved_date": {
      "type": "string",
      "name": "Recieved_date"
    },
    "Amount_Samples": {
      "type": "string",
      "name": "Amount_Samples"
    },
    "Example": {
      "type": "boolean",
      "name": "Example"
    },
    "Indication": {
      "type": "boolean",
      "name": "Indication"
    },
    "packaging": {
      "type": "boolean",
      "name": "packaging"
    },
    "complete": {
      "type": "boolean",
      "name": "complete"
    },
    "Detail_Complete": {
      "type": "boolean",
      "name": "Detail_Complete"
    },
    "Normal": {
      "type": "boolean",
      "name": "Normal"
    },
    "Incomplete": {
      "type": "string",
      "name": "Incomplete"
    },
    "Detail_incomplete": {
      "type": "string",
      "name": "Detail_incomplete"
    },
    "Abnormal": {
      "type": "string",
      "name": "Abnormal"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "PH_Before2": {
      "type": "number",
      "name": "PH_Before2"
    },
    "Spec_Actual2": {
      "type": "string",
      "name": "Spec_Actual2"
    },
    "physical_by": {
      "type": "string",
      "name": "physical_by"
    },
    "results_by": {
      "type": "string",
      "name": "results_by"
    },
    "physical_date": {
      "type": "string",
      "name": "physical_date"
    },
    "results_date": {
      "type": "string",
      "name": "results_date"
    },
    "submitBy": {
      "type": "string",
      "name": "submitBy"
    },
    "submit_date": {
      "type": "string",
      "name": "submit_date"
    },
    "check30": {
      "type": "string",
      "name": "check30"
    },
    "check55": {
      "type": "string",
      "name": "check55"
    },
    "physical_by2": {
      "type": "string",
      "name": "physical_by2"
    },
    "physical_date2": {
      "type": "string",
      "name": "physical_date2"
    },
    "results_by2": {
      "type": "string",
      "name": "results_by2"
    },
    "results_date2": {
      "type": "string",
      "name": "results_date2"
    },
    "SendBY2": {
      "type": "string",
      "name": "SendBY2"
    },
    "SendBY3": {
      "type": "string",
      "name": "SendBY3"
    },
    "production_update_uid": {
      "type": "string",
      "name": "production_update_uid"
    },
    "production__update_date": {
      "type": "string",
      "name": "production__update_date"
    },
    "Send4": {
      "type": "string",
      "name": "Send4"
    },
    "Locked_Production": {
      "type": "string",
      "name": "Locked_Production"
    },
    "Product_Link": {
      "type": "string",
      "name": "Product_Link"
    },
    "Unlocked_Uid": {
      "type": "string",
      "name": "Unlocked_Uid"
    },
    "Locked_Production copy": {
      "type": "string",
      "name": "Locked_Production copy"
    },
    "Product_ID": {
      "type": "string",
      "name": "Product_ID"
    },
    "Submit_Remark": {
      "type": "string",
      "name": "Submit_Remark"
    },
    "Filling_Format": {
      "type": "string",
      "name": "Filling_Format"
    },
    "Expired_Format": {
      "type": "string",
      "name": "Expired_Format"
    },
    "Recieved_Format": {
      "type": "string",
      "name": "Recieved_Format"
    },
    "Plan_Format": {
      "type": "string",
      "name": "Plan_Format"
    },
    "Plan55_Format": {
      "type": "string",
      "name": "Plan55_Format"
    },
    "Actual_CheckDate_Format": {
      "type": "string",
      "name": "Actual_CheckDate_Format"
    },
    "Actual_CheckDate55_Format": {
      "type": "string",
      "name": "Actual_CheckDate55_Format"
    },
    "Time": {
      "type": "string",
      "name": "Time"
    },
    "Send_Name": {
      "type": "string",
      "name": "Send_Name"
    },
    "Send_Name2": {
      "type": "string",
      "name": "Send_Name2"
    },
    "Send_Name3": {
      "type": "string",
      "name": "Send_Name3"
    },
    "Send_Name4": {
      "type": "string",
      "name": "Send_Name4"
    },
    "SubmitBy_Name": {
      "type": "string",
      "name": "SubmitBy_Name"
    },
    "physical_Name": {
      "type": "string",
      "name": "physical_Name"
    },
    "result_Name": {
      "type": "string",
      "name": "result_Name"
    },
    "physicals_Name": {
      "type": "string",
      "name": "physicals_Name"
    },
    "results_Name": {
      "type": "string",
      "name": "results_Name"
    },
    "Recevie_Name": {
      "type": "string",
      "name": "Recevie_Name"
    },
    "Supervisor_Name": {
      "type": "string",
      "name": "Supervisor_Name"
    },
    "Remark_Submit": {
      "type": "string",
      "name": "Remark_Submit"
    },
    "temp30_no": {
      "type": "string",
      "name": "temp30_no"
    },
    "temp30_2_no": {
      "type": "string",
      "name": "temp30_2_no"
    },
    "temp30_3_no": {
      "type": "string",
      "name": "temp30_3_no"
    },
    "temp30_remark": {
      "type": "string",
      "name": "temp30_remark"
    },
    "temp30_2_remark": {
      "type": "string",
      "name": "temp30_2_remark"
    },
    "temp30_3_remark": {
      "type": "string",
      "name": "temp30_3_remark"
    },
    "temp55_no": {
      "type": "string",
      "name": "temp55_no"
    },
    "temp55_2_no": {
      "type": "string",
      "name": "temp55_2_no"
    },
    "temp55_3_no": {
      "type": "string",
      "name": "temp55_3_no"
    },
    "temp55_remark": {
      "type": "string",
      "name": "temp55_remark"
    },
    "temp55_2_remark": {
      "type": "string",
      "name": "temp55_2_remark"
    },
    "temp55_3_remark": {
      "type": "string",
      "name": "temp55_3_remark"
    },
    "Machine_Name": {
      "type": "string",
      "name": "Machine_Name"
    },
    "DEP": {
      "type": "string",
      "name": "DEP"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "MFG_Date": {
      "type": "string",
      "name": "MFG_Date"
    },
    "ReportBY": {
      "type": "string",
      "name": "ReportBY"
    },
    "Report_Date": {
      "type": "string",
      "name": "Report_Date"
    },
    "CreatedAt": {
      "type": "string",
      "name": "CreatedAt"
    },
    "atp2": {
      "type": "boolean",
      "name": "atp2"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallBack Sampling_HighAcid

[CallBack Sampling_HighAcid](<CallBack Sampling_HighAcid.sql>)

อ่าน Sampling high ตาม SamplingIDH พร้อมชื่อผู้ปฏิบัติงานจาก employee, เครื่องจักร และ QC. วันเวลาของ submit/receive/inspector/interpretor/supervisor ถูกบวก 7 ชั่วโมงก่อนจัดรูปแบบ. OUTER APPLY ดึง remark 3 ลำดับแรกและ no ของ Brik ที่ id ล่าสุด. JOIN QC แบบหนึ่งต่อหลายทำให้หัว sampling เดียวอาจคืนหลายแถวตามจำนวน QC; ไม่ควรสมมติว่าผลลัพธ์มีหนึ่งแถว.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_5b555ae892f4463397d709f40263d313`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Quanity_Control_Sampling_highacid`, `Sampling high`, `temperature_30high`, `employee`
- Bindings ใน SQL: `SamplingID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid`](../../high-acid/README.md)
- [`/high-acid-report/:sampid`](../../high-acid-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "SamplingID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SamplingIDH": {
      "type": "string",
      "name": "SamplingIDH"
    },
    "machine": {
      "type": "string",
      "name": "machine"
    },
    "amount": {
      "type": "string",
      "name": "amount"
    },
    "TPCH": {
      "type": "boolean",
      "name": "TPCH"
    },
    "Y_M": {
      "type": "boolean",
      "name": "Y_M"
    },
    "Physical_T": {
      "type": "boolean",
      "name": "Physical_T"
    },
    "Room_Temp": {
      "type": "boolean",
      "name": "Room_Temp"
    },
    "Temp0_8": {
      "type": "boolean",
      "name": "Temp0_8"
    },
    "Feezer": {
      "type": "boolean",
      "name": "Feezer"
    },
    "Other_Spec": {
      "type": "string",
      "name": "Other_Spec"
    },
    "Submit_by": {
      "type": "string",
      "name": "Submit_by"
    },
    "Submit_date": {
      "type": "string",
      "name": "Submit_date"
    },
    "Complete": {
      "type": "boolean",
      "name": "Complete"
    },
    "De_Complete": {
      "type": "string",
      "name": "De_Complete"
    },
    "Packaging": {
      "type": "string",
      "name": "Packaging"
    },
    "De_incom_spec": {
      "type": "string",
      "name": "De_incom_spec"
    },
    "incom_spec": {
      "type": "string",
      "name": "incom_spec"
    },
    "ab_spec": {
      "type": "string",
      "name": "ab_spec"
    },
    "incom_spec_re": {
      "type": "string",
      "name": "incom_spec_re"
    },
    "De_incom_spec_re": {
      "type": "string",
      "name": "De_incom_spec_re"
    },
    "ab_spec_re": {
      "type": "string",
      "name": "ab_spec_re"
    },
    "recieved_by": {
      "type": "string",
      "name": "recieved_by"
    },
    "recieved_date": {
      "type": "string",
      "name": "recieved_date"
    },
    "check_date": {
      "type": "string",
      "name": "check_date"
    },
    "MFG_code": {
      "type": "string",
      "name": "MFG_code"
    },
    "EXP_code": {
      "type": "string",
      "name": "EXP_code"
    },
    "inspector_by": {
      "type": "string",
      "name": "inspector_by"
    },
    "inspector_date": {
      "type": "string",
      "name": "inspector_date"
    },
    "interpretor_by": {
      "type": "string",
      "name": "interpretor_by"
    },
    "QSM_Sup_by": {
      "type": "string",
      "name": "QSM_Sup_by"
    },
    "interpretor_date": {
      "type": "string",
      "name": "interpretor_date"
    },
    "QSM_Sup_date": {
      "type": "string",
      "name": "QSM_Sup_date"
    },
    "OtherSpecBox": {
      "type": "boolean",
      "name": "OtherSpecBox"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "SendBY2": {
      "type": "string",
      "name": "SendBY2"
    },
    "SendBY3": {
      "type": "string",
      "name": "SendBY3"
    },
    "Send4": {
      "type": "string",
      "name": "Send4"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "Locked_Production": {
      "type": "string",
      "name": "Locked_Production"
    },
    "product": {
      "type": "string",
      "name": "product"
    },
    "SendBY_Date": {
      "type": "string",
      "name": "SendBY_Date"
    },
    "SendBY_Date2": {
      "type": "string",
      "name": "SendBY_Date2"
    },
    "SendBY_Date3": {
      "type": "string",
      "name": "SendBY_Date3"
    },
    "SendBY_Date4": {
      "type": "string",
      "name": "SendBY_Date4"
    },
    "check_date2": {
      "type": "string",
      "name": "check_date2"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "Unlocked_Uid": {
      "type": "string",
      "name": "Unlocked_Uid"
    },
    "Submit_remark": {
      "type": "string",
      "name": "Submit_remark"
    },
    "qc_no": {
      "type": "string",
      "name": "qc_no"
    },
    "qc_media": {
      "type": "string",
      "name": "qc_media"
    },
    "qc_batch": {
      "type": "string",
      "name": "qc_batch"
    },
    "qc_pass": {
      "type": "boolean",
      "name": "qc_pass"
    },
    "qc_notpass": {
      "type": "boolean",
      "name": "qc_notpass"
    },
    "BrikList_30": {
      "type": "string",
      "name": "BrikList_30"
    },
    "MFG_Code_Format": {
      "type": "string",
      "name": "MFG_Code_Format"
    },
    "EXP_Code_Format": {
      "type": "string",
      "name": "EXP_Code_Format"
    },
    "SubmitBy_Name": {
      "type": "string",
      "name": "SubmitBy_Name"
    },
    "Submit_Time": {
      "type": "string",
      "name": "Submit_Time"
    },
    "Recevie_Name": {
      "type": "string",
      "name": "Recevie_Name"
    },
    "Recieved_Time": {
      "type": "string",
      "name": "Recieved_Time"
    },
    "Inspecter_Name": {
      "type": "string",
      "name": "Inspecter_Name"
    },
    "Inspector_Time": {
      "type": "string",
      "name": "Inspector_Time"
    },
    "Interpretor_Name": {
      "type": "string",
      "name": "Interpretor_Name"
    },
    "Interpretor_Time": {
      "type": "string",
      "name": "Interpretor_Time"
    },
    "Supervisor_Name": {
      "type": "string",
      "name": "Supervisor_Name"
    },
    "QSM_Sup_Time": {
      "type": "string",
      "name": "QSM_Sup_Time"
    },
    "temp30_no": {
      "type": "string",
      "name": "temp30_no"
    },
    "temp30_2_no": {
      "type": "string",
      "name": "temp30_2_no"
    },
    "temp30_3_no": {
      "type": "string",
      "name": "temp30_3_no"
    },
    "temp30_remark": {
      "type": "string",
      "name": "temp30_remark"
    },
    "temp30_2_remark": {
      "type": "string",
      "name": "temp30_2_remark"
    },
    "temp30_3_remark": {
      "type": "string",
      "name": "temp30_3_remark"
    },
    "Machine_Name": {
      "type": "string",
      "name": "Machine_Name"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallBackTable

[CallBackTable](<CallBackTable.sql>)

อ่าน temperature_30high ของ sampID เรียง id พร้อม RowNo และ Time จาก Code +7 ชั่วโมง. PageNo ว่างหรือ all คืนทุกแถว; ค่าเลขแบ่งหน้าละ 30. TRY_CAST ที่แปลงไม่ได้ทำให้ช่วง BETWEEN เป็น NULL และไม่พบแถว แทนการคืน error จากการแปลง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `temperature_30high`
- Bindings ใน SQL: `PageNo`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/edit-page/:sampid`](../../edit-page/README.md)
- [`/high-acid`](../../high-acid/README.md)
- [`/high-acid-report/:sampid`](../../high-acid-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    },
    {
      "name": "PageNo",
      "default": "1"
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "No": {
      "type": "string",
      "name": "No"
    },
    "Code": {
      "type": "string",
      "name": "Code"
    },
    "TPC": {
      "type": "string",
      "name": "TPC"
    },
    "Flavour": {
      "type": "string",
      "name": "Flavour"
    },
    "SampID": {
      "type": "string",
      "name": "SampID"
    },
    "Y_M": {
      "type": "string",
      "name": "Y_M"
    },
    "Colour": {
      "type": "boolean",
      "name": "Colour"
    },
    "Smell": {
      "type": "boolean",
      "name": "Smell"
    },
    "Appearance": {
      "type": "boolean",
      "name": "Appearance"
    },
    "Remark": {
      "type": "string",
      "name": "Remark"
    },
    "ColourCode": {
      "type": "string",
      "name": "ColourCode"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "Product": {
      "type": "string",
      "name": "Product"
    },
    "RowNo": {
      "type": "string",
      "name": "RowNo"
    },
    "Time": {
      "type": "string",
      "name": "Time"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallProduct30

[CallProduct30](<CallProduct30.sql>)

อ่าน Brik 30°C ของ sampID และ JOIN Sampling เพื่อ Spec_Actual/Spec_Actual2. Window แบ่งกลุ่ม no+code เพื่อ count_colour, count_tpc และ MAX(pH)/MAX(atp); คอมเมนต์ที่ว่าเลือกค่าแรกไม่ตรงกับ MAX จริง. คืน spec_ac_check เป็นข้อความ true เมื่อ pH นอกช่วง และ checked_count=2 เมื่อกลุ่มมี TPC มิฉะนั้นเป็น count_colour. เรียงกลุ่มยังไม่ครบก่อนกลุ่มมี TPC หรือ colour อย่างน้อย 2 รายการ แล้วเรียง colour ว่าง, no แบบ INT, id. pH/atp ใน schema เป็น nvarchar จึงต้องระวัง MAX แบบข้อความและ implicit numeric conversion เมื่อเทียบ float.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_01175c9863c34d3ea7905620e5c25430`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Sampling`, `temperature_30`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "no": {
      "type": "string",
      "name": "no"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "ph": {
      "type": "string",
      "name": "ph"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "newph": {
      "type": "string",
      "name": "newph"
    },
    "newatp": {
      "type": "string",
      "name": "newatp"
    },
    "ph_by_no": {
      "type": "string",
      "name": "ph_by_no"
    },
    "atp_by_no": {
      "type": "string",
      "name": "atp_by_no"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "colour": {
      "type": "boolean",
      "name": "colour"
    },
    "smell": {
      "type": "boolean",
      "name": "smell"
    },
    "Spec_Actual": {
      "type": "number",
      "name": "Spec_Actual"
    },
    "Spec_Actual2": {
      "type": "number",
      "name": "Spec_Actual2"
    },
    "allRows": {
      "type": "number",
      "name": "allRows"
    },
    "spec_ac_check": {
      "type": "string",
      "name": "spec_ac_check"
    },
    "checked_count": {
      "type": "number",
      "name": "checked_count"
    },
    "all_no": {
      "type": "number",
      "name": "all_no"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "Temp": {
      "type": "string",
      "name": "Temp"
    },
    "pH": {
      "type": "string",
      "name": "pH"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "num_rows": {
      "type": "string",
      "name": "num_rows"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallProduct55

[CallProduct55](<CallProduct55.sql>)

ทำงานคู่กับ CallProduct30 โดยใช้ temperature_55: แบ่งกลุ่ม no+code, นับ colour/TPC, MAX(pH)/MAX(atp), เปรียบเทียบกับ spec จาก Sampling และคืน checked_count/spec_ac_check. ค่า MAX ไม่ใช่ค่าแรก; no ที่แปลง INT ไม่ได้อาจทำให้ ORDER BY ล้มเหลว. NewpH/NewATP แสดงเป็น newph/newatp เพื่อผลตรวจซ้ำ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f017ff85f0dc4e1bb65b5abcc3b8a676`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Sampling`, `temperature_55`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "no": {
      "type": "string",
      "name": "no"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "ph": {
      "type": "string",
      "name": "ph"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "newph": {
      "type": "string",
      "name": "newph"
    },
    "newatp": {
      "type": "string",
      "name": "newatp"
    },
    "ph_by_no": {
      "type": "string",
      "name": "ph_by_no"
    },
    "atp_by_no": {
      "type": "string",
      "name": "atp_by_no"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "colour": {
      "type": "boolean",
      "name": "colour"
    },
    "smell": {
      "type": "boolean",
      "name": "smell"
    },
    "Spec_Actual": {
      "type": "number",
      "name": "Spec_Actual"
    },
    "Spec_Actual2": {
      "type": "number",
      "name": "Spec_Actual2"
    },
    "allRows": {
      "type": "number",
      "name": "allRows"
    },
    "spec_ac_check": {
      "type": "string",
      "name": "spec_ac_check"
    },
    "checked_count": {
      "type": "number",
      "name": "checked_count"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "temp_type": {
      "type": "string",
      "name": "temp_type"
    },
    "num_rows": {
      "type": "string",
      "name": "num_rows"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallProduct_Temp30

[CallProduct_Temp30](<CallProduct_Temp30.sql>)

รับ s1–s6 ตัดช่องว่างและ SamplingID ซ้ำโดยใช้ช่องแรก. นับจำนวน Brik ต่อ sampling แล้วเลือกเฉพาะกลุ่มที่ running_total <=192; เมื่อกลุ่มหนึ่งทำให้ยอดเกินจะตัดทั้งกลุ่มและกลุ่มถัดไป ไม่ได้ตัดให้ครบ 192 รายแถว. JOIN Sampling สำหรับ Size/Machine แล้วสร้างพิกัดหน้า/ชั้น/ถาด/แถว/คอลัมน์. ความจุต่อหน้า: 90ml=96, 110ml=72, 165/180/200/225ml=48, 230/250ml=42; จำนวนคอลัมน์ 8 หรือ 7 และแบ่ง 3 ชั้น. page NULL คืนทุกหน้า. เพิ่ม samp1–samp6 จาก input ที่ตัดซ้ำ; total_pages ใช้ window ใน SELECT ที่มีตัวกรอง page จึงเป็นค่าสูงสุดในผลหลังกรอง ไม่ใช่จำนวนหน้ารวมเสมอ. สูตร box_per_row บางส่วนใช้ CAST ไม่ใช่ TRY_CAST จึงต้องให้ Size อยู่ในรูปแบบที่รองรับ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_144c36325d9f474994099c519fedc661`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Sampling`, `temperature_30`
- Bindings ใน SQL: `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `page`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "page",
      "default": "1"
    },
    {
      "name": "s1",
      "default": ""
    },
    {
      "name": "s2",
      "default": ""
    },
    {
      "name": "s3",
      "default": ""
    },
    {
      "name": "s4",
      "default": ""
    },
    {
      "name": "s5",
      "default": ""
    },
    {
      "name": "s6",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "colour": {
      "type": "string",
      "name": "colour"
    },
    "smell": {
      "type": "string",
      "name": "smell"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "pH": {
      "type": "string",
      "name": "pH"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "temp_type": {
      "type": "string",
      "name": "temp_type"
    },
    "ColourCode": {
      "type": "string",
      "name": "ColourCode"
    },
    "id_no": {
      "type": "string",
      "name": "id_no"
    },
    "Machine1": {
      "type": "string",
      "name": "Machine1"
    },
    "no": {
      "type": "string",
      "name": "no"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "NewpH": {
      "type": "string",
      "name": "NewpH"
    },
    "NewATP": {
      "type": "string",
      "name": "NewATP"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "sampling_order": {
      "type": "number",
      "name": "sampling_order"
    },
    "num_rows": {
      "type": "string",
      "name": "num_rows"
    },
    "global_row": {
      "type": "string",
      "name": "global_row"
    },
    "limit_per_page": {
      "type": "number",
      "name": "limit_per_page"
    },
    "box_per_row": {
      "type": "number",
      "name": "box_per_row"
    },
    "row_per_floor": {
      "type": "number",
      "name": "row_per_floor"
    },
    "page_no": {
      "type": "number",
      "name": "page_no"
    },
    "page_row_no": {
      "type": "string",
      "name": "page_row_no"
    },
    "floor_no": {
      "type": "number",
      "name": "floor_no"
    },
    "floor_position": {
      "type": "string",
      "name": "floor_position"
    },
    "samp1": {
      "type": "string",
      "name": "samp1"
    },
    "samp2": {
      "type": "string",
      "name": "samp2"
    },
    "samp3": {
      "type": "string",
      "name": "samp3"
    },
    "samp4": {
      "type": "string",
      "name": "samp4"
    },
    "samp5": {
      "type": "string",
      "name": "samp5"
    },
    "samp6": {
      "type": "string",
      "name": "samp6"
    },
    "total_pages": {
      "type": "number",
      "name": "total_pages"
    },
    "col_no": {
      "type": "string",
      "name": "col_no"
    },
    "row_no": {
      "type": "string",
      "name": "row_no"
    },
    "tray_no": {
      "type": "number",
      "name": "tray_no"
    },
    "is_new_floor": {
      "type": "number",
      "name": "is_new_floor"
    },
    "is_new_tray": {
      "type": "number",
      "name": "is_new_tray"
    },
    "is_new_row": {
      "type": "number",
      "name": "is_new_row"
    },
    "is_new_page": {
      "type": "number",
      "name": "is_new_page"
    },
    "row_per_group": {
      "type": "number",
      "name": "row_per_group"
    },
    "tray_level": {
      "type": "number",
      "name": "tray_level"
    },
    "box_no": {
      "type": "string",
      "name": "box_no"
    },
    "local_page_no": {
      "type": "number",
      "name": "local_page_no"
    },
    "max_page": {
      "type": "number",
      "name": "max_page"
    },
    "page_offset": {
      "type": "number",
      "name": "page_offset"
    },
    "running_no": {
      "type": "string",
      "name": "running_no"
    }
  },
  "transformer": "return data"
}
```

</details>

### CallProduct_Temp55

[CallProduct_Temp55](<CallProduct_Temp55.sql>)

จัด layout Brik 55°C ตาม s1–s6 โดยตัด input ซ้ำ/ว่างและจำกัดยอดสะสมเป็นกลุ่มไม่เกิน 192 เช่น Temp30. ใช้ตาราง temperature_55 และสูตรความจุ/พิกัดเดียวกัน; box_per_row ใช้ TRY_CAST. ไม่มี sampling_map/samp1–samp6 ในผลลัพธ์ท้าย query. page NULL คืนทุกหน้า; total_pages คำนวณหลังตัวกรอง page เช่นเดียวกัน.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_93058041c5454b2485571df6d2ba0213`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Sampling`, `temperature_55`
- Bindings ใน SQL: `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `page`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "page",
      "default": "1"
    },
    {
      "name": "s1",
      "default": ""
    },
    {
      "name": "s2",
      "default": ""
    },
    {
      "name": "s3",
      "default": ""
    },
    {
      "name": "s4",
      "default": ""
    },
    {
      "name": "s5",
      "default": ""
    },
    {
      "name": "s6",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "colour": {
      "type": "string",
      "name": "colour"
    },
    "smell": {
      "type": "string",
      "name": "smell"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "pH": {
      "type": "string",
      "name": "pH"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "temp_type": {
      "type": "string",
      "name": "temp_type"
    },
    "ColourCode": {
      "type": "string",
      "name": "ColourCode"
    },
    "id_no": {
      "type": "string",
      "name": "id_no"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "Machine1": {
      "type": "string",
      "name": "Machine1"
    },
    "no": {
      "type": "string",
      "name": "no"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "num_rows": {
      "type": "string",
      "name": "num_rows"
    },
    "global_row": {
      "type": "string",
      "name": "global_row"
    },
    "limit_per_page": {
      "type": "number",
      "name": "limit_per_page"
    },
    "box_per_row": {
      "type": "number",
      "name": "box_per_row"
    },
    "row_per_floor": {
      "type": "number",
      "name": "row_per_floor"
    },
    "page_no": {
      "type": "number",
      "name": "page_no"
    },
    "page_row_no": {
      "type": "string",
      "name": "page_row_no"
    },
    "floor_no": {
      "type": "number",
      "name": "floor_no"
    },
    "floor_position": {
      "type": "string",
      "name": "floor_position"
    },
    "total_pages": {
      "type": "number",
      "name": "total_pages"
    },
    "col_no": {
      "type": "string",
      "name": "col_no"
    },
    "row_no": {
      "type": "string",
      "name": "row_no"
    },
    "tray_no": {
      "type": "number",
      "name": "tray_no"
    },
    "is_new_floor": {
      "type": "number",
      "name": "is_new_floor"
    },
    "is_new_tray": {
      "type": "number",
      "name": "is_new_tray"
    },
    "is_new_row": {
      "type": "number",
      "name": "is_new_row"
    },
    "is_new_page": {
      "type": "number",
      "name": "is_new_page"
    },
    "row_per_group": {
      "type": "number",
      "name": "row_per_group"
    },
    "tray_level": {
      "type": "number",
      "name": "tray_level"
    },
    "box_no": {
      "type": "string",
      "name": "box_no"
    },
    "local_page_no": {
      "type": "number",
      "name": "local_page_no"
    },
    "max_page": {
      "type": "number",
      "name": "max_page"
    },
    "page_offset": {
      "type": "number",
      "name": "page_offset"
    },
    "running_no": {
      "type": "string",
      "name": "running_no"
    }
  },
  "transformer": "return data"
}
```

</details>

### Change_Colour

[Change_Colour](<Change_Colour.sql>)

แก้ ColourCode ของ temperature_30 ตาม sampID, Id_no และ temp_type พร้อมกัน. ไม่ได้กรอง primary key id; หากชุด key ซ้ำจะอัปเดตหลายแถว. ไม่แก้ colour/smell.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_0a97273678ed47eb9f4471a15fcdab7d`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `CC`, `SID`, `idno`, `temp`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "CC",
      "default": "0"
    },
    {
      "name": "SID",
      "default": "QSM-20260515-0203-01"
    },
    {
      "name": "idno",
      "default": "1"
    },
    {
      "name": "temp",
      "default": "30"
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### ChangeColor_UseBtn

[ChangeColor_UseBtn](<ChangeColor_UseBtn.sql>)

แก้ ColourCode, colour และ smell ใน temperature_30 ตาม id={{btnID}}. ใช้สำหรับปุ่ม Brik แต่ละกล่องบน layout; ไม่บันทึกค่า pH/ATP/TPC.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_30200fb842f3447480b792458f325438`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `code`, `Colour`, `Smell`, `btnID`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "Colour",
      "default": ""
    },
    {
      "name": "Smell",
      "default": ""
    },
    {
      "name": "btnID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### ChangeColor_UseBtn55

[ChangeColor_UseBtn55](<ChangeColor_UseBtn55.sql>)

แก้ ColourCode, colour และ smell ใน temperature_55 ตาม id={{btnID}}; เป็นคู่การทำงานฝั่ง 55°C.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_11adbf639c7b49aeac37b9038c5f4476`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_55`
- Bindings ใน SQL: `code`, `Colour`, `Smell`, `btnID`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "Colour",
      "default": ""
    },
    {
      "name": "Smell",
      "default": ""
    },
    {
      "name": "btnID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### CheckBox_Bottom_Brik

[CheckBox_Bottom_Brik](<CheckBox_Bottom_Brik.sql>)

แก้ ColourCode, colour, smell และ Appearance ของ temperature_30high ตาม id. Appearance รับ binding Smell ตัวเดียวกับ smell ไม่ใช่ binding แยก; รักษาพฤติกรรมนี้ไว้ใน SQL source.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7dfb18fb59184e4cad3a44bc66284e16`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30high`
- Bindings ใน SQL: `code`, `Colour`, `Smell`, `btnID`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "Colour",
      "default": ""
    },
    {
      "name": "Smell",
      "default": ""
    },
    {
      "name": "btnID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### CheckList Sampling

[CheckList Sampling](<CheckList Sampling.sql>)

อ่าน Sampling high พร้อม machine และ Samp_Label. FillingDate เป็นตัวกรองวันที่ MFG_code เมื่อไม่ NULL; binding machine กลับกรอง s.Group ไม่ใช่ m.no. ตัด SamplingIDH ที่มีใน samplings แบบ comma ออก. ค่า NULL กับข้อความว่างมีความหมายต่างกันตามเงื่อนไข; ใช้เป็นตัวเลือก High Acid หลายรายการ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3a40ea9291744f6d8b2dd122fb9483a7`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling high`
- Bindings ใน SQL: `FillingDate`, `machine`, `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)
- [`/high-acid/choose-sampling`](../../high-acid-choose-sampling/README.md)
- [`/high-acid/qulilty-control/choose-sampling`](../../high-acid-qulilty-control-choose-sampling/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "samplings",
      "default": ""
    },
    {
      "name": "FillingDate",
      "default": ""
    },
    {
      "name": "machine",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SamplingIDH": {
      "type": "string",
      "name": "SamplingIDH"
    },
    "machine": {
      "type": "array",
      "name": "machine"
    },
    "amount": {
      "type": "string",
      "name": "amount"
    },
    "TPCH": {
      "type": "string",
      "name": "TPCH"
    },
    "Y_M": {
      "type": "string",
      "name": "Y_M"
    },
    "Physical_T": {
      "type": "string",
      "name": "Physical_T"
    },
    "Room_Temp": {
      "type": "string",
      "name": "Room_Temp"
    },
    "Temp0_8": {
      "type": "string",
      "name": "Temp0_8"
    },
    "Feezer": {
      "type": "string",
      "name": "Feezer"
    },
    "Other_Spec": {
      "type": "string",
      "name": "Other_Spec"
    },
    "Submit_by": {
      "type": "string",
      "name": "Submit_by"
    },
    "Submit_date": {
      "type": "string",
      "name": "Submit_date"
    },
    "Complete": {
      "type": "string",
      "name": "Complete"
    },
    "De_Complete": {
      "type": "string",
      "name": "De_Complete"
    },
    "Packaging": {
      "type": "string",
      "name": "Packaging"
    },
    "De_incom_spec": {
      "type": "string",
      "name": "De_incom_spec"
    },
    "incom_spec": {
      "type": "string",
      "name": "incom_spec"
    },
    "ab_spec": {
      "type": "string",
      "name": "ab_spec"
    },
    "incom_spec_re": {
      "type": "string",
      "name": "incom_spec_re"
    },
    "De_incom_spec_re": {
      "type": "string",
      "name": "De_incom_spec_re"
    },
    "ab_spec_re": {
      "type": "string",
      "name": "ab_spec_re"
    },
    "recieved_by": {
      "type": "string",
      "name": "recieved_by"
    },
    "recieved_date": {
      "type": "string",
      "name": "recieved_date"
    },
    "check_date": {
      "type": "string",
      "name": "check_date"
    },
    "MFG_code": {
      "type": "string",
      "name": "MFG_code"
    },
    "EXP_code": {
      "type": "string",
      "name": "EXP_code"
    },
    "inspector_by": {
      "type": "string",
      "name": "inspector_by"
    },
    "inspector_date": {
      "type": "string",
      "name": "inspector_date"
    },
    "interpretor_by": {
      "type": "string",
      "name": "interpretor_by"
    },
    "QSM_Sup_by": {
      "type": "string",
      "name": "QSM_Sup_by"
    },
    "interpretor_date": {
      "type": "string",
      "name": "interpretor_date"
    },
    "QSM_Sup_date": {
      "type": "string",
      "name": "QSM_Sup_date"
    },
    "OtherSpecBox": {
      "type": "string",
      "name": "OtherSpecBox"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "SendBY2": {
      "type": "string",
      "name": "SendBY2"
    },
    "SendBY3": {
      "type": "string",
      "name": "SendBY3"
    },
    "Send4": {
      "type": "string",
      "name": "Send4"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "Locked_Production": {
      "type": "string",
      "name": "Locked_Production"
    },
    "product": {
      "type": "string",
      "name": "product"
    },
    "SendBY_Date": {
      "type": "string",
      "name": "SendBY_Date"
    },
    "SendBY_Date2": {
      "type": "string",
      "name": "SendBY_Date2"
    },
    "SendBY_Date3": {
      "type": "string",
      "name": "SendBY_Date3"
    },
    "SendBY_Date4": {
      "type": "string",
      "name": "SendBY_Date4"
    },
    "check_date2": {
      "type": "string",
      "name": "check_date2"
    },
    "Group": {
      "type": "array",
      "name": "Group"
    },
    "Samp_Label": {
      "type": "string",
      "name": "Samp_Label"
    }
  },
  "transformer": "return data"
}
```

</details>

### ColourCode

[ColourCode](<ColourCode.sql>)

แก้ ColourCode ของทุก Brik ใน temperature_30 ที่ sampID อยู่ใน s1–s6. ช่องว่างแปลง NULL. ไม่ได้กำหนด pH, atp, colour หรือ smell แม้ปุ่มผู้ใช้จะชื่อ ATP.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_aa3b05a8c1114493ba56102a78fc8852`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `code`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "s1",
      "default": ""
    },
    {
      "name": "s2",
      "default": ""
    },
    {
      "name": "s3",
      "default": ""
    },
    {
      "name": "s4",
      "default": ""
    },
    {
      "name": "s5",
      "default": ""
    },
    {
      "name": "s6",
      "default": ""
    }
  ],
  "schema": {
    "0": {
      "type": "json",
      "name": "0"
    }
  },
  "transformer": "return [data]"
}
```

</details>

### ColourCode 55

[ColourCode 55](<ColourCode 55.sql>)

แก้เฉพาะ ColourCode ของทุก Brik temperature_55 สำหรับ s1–s6. ไม่แก้ค่าผล ATP จริง; ผลของปุ่มกับข้อมูลเชิงตัวเลขต้องแยกพิจารณา.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_43dd6a028d8e469e988bc768da470ca8`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_55`
- Bindings ใน SQL: `code`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "s1",
      "default": ""
    },
    {
      "name": "s2",
      "default": ""
    },
    {
      "name": "s3",
      "default": ""
    },
    {
      "name": "s4",
      "default": ""
    },
    {
      "name": "s5",
      "default": ""
    },
    {
      "name": "s6",
      "default": ""
    }
  ],
  "schema": {
    "0": {
      "type": "json",
      "name": "0"
    }
  },
  "transformer": "return [data]"
}
```

</details>

### EditActurl30&55

[EditActurl30&55](<EditActurl30&55.sql>)

แก้วันที่ตรวจจริงใน Sampling ของ samplingID. CheckType='30' เปลี่ยน Actual_CheckDate; '55' เปลี่ยน Actual_CheckDate55; ค่าอื่นคงวันที่เดิมทั้งคู่. Query เดียวถูกเรียกจากปุ่ม Update30 และ Update55.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9bf319f443d24ba091306917bc15170f`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `CheckType`, `CheckDate`, `samplingID`

**หน้าที่อ้าง query ID นี้**

- [`/sampling-tables`](../../sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "CheckType",
      "default": ""
    },
    {
      "name": "CheckDate",
      "default": ""
    },
    {
      "name": "samplingID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Getall_Sampling

[Getall_Sampling](<Getall_Sampling.sql>)

คืน Sampling ตาม Size โดยลบ ml., ml และช่องว่างก่อนเปรียบเทียบแบบ lowercase. FillingDate NULL ไม่กรองวัน มิฉะนั้นเทียบวันที่จาก 10 ตัวอักษรแรก. ตัด SamplingID ที่เลือกแล้วใน sampling1–sampling6 ออก โดย NULL หมายถึงยังไม่เลือก. ไม่มี ORDER BY จึงไม่รับประกันลำดับตัวเลือก.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2e74f1db64764cdebe41f738b579e89b`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `Sampling`
- Bindings ใน SQL: `Size`, `FillingDate`, `sampling1`, `sampling2`, `sampling3`, `sampling4`, `sampling5`, `sampling6`

**หน้าที่อ้าง query ID นี้**

- [`/sampling-product-for-milk-box`](../../sampling-product-for-milk-box/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Size",
      "default": ""
    },
    {
      "name": "sampling1",
      "default": ""
    },
    {
      "name": "sampling2",
      "default": ""
    },
    {
      "name": "sampling3",
      "default": ""
    },
    {
      "name": "sampling4",
      "default": ""
    },
    {
      "name": "sampling5",
      "default": ""
    },
    {
      "name": "sampling6",
      "default": ""
    },
    {
      "name": "FillingDate",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Product": {
      "type": "string",
      "name": "Product"
    },
    "Flavour": {
      "type": "string",
      "name": "Flavour"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "FillingDate": {
      "type": "string",
      "name": "FillingDate"
    },
    "ExpiredDate": {
      "type": "string",
      "name": "ExpiredDate"
    },
    "Department": {
      "type": "string",
      "name": "Department"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "Plan_CheckDate": {
      "type": "string",
      "name": "Plan_CheckDate"
    },
    "Actual_CheckDate": {
      "type": "string",
      "name": "Actual_CheckDate"
    },
    "PH_Before": {
      "type": "number",
      "name": "PH_Before"
    },
    "Spec_Actual": {
      "type": "number",
      "name": "Spec_Actual"
    },
    "MFG_Date": {
      "type": "string",
      "name": "MFG_Date"
    },
    "Temperature": {
      "type": "string",
      "name": "Temperature"
    },
    "Temperature2": {
      "type": "string",
      "name": "Temperature2"
    },
    "Quanity": {
      "type": "string",
      "name": "Quanity"
    },
    "Quanity2": {
      "type": "string",
      "name": "Quanity2"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "RecevieBy": {
      "type": "string",
      "name": "RecevieBy"
    },
    "ReportBY": {
      "type": "string",
      "name": "ReportBY"
    },
    "Report_Date": {
      "type": "string",
      "name": "Report_Date"
    },
    "SupervisorBy": {
      "type": "string",
      "name": "SupervisorBy"
    },
    "Supervisor_Date": {
      "type": "string",
      "name": "Supervisor_Date"
    },
    "CreatedBY": {
      "type": "string",
      "name": "CreatedBY"
    },
    "Products": {
      "type": "string",
      "name": "Products"
    },
    "PH": {
      "type": "boolean",
      "name": "PH"
    },
    "Colour": {
      "type": "boolean",
      "name": "Colour"
    },
    "Smell": {
      "type": "boolean",
      "name": "Smell"
    },
    "Atp": {
      "type": "boolean",
      "name": "Atp"
    },
    "PH2": {
      "type": "boolean",
      "name": "PH2"
    },
    "Tpc2": {
      "type": "boolean",
      "name": "Tpc2"
    },
    "Atp2": {
      "type": "boolean",
      "name": "Atp2"
    },
    "Tpc": {
      "type": "boolean",
      "name": "Tpc"
    },
    "Colour2": {
      "type": "boolean",
      "name": "Colour2"
    },
    "Smell2": {
      "type": "boolean",
      "name": "Smell2"
    },
    "EditBy": {
      "type": "string",
      "name": "EditBy"
    },
    "UpdateAt": {
      "type": "string",
      "name": "UpdateAt"
    },
    "Plan_CheckDate55": {
      "type": "string",
      "name": "Plan_CheckDate55"
    },
    "Actual_CheckDate55": {
      "type": "string",
      "name": "Actual_CheckDate55"
    },
    "dayFinished": {
      "type": "string",
      "name": "dayFinished"
    },
    "dayFinished2": {
      "type": "string",
      "name": "dayFinished2"
    },
    "Recieved_date": {
      "type": "string",
      "name": "Recieved_date"
    },
    "Amount_Samples": {
      "type": "string",
      "name": "Amount_Samples"
    },
    "Example": {
      "type": "boolean",
      "name": "Example"
    },
    "Indication": {
      "type": "boolean",
      "name": "Indication"
    },
    "packaging": {
      "type": "boolean",
      "name": "packaging"
    },
    "complete": {
      "type": "boolean",
      "name": "complete"
    },
    "Detail_Complete": {
      "type": "boolean",
      "name": "Detail_Complete"
    },
    "Normal": {
      "type": "boolean",
      "name": "Normal"
    },
    "Incomplete": {
      "type": "string",
      "name": "Incomplete"
    },
    "Detail_incomplete": {
      "type": "string",
      "name": "Detail_incomplete"
    },
    "Abnormal": {
      "type": "string",
      "name": "Abnormal"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "PH_Before2": {
      "type": "number",
      "name": "PH_Before2"
    },
    "Spec_Actual2": {
      "type": "number",
      "name": "Spec_Actual2"
    },
    "physical_by": {
      "type": "string",
      "name": "physical_by"
    },
    "results_by": {
      "type": "string",
      "name": "results_by"
    },
    "physical_date": {
      "type": "string",
      "name": "physical_date"
    },
    "results_date": {
      "type": "string",
      "name": "results_date"
    },
    "submitBy": {
      "type": "string",
      "name": "submitBy"
    },
    "submit_date": {
      "type": "string",
      "name": "submit_date"
    }
  },
  "transformer": "return data"
}
```

</details>

### GetList_Product30

[GetList_Product30](<GetList_Product30.sql>)

SELECT * จาก temperature_30 ตาม sampID. ไม่เรียงลำดับและไม่จำกัดจำนวน; เป็นรายการ Brik แบบตรงจากตาราง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e50b768a8a9c45499956dc8f122cd927`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {},
  "transformer": "return data"
}
```

</details>

### getph_sampling

[getph_sampling](<getph_sampling.sql>)

รับ SamplingID หลัง trim แล้ว JOIN Recall_Ph กับ Sampling. CROSS APPLY VALUES ของ PH1–PH16 เพื่อหา MIN/MAX และอัปเดต Sampling.PH_Before/PH_Before2. SELECT ท้ายคืน PH ทั้ง 16 ค่า MIN/MAX และค่าที่บันทึก. กรอง SamplingID อย่างเดียว ไม่รวม Group; ถ้า Recall_Ph มีหลาย Group สำหรับ sampling เดียว UPDATE JOIN อาจมีหลาย source ต่อหนึ่งหัวและต้องกำหนดกติกาการรวมเพิ่มเติม.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `Sampling`, `Recall_pH`
- Bindings ใน SQL: `SamplingID`

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "SamplingID",
      "default": ""
    }
  ],
  "schema": {
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "PH1": {
      "type": "number",
      "name": "PH1"
    },
    "PH2": {
      "type": "number",
      "name": "PH2"
    },
    "PH3": {
      "type": "number",
      "name": "PH3"
    },
    "PH4": {
      "type": "number",
      "name": "PH4"
    },
    "PH5": {
      "type": "number",
      "name": "PH5"
    },
    "PH6": {
      "type": "number",
      "name": "PH6"
    },
    "PH7": {
      "type": "number",
      "name": "PH7"
    },
    "PH8": {
      "type": "number",
      "name": "PH8"
    },
    "PH9": {
      "type": "string",
      "name": "PH9"
    },
    "PH10": {
      "type": "string",
      "name": "PH10"
    },
    "PH11": {
      "type": "string",
      "name": "PH11"
    },
    "PH12": {
      "type": "string",
      "name": "PH12"
    },
    "PH13": {
      "type": "string",
      "name": "PH13"
    },
    "PH14": {
      "type": "string",
      "name": "PH14"
    },
    "PH15": {
      "type": "string",
      "name": "PH15"
    },
    "PH16": {
      "type": "string",
      "name": "PH16"
    },
    "PH_MIN": {
      "type": "number",
      "name": "PH_MIN"
    },
    "PH_MAX": {
      "type": "number",
      "name": "PH_MAX"
    },
    "PH_Before": {
      "type": "number",
      "name": "PH_Before"
    },
    "PH_Before2": {
      "type": "number",
      "name": "PH_Before2"
    },
    "updated": {
      "type": "boolean",
      "name": "updated"
    },
    "Product_Date": {
      "type": "string",
      "name": "Product_Date"
    }
  },
  "transformer": "return data"
}
```

</details>

### HighAcid_Tables

[HighAcid_Tables](<HighAcid_Tables.sql>)

รายการ High Acid พร้อม machine, amount, check_date และวันที่ MFG/EXP ที่จัดรูปแบบ. สถานะ success เมื่อ QSM_Sup_by ไม่ NULL; pending เมื่อ Submit_by และ recieved_by ไม่ NULL; นอกนั้น waiting. กรอง sampid, วัน MFG, วัน check_date และ machine โดยข้อความว่างหมายถึงไม่กรอง. สถานะใช้ IS NOT NULL จึงนับข้อความว่างเป็นค่าที่มีอยู่.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7bb97b95d99e40fb983cfbd919117c90`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling high`
- Bindings ใน SQL: `sampid`, `MFG`, `ActualDate`, `mac`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid-sampling-tables`](../../high-acid-sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampid",
      "default": ""
    },
    {
      "name": "MFG",
      "default": ""
    },
    {
      "name": "mac",
      "default": ""
    },
    {
      "name": "ActualDate",
      "default": ""
    }
  ],
  "schema": {
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "Amount": {
      "type": "string",
      "name": "Amount"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "check_date": {
      "type": "string",
      "name": "check_date"
    },
    "MFG_Code": {
      "type": "string",
      "name": "MFG_Code"
    },
    "EXP_Code": {
      "type": "string",
      "name": "EXP_Code"
    },
    "status": {
      "type": "string",
      "name": "status"
    }
  },
  "transformer": "return data"
}
```

</details>

### link data

[link data](<link data.sql>)

UPDATE temperature_30.Machine1 จาก Sampling.Machine เมื่อ sampID=SamplingID. ไม่มี binding และไม่มี WHERE จำกัดตัวอย่าง จึงอัปเดตทุกแถวที่ JOIN ตรงกันทั้งตาราง. ไม่เปลี่ยน temperature_55 หรือ highacid.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3fbbae07294d4ad4bef8081e15434571`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`, `temperature_30`
- Bindings ใน SQL: ไม่มี

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    }
  },
  "transformer": "return data"
}
```

</details>

### Login_API

[Login_API](<Login_API.sql>)

SELECT * จาก tb_app1_login เมื่อ user/password ตรง bindings userac/psw. ไม่พบ hash หรือ role check ใน SQL นี้; SELECT * รวมคอลัมน์ password ตาม schema. Screen /login ตรวจ result.data.length เท่ากับ1 จึงถือว่าสำเร็จ แล้วเก็บแถวแรกใน state CallbackDB_API. มี Clear Form ก่อน Execute Query ในลำดับ config จึงต้องตรวจว่า runtime อ่านค่า form เมื่อใดก่อนปรับ event. schema ที่นำเข้ามี id/user/password/fullname เท่านั้น.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e9ab5e578b8e460ba369524a0a58f1b3`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `tb_app1_login`
- Bindings ใน SQL: `userac`, `psw`

**หน้าที่อ้าง query ID นี้**

- [`/login`](../../login/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "userac",
      "default": ""
    },
    {
      "name": "psw",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "user": {
      "type": "string",
      "name": "user"
    },
    "password": {
      "type": "string",
      "name": "password"
    },
    "fullname": {
      "type": "string",
      "name": "fullname"
    },
    "Plant": {
      "type": "string",
      "name": "Plant"
    }
  },
  "transformer": "return data"
}
```

</details>

### Merge_Recall_pH_Unique_SamplingID_Group

[Merge_Recall_pH_Unique_SamplingID_Group](<Merge_Recall_pH_Unique_SamplingID_Group.sql>)

เชื่อม Sampling กับ machine และ Finish-good เมื่อ EXP_Data อยู่ในวันเดียวกับ ExpiredDate และ Group ของ Finish-good ตรงตัวอักษรแรกของชื่อ machine. TRY_CONVERT pH เป็น DECIMAL(10,3), ตัดค่าที่แปลงไม่ได้, เรียง pH จากน้อยไปมากแล้ว id; เลือกสูงสุด 16 ค่าต่อ SamplingID+Group และ pivot PH1–PH16. MERGE Recall_pH WITH(HOLDLOCK) โดย key SamplingID+Group: UPDATE เฉพาะเมื่อ EXCEPT พบค่าต่าง, INSERT เมื่อไม่มี target; ไม่มี DELETE เมื่อ source หาย. คืน ActionType/SamplingID/Group. ไม่มี binding จำกัด sampling จึงประมวลผลทั้งชุด; ค่าที่ 17 เป็นต้นไปถูกละไว้และ PH_MAX จากขั้นถัดไปอาจไม่ใช่ max ของ Finish-good ทั้งหมด.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_45acc2443cd348cd9861d5c011009cec`
- Builder queryVerb: `update`
- SQL operations: `SELECT, MERGE, UPDATE, INSERT`
- ตาราง: `Finish-good`, `machine`, `Sampling`, `Recall_pH`
- Bindings ใน SQL: ไม่มี

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [],
  "schema": {
    "ActionType": {
      "type": "string",
      "name": "ActionType"
    },
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "updated": {
      "type": "boolean",
      "name": "updated"
    },
    "Expired": {
      "type": "string",
      "name": "Expired"
    },
    "pH1": {
      "type": "string",
      "name": "pH1"
    },
    "pH2": {
      "type": "string",
      "name": "pH2"
    },
    "pH3": {
      "type": "string",
      "name": "pH3"
    },
    "pH4": {
      "type": "string",
      "name": "pH4"
    },
    "pH5": {
      "type": "string",
      "name": "pH5"
    },
    "pH6": {
      "type": "string",
      "name": "pH6"
    },
    "pH7": {
      "type": "string",
      "name": "pH7"
    },
    "pH8": {
      "type": "string",
      "name": "pH8"
    },
    "Product_ID": {
      "type": "string",
      "name": "Product_ID"
    },
    "cnt": {
      "type": "number",
      "name": "cnt"
    },
    "created": {
      "type": "boolean",
      "name": "created"
    },
    "product": {
      "type": "string",
      "name": "product"
    },
    "Low_Date": {
      "type": "string",
      "name": "Low_Date"
    },
    "Product_Date": {
      "type": "string",
      "name": "Product_Date"
    },
    "PH1": {
      "type": "number",
      "name": "PH1"
    },
    "PH2": {
      "type": "number",
      "name": "PH2"
    },
    "PH3": {
      "type": "number",
      "name": "PH3"
    },
    "PH4": {
      "type": "number",
      "name": "PH4"
    },
    "PH5": {
      "type": "number",
      "name": "PH5"
    },
    "PH6": {
      "type": "number",
      "name": "PH6"
    },
    "PH7": {
      "type": "number",
      "name": "PH7"
    },
    "PH8": {
      "type": "number",
      "name": "PH8"
    },
    "PH_Min": {
      "type": "number",
      "name": "PH_Min"
    },
    "PH_Max": {
      "type": "number",
      "name": "PH_Max"
    }
  },
  "transformer": "return data"
}
```

</details>

### Physical_Report

[Physical_Report](<Physical_Report.sql>)

บันทึก physical_by, physical_date และ Actual_CheckDate ของ Sampling สำหรับ sampID–sampID6 ใน IN list. เป็นการลงผู้ตรวจ 30°C หลาย sampling พร้อมกัน; ไม่บันทึกผลราย Brik.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_83f24b45f4164d39b035fc175b6718bc`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `phy`, `phy_date`, `sampID`, `sampID2`, `sampID3`, `sampID4`, `sampID5`, `sampID6`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "phy",
      "default": ""
    },
    {
      "name": "phy_date",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    },
    {
      "name": "sampID2",
      "default": ""
    },
    {
      "name": "sampID3",
      "default": ""
    },
    {
      "name": "sampID4",
      "default": ""
    },
    {
      "name": "sampID5",
      "default": ""
    },
    {
      "name": "sampID6",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Physical_Report2

[Physical_Report2](<Physical_Report2.sql>)

คู่ฝั่ง 55°C ของ Physical_Report: แก้ physical_by2, physical_date2 และ Actual_CheckDate55 สำหรับ sampling สูงสุด 6 รายการ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_154126c0221f4398a99c9b519a9c9425`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `phy`, `phy_date`, `sampID`, `sampID2`, `sampID3`, `sampID4`, `sampID5`, `sampID6`

**หน้าที่อ้าง query ID นี้**

- [`/bottom-shrink-sampling-choose`](../../bottom-shrink-sampling-choose/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "phy",
      "default": ""
    },
    {
      "name": "phy_date",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    },
    {
      "name": "sampID2",
      "default": ""
    },
    {
      "name": "sampID3",
      "default": ""
    },
    {
      "name": "sampID4",
      "default": ""
    },
    {
      "name": "sampID5",
      "default": ""
    },
    {
      "name": "sampID6",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Product_Remark

[Product_Remark](<Product_Remark.sql>)

ประกอบ dynamic SQL ด้วยชื่อตารางจาก tables ผ่าน QUOTENAME แล้วส่ง remark, pH, atp, no, samp เป็น parameters ให้ sp_executesql. แก้ remark/NewpH/NewATP ตาม no+sampID; หลายแถวที่มีคู่เดียวกันจะถูกแก้ทั้งหมด ไม่จำกัด code หรือ id. QUOTENAME ช่วย quote identifier แต่ไม่ได้เป็น allowlist; screen ต้องส่งตารางที่กำหนด เช่น temperature_30/55.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4c921ec51c324a3e9ca7bcdfb676dbd9`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, EXEC`
- ตาราง: dynamic table จาก binding
- Bindings ใน SQL: `tables`, `remark`, `pH`, `atp`, `no`, `samp`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "tables",
      "default": ""
    },
    {
      "name": "remark",
      "default": ""
    },
    {
      "name": "pH",
      "default": ""
    },
    {
      "name": "atp",
      "default": ""
    },
    {
      "name": "no",
      "default": ""
    },
    {
      "name": "samp",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Quanity Table

[Quanity Table](<Quanity Table.sql>)

อ่าน QC พร้อมชื่อ machine ของ Sampling high ที่อยู่ใน samplings และเรียง m.no. รูปแบบนี้ใช้ IN ({{samplings}}) ไม่ใช่ STRING_SPLIT; screen ต้องส่ง list ที่ SQL renderer รองรับ. ค่า default เป็นข้อความ null. อย่านำ CSV format ของ query อื่นมาใช้แทนโดยไม่ตรวจ binding.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f7af0df2a76d4cdda61cd474dae73478`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Quanity_Control_Sampling_highacid`, `Sampling high`
- Bindings ใน SQL: `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/quanity-control/add`](../../high-acid-quanity-control-add/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "samplings",
      "default": "null"
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "SampID": {
      "type": "string",
      "name": "SampID"
    },
    "No": {
      "type": "string",
      "name": "No"
    },
    "Media": {
      "type": "string",
      "name": "Media"
    },
    "Batch": {
      "type": "string",
      "name": "Batch"
    },
    "Pass": {
      "type": "boolean",
      "name": "Pass"
    },
    "NotPass": {
      "type": "boolean",
      "name": "NotPass"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    }
  },
  "transformer": "return data"
}
```

</details>

### Quanity_Control_Added

[Quanity_Control_Added](<Quanity_Control_Added.sql>)

STRING_SPLIT SampID ด้วย comma แล้ว INSERT QC หนึ่งแถวต่อค่าที่แยกได้ พร้อม No, Media, Batch, Pass, Notpass ชุดเดียวกัน. trim แต่ไม่ตัด token ว่าง/ซ้ำ และไม่มี NOT EXISTS จึงเพิ่มซ้ำได้เมื่อเรียกซ้ำ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_dec1b117c33e4a63af4e995d7549db23`
- Builder queryVerb: `create`
- SQL operations: `INSERT, SELECT`
- ตาราง: `Quanity_Control_Sampling_highacid`
- Bindings ใน SQL: `no`, `media`, `batch`, `pass`, `notpass`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/quanity-control/add`](../../high-acid-quanity-control-add/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "SampID",
      "default": ""
    },
    {
      "name": "media",
      "default": ""
    },
    {
      "name": "batch",
      "default": ""
    },
    {
      "name": "pass",
      "default": ""
    },
    {
      "name": "notpass",
      "default": ""
    },
    {
      "name": "no",
      "default": ""
    }
  ],
  "schema": {
    "created": {
      "type": "boolean",
      "name": "created"
    }
  },
  "transformer": "return data"
}
```

</details>

### Qunity_pass

[Qunity_pass](<Qunity_pass.sql>)

ตั้ง Pass ของ QC ทุกแถวที่ sampID อยู่ใน samplings แบบ comma. ไม่กรอง id/No/Media และไม่ reset Notpass; จึงอาจคง Notpass=true จากข้อมูลเดิมแม้ตั้ง Pass=true.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d446973d6a704925b3c5bc2ca5f01256`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `Quanity_Control_Sampling_highacid`
- Bindings ใน SQL: `Pass`, `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/quanity-control/add`](../../high-acid-quanity-control-add/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Pass",
      "default": ""
    },
    {
      "name": "samplings",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Remove_Qc Table

[Remove_Qc Table](<Remove_Qc Table.sql>)

DELETE QC เฉพาะ id ที่ส่งมา. เป็นการลบจริงจาก Quanity_Control_Sampling_highacid; ไม่มี soft-delete หรือ SELECT ยืนยันใน SQL.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e868e9263e6d49b58406b07f41795f77`
- Builder queryVerb: `delete`
- SQL operations: `DELETE`
- ตาราง: `Quanity_Control_Sampling_highacid`
- Bindings ใน SQL: `id`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/quanity-control/add`](../../high-acid-quanity-control-add/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "id",
      "default": ""
    }
  ],
  "schema": {
    "deleted": {
      "type": "boolean",
      "name": "deleted"
    }
  },
  "transformer": "return data"
}
```

</details>

### Report_List_Page

[Report_List_Page](<Report_List_Page.sql>)

อ่าน temperature_30 ตาม sampID และแบ่งหน้าละ 30 ด้วย ROW_NUMBER เรียง id. ต้องส่ง PageNo เป็นเลขที่คำนวณได้; ไม่มีกรณี all/ว่างเหมือน CallBackTable. ชื่อทั่วไปแต่ SQL อ่านเฉพาะ temperature_30.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `sampID`, `PageNo`

**หน้าที่อ้าง query ID นี้**

- [`/report-low/:samp`](../../report-low/README.md)
- [`/supervisor-report/:samp`](../../supervisor-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    },
    {
      "name": "PageNo",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "colour": {
      "type": "boolean",
      "name": "colour"
    },
    "smell": {
      "type": "boolean",
      "name": "smell"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "pH": {
      "type": "string",
      "name": "pH"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "temp_type": {
      "type": "string",
      "name": "temp_type"
    },
    "ColourCode": {
      "type": "number",
      "name": "ColourCode"
    },
    "id_no": {
      "type": "string",
      "name": "id_no"
    },
    "Machine1": {
      "type": "string",
      "name": "Machine1"
    },
    "no": {
      "type": "string",
      "name": "no"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "NewpH": {
      "type": "string",
      "name": "NewpH"
    },
    "NewATP": {
      "type": "string",
      "name": "NewATP"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "RowNo": {
      "type": "string",
      "name": "RowNo"
    }
  },
  "transformer": "return data"
}
```

</details>

### result_physical_api

[result_physical_api](<result_physical_api.sql>)

บันทึกผู้ตรวจ physical/results และวันที่ของ Sampling หนึ่งรายการ ฝั่ง 30°C. ไม่แก้ Actual_CheckDate ต่างจาก Physical_Report และไม่แก้ผลราย Brik.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8ed4b63f52204c0c83287edd0570c22b`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `phy`, `phy_date`, `result`, `result_date`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "phy",
      "default": ""
    },
    {
      "name": "phy_date",
      "default": ""
    },
    {
      "name": "result",
      "default": ""
    },
    {
      "name": "result_date",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### result_physical_api 2

[result_physical_api 2](<result_physical_api 2.sql>)

บันทึก physical_by2/physical_date2/results_by2/results_date2 ของ Sampling หนึ่งรายการ ฝั่ง 55°C. ไม่เปลี่ยน Actual_CheckDate55.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6ade36b49c44479c9fe49aa5bac327ea`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `phy`, `phy_date`, `result`, `result_date`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "phy",
      "default": ""
    },
    {
      "name": "phy_date",
      "default": ""
    },
    {
      "name": "result",
      "default": ""
    },
    {
      "name": "result_date",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### SamplingTable

[SamplingTable](<SamplingTable.sql>)

อ่านรายการ Low Acid พร้อม machine/DEP, Product/Flavour และผู้ submit/receive/supervisor. สถานะ success เมื่อ SupervisorBy ไม่ NULL; pending เมื่อ submitBy และ RecevieBy ไม่ NULL; นอกนั้น waiting. ตัวกรอง ActualDate เทียบ FillingDate + dayFinished ที่ TRY_CONVERT(INT) และใช้ 0 เมื่อว่าง/แปลงไม่ได้ ไม่ได้เทียบคอลัมน์ Actual_CheckDate ที่ SELECT กลับมา. กรองวันผลิต, SamplingID และ machine เพิ่มได้ด้วยข้อความว่างเป็นไม่กรอง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef417db2fbf44754bd6a28c849b67a09`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `machine`, `Sampling`
- Bindings ใน SQL: `sampid`, `FillingDate`, `ActualDate`, `mac`

**หน้าที่อ้าง query ID นี้**

- [`/sampling-tables`](../../sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "FillingDate",
      "default": ""
    },
    {
      "name": "sampid",
      "default": ""
    },
    {
      "name": "mac",
      "default": ""
    },
    {
      "name": "ActualDate",
      "default": ""
    }
  ],
  "schema": {
    "SamplingID": {
      "type": "string",
      "name": "SamplingID"
    },
    "Group": {
      "type": "string",
      "name": "Group"
    },
    "Department": {
      "type": "string",
      "name": "Department"
    },
    "FillingDate": {
      "type": "string",
      "name": "FillingDate"
    },
    "machine": {
      "type": "string",
      "name": "machine"
    },
    "Actual_CheckDate": {
      "type": "string",
      "name": "Actual_CheckDate"
    },
    "Product": {
      "type": "string",
      "name": "Product"
    },
    "Flavour": {
      "type": "string",
      "name": "Flavour"
    },
    "submitBy": {
      "type": "string",
      "name": "submitBy"
    },
    "RecevieBy": {
      "type": "string",
      "name": "RecevieBy"
    },
    "SupervisorID": {
      "type": "string",
      "name": "SupervisorID"
    },
    "status": {
      "type": "string",
      "name": "status"
    },
    "Machine": {
      "type": "string",
      "name": "Machine"
    },
    "id": {
      "type": "number",
      "name": "id"
    },
    "Size": {
      "type": "string",
      "name": "Size"
    },
    "ExpiredDate": {
      "type": "string",
      "name": "ExpiredDate"
    },
    "Plan_CheckDate": {
      "type": "string",
      "name": "Plan_CheckDate"
    },
    "PH_Before": {
      "type": "string",
      "name": "PH_Before"
    },
    "Spec_Actual": {
      "type": "number",
      "name": "Spec_Actual"
    },
    "MFG_Date": {
      "type": "string",
      "name": "MFG_Date"
    },
    "Temperature": {
      "type": "string",
      "name": "Temperature"
    },
    "Temperature2": {
      "type": "string",
      "name": "Temperature2"
    },
    "Quanity": {
      "type": "string",
      "name": "Quanity"
    },
    "Quanity2": {
      "type": "string",
      "name": "Quanity2"
    },
    "SendBY": {
      "type": "string",
      "name": "SendBY"
    },
    "SupervisorBy": {
      "type": "string",
      "name": "SupervisorBy"
    },
    "Supervisor_Date": {
      "type": "string",
      "name": "Supervisor_Date"
    },
    "CreatedBY": {
      "type": "string",
      "name": "CreatedBY"
    },
    "Products": {
      "type": "string",
      "name": "Products"
    },
    "PH": {
      "type": "string",
      "name": "PH"
    },
    "Colour": {
      "type": "boolean",
      "name": "Colour"
    },
    "Smell": {
      "type": "boolean",
      "name": "Smell"
    },
    "Atp": {
      "type": "string",
      "name": "Atp"
    },
    "PH2": {
      "type": "string",
      "name": "PH2"
    },
    "Tpc2": {
      "type": "string",
      "name": "Tpc2"
    },
    "Atp2": {
      "type": "string",
      "name": "Atp2"
    },
    "Tpc": {
      "type": "string",
      "name": "Tpc"
    },
    "Colour2": {
      "type": "boolean",
      "name": "Colour2"
    },
    "Smell2": {
      "type": "boolean",
      "name": "Smell2"
    },
    "EditBy": {
      "type": "string",
      "name": "EditBy"
    },
    "UpdateAt": {
      "type": "string",
      "name": "UpdateAt"
    },
    "Plan_CheckDate55": {
      "type": "string",
      "name": "Plan_CheckDate55"
    },
    "Actual_CheckDate55": {
      "type": "string",
      "name": "Actual_CheckDate55"
    },
    "dayFinished": {
      "type": "string",
      "name": "dayFinished"
    },
    "dayFinished2": {
      "type": "string",
      "name": "dayFinished2"
    },
    "Recieved_date": {
      "type": "string",
      "name": "Recieved_date"
    },
    "Amount_Samples": {
      "type": "string",
      "name": "Amount_Samples"
    },
    "Example": {
      "type": "string",
      "name": "Example"
    },
    "Indication": {
      "type": "string",
      "name": "Indication"
    },
    "packaging": {
      "type": "string",
      "name": "packaging"
    },
    "complete": {
      "type": "string",
      "name": "complete"
    },
    "Detail_Complete": {
      "type": "string",
      "name": "Detail_Complete"
    },
    "Normal": {
      "type": "string",
      "name": "Normal"
    },
    "Incomplete": {
      "type": "string",
      "name": "Incomplete"
    },
    "Detail_incomplete": {
      "type": "string",
      "name": "Detail_incomplete"
    },
    "Abnormal": {
      "type": "string",
      "name": "Abnormal"
    },
    "group": {
      "type": "string",
      "name": "group"
    },
    "PH_Before2": {
      "type": "string",
      "name": "PH_Before2"
    },
    "Spec_Actual2": {
      "type": "number",
      "name": "Spec_Actual2"
    },
    "physical_by": {
      "type": "string",
      "name": "physical_by"
    },
    "results_by": {
      "type": "string",
      "name": "results_by"
    },
    "physical_date": {
      "type": "string",
      "name": "physical_date"
    },
    "results_date": {
      "type": "string",
      "name": "results_date"
    },
    "submit_date": {
      "type": "string",
      "name": "submit_date"
    },
    "check30": {
      "type": "boolean",
      "name": "check30"
    },
    "check55": {
      "type": "boolean",
      "name": "check55"
    },
    "physical_by2": {
      "type": "string",
      "name": "physical_by2"
    },
    "physical_date2": {
      "type": "string",
      "name": "physical_date2"
    },
    "results_by2": {
      "type": "string",
      "name": "results_by2"
    },
    "results_date2": {
      "type": "string",
      "name": "results_date2"
    },
    "SendBY2": {
      "type": "string",
      "name": "SendBY2"
    },
    "SendBY3": {
      "type": "string",
      "name": "SendBY3"
    },
    "ReportBY": {
      "type": "string",
      "name": "ReportBY"
    },
    "Report_Date": {
      "type": "string",
      "name": "Report_Date"
    }
  },
  "transformer": "return data"
}
```

</details>

### Save CheckDate HighAcid

[Save CheckDate HighAcid](<Save CheckDate HighAcid.sql>)

แก้ check_date และ check_date2 ของ Sampling high ตาม SamplingIDH. วันที่รับจาก bindings Checkdate/Checkdate2 โดยตรง ไม่มีการบวก timezone ใน SQL.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ad226178894b462e813886865db5f001`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `Checkdate`, `Checkdate2`, `Sampling`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid`](../../high-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Sampling",
      "default": ""
    },
    {
      "name": "Checkdate",
      "default": ""
    },
    {
      "name": "Checkdate2",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Sup_Approve

[Sup_Approve](<Sup_Approve.sql>)

ตั้ง SupervisorBy และ Supervisor_Date ของ Sampling ตาม SampID. SQL ไม่มีเงื่อนไขต้องตรวจครบ/ผู้ใช้มี role ใด; เงื่อนไขก่อนเรียกอยู่ใน screen actions. เมื่อมี SupervisorBy รายการจะเข้าเงื่อนไข success ของ SamplingTable.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_99e27c384e094d4bb7a457f8bf645ce2`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `SupCode`, `Supdate`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/report-low/:samp`](../../report-low/README.md)
- [`/supervisor-report/:samp`](../../supervisor-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "SupCode",
      "default": ""
    },
    {
      "name": "Supdate",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Sup_Edit_PART

[Sup_Edit_PART](<Sup_Edit_PART.sql>)

แก้หลายส่วนของ Sampling high ในคำสั่งเดียว: สภาพตัวอย่าง/บรรจุภัณฑ์, ผู้รับ/วันรับ, check_date1/2, MFG/EXP, ผู้ submit/วันส่ง, test flags, storage flags, Other_Spec และ Submit_remark. ตั้ง Locked_Production='1' เสมอ. วันที่ submit/receive ใช้ CONVERT(DATETIME2,...,101). กรอง SamplingIDH; ชื่อ query ไม่ได้หมายถึงการลง QSM_Sup_by.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_101f00f790404b30bdc2e034ba4eaf26`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `comp`, `de_comp`, `package`, `inspec`, `de_inspec`, `abspec`, `incomp_respec`, `de_incomp_respec`, `ab_respec`, `recieved`, `recieved_time`, `Check1`, `Check2`, `MFGcode`, `EXPcode`, `submit`, `submit_date`, `tpch`, `Y_M`, `Physical`, `R_Temp`, `Temp8`, `Fzer`, `OBox`, `OT_Spec`, `SubRemark`, `Sampling`

**หน้าที่อ้าง query ID นี้**

- [`/edit-page/:sampid`](../../edit-page/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "tpch",
      "default": ""
    },
    {
      "name": "Y_M",
      "default": ""
    },
    {
      "name": "Physical",
      "default": ""
    },
    {
      "name": "R_Temp",
      "default": ""
    },
    {
      "name": "Temp8",
      "default": ""
    },
    {
      "name": "Fzer",
      "default": ""
    },
    {
      "name": "OBox",
      "default": ""
    },
    {
      "name": "OT_Spec",
      "default": ""
    },
    {
      "name": "submit",
      "default": ""
    },
    {
      "name": "submit_date",
      "default": ""
    },
    {
      "name": "SubRemark",
      "default": ""
    },
    {
      "name": "comp",
      "default": ""
    },
    {
      "name": "de_comp",
      "default": ""
    },
    {
      "name": "package",
      "default": ""
    },
    {
      "name": "inspec",
      "default": ""
    },
    {
      "name": "de_inspec",
      "default": ""
    },
    {
      "name": "abspec",
      "default": ""
    },
    {
      "name": "incomp_respec",
      "default": ""
    },
    {
      "name": "de_incomp_respec",
      "default": ""
    },
    {
      "name": "ab_respec",
      "default": ""
    },
    {
      "name": "recieved",
      "default": ""
    },
    {
      "name": "recieved_time",
      "default": ""
    },
    {
      "name": "Check1",
      "default": ""
    },
    {
      "name": "Check2",
      "default": ""
    },
    {
      "name": "MFGcode",
      "default": ""
    },
    {
      "name": "EXPcode",
      "default": ""
    },
    {
      "name": "Sampling",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### SYNC_QUNITY_SAMPLINGS

[SYNC_QUNITY_SAMPLINGS](<SYNC_QUNITY_SAMPLINGS.sql>)

หาแถว id ล่าสุดต่อ sampID ใน temperature_30 และ temperature_55 แล้ว UPDATE Sampling.Quanity/Quanity2 ด้วยค่า no จากแถวนั้น. ไม่มี WHERE และ LEFT JOIN ทำให้หัวที่ไม่มี Brik ถูกตั้ง quantity เป็น NULL. เป็น latest no ไม่ใช่ COUNT หรือ MAX(no). เรียกในลำดับ login จึงกระทบทั้งชุดระหว่าง login.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_22f51a3816f74dbdbe6a069de85bc0fd`
- Builder queryVerb: `update`
- SQL operations: `SELECT, UPDATE`
- ตาราง: `Sampling`, `temperature_30`, `temperature_55`
- Bindings ใน SQL: ไม่มี

**หน้าที่อ้าง query ID นี้**

- [`/login`](../../login/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### SYNCHIGH_QUNITY_SAMPLINGS

[SYNCHIGH_QUNITY_SAMPLINGS](<SYNCHIGH_QUNITY_SAMPLINGS.sql>)

หา no ของ temperature_30high แถว id ล่าสุดต่อ sampID แล้วตั้ง Sampling high.amount. ไม่มี WHERE; หัวที่ไม่มี Brik ถูกตั้ง amount=NULL. เรียกใน /login คู่กับ sync Low Acid.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_855fee807bd64e019b33adaf0e36beef`
- Builder queryVerb: `update`
- SQL operations: `SELECT, UPDATE`
- ตาราง: `Sampling high`, `temperature_30high`
- Bindings ใน SQL: ไม่มี

**หน้าที่อ้าง query ID นี้**

- [`/login`](../../login/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Table_30

[Table_30](<Table_30.sql>)

อ่านทุกคอลัมน์ของ temperature_30 ตาม sampID เรียง id. ไม่จำกัดจำนวนแถว.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3be9cf5f48fb41fcab0320568bd7d59b`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/sampling-tables`](../../sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "ph": {
      "type": "boolean",
      "name": "ph"
    },
    "colour": {
      "type": "boolean",
      "name": "colour"
    },
    "smell": {
      "type": "string",
      "name": "smell"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    },
    "Temp": {
      "type": "number",
      "name": "Temp"
    }
  },
  "transformer": "return data"
}
```

</details>

### Table_55

[Table_55](<Table_55.sql>)

อ่าน temperature_55 ตาม sampID เรียง id แล้ว OFFSET 0/FETCH NEXT 15. คืนสูงสุด 15 แถวแรกและไม่มี binding เลื่อนหน้า; หากใช้ทำรายงานต้องไม่สมมติว่าครบทุก Brik.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_0dd1b2dfa97f4a258c943db960d29fdf`
- Builder queryVerb: `read`
- SQL operations: `SELECT`
- ตาราง: `temperature_55`
- Bindings ใน SQL: `sampID`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "id": {
      "type": "number",
      "name": "id"
    },
    "sampID": {
      "type": "string",
      "name": "sampID"
    },
    "code": {
      "type": "string",
      "name": "code"
    },
    "colour": {
      "type": "string",
      "name": "colour"
    },
    "ph": {
      "type": "string",
      "name": "ph"
    },
    "smell": {
      "type": "string",
      "name": "smell"
    },
    "tpc": {
      "type": "string",
      "name": "tpc"
    },
    "atp": {
      "type": "string",
      "name": "atp"
    },
    "remark": {
      "type": "string",
      "name": "remark"
    }
  },
  "transformer": "return data"
}
```

</details>

### UnlockSamp_HighAcid_Production

[UnlockSamp_HighAcid_Production](<UnlockSamp_HighAcid_Production.sql>)

ปลดล็อก Sampling high ตาม SampID: ล้าง recieved_by/recieved_date, ตั้ง Locked_Production='0' และเก็บ Unlocked_Uid. ไม่ล้าง submit, ผลตรวจ หรือ QSM_Sup_by; หากมี supervisor แล้ว status อาจยัง success ตาม query รายการ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d773cad0cd87473fbc538bc04d61ad2b`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `Userid`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid-sampling-tables`](../../high-acid-sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Userid",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UnlockSamp_Production

[UnlockSamp_Production](<UnlockSamp_Production.sql>)

ปลดล็อก Sampling ตาม SampID: ล้าง RecevieBy/Recieved_date, ตั้ง Locked_Production='0', เก็บ Unlocked_Uid. ไม่ล้าง SupervisorBy หรือผลเดิม จึงต้องตกลงขั้นตอน re-approval เมื่อนำกลับแก้ที่ Production.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_369a06f4ea384cf1a20b3807afed55fb`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `Userid`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/sampling-tables`](../../sampling-tables/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Userid",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update  Results

[Update  Results](<Update  Results.sql>)

บันทึก flags tpc/atp/tpc2/atp2 ในหัว Sampling ตาม sampID. คอลัมน์เหล่านี้เป็น bit ใน imported schema; ไม่ใช่ค่าตรวจ TPC/ATP ราย Brik ที่เป็น nvarchar ใน temperature tables. ชื่อจริงมีสองช่องว่างระหว่าง Update กับ Results.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9fcd264792b24b0b8b92ad810604613f`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `tpc`, `atp`, `tpc2`, `atp2`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "tpc",
      "default": ""
    },
    {
      "name": "atp",
      "default": ""
    },
    {
      "name": "tpc2",
      "default": ""
    },
    {
      "name": "atp2",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UPDATE CheckBox

[UPDATE CheckBox](<UPDATE CheckBox.sql>)

แก้ flags PH/Colour/Smell และ PH2/Colour2/Smell2 ของ Sampling ตาม sampID. เป็นการระบุ physical tests ระดับหัว ไม่ใช่ผลรายกล่อง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_41894b2c2d524a3289fb57889d8be756`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `ph`, `colour`, `smell`, `ph2`, `colour2`, `smell2`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "ph",
      "default": ""
    },
    {
      "name": "colour",
      "default": ""
    },
    {
      "name": "smell",
      "default": ""
    },
    {
      "name": "ph2",
      "default": ""
    },
    {
      "name": "colour2",
      "default": ""
    },
    {
      "name": "smell2",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update PHB

[Update PHB](<Update PHB.sql>)

ตั้ง PH_Before/PH_Before2 และ Spec_Actual/Spec_Actual2 ของ Sampling ตาม sampID. bindings spac/spac2 ถูก quote เป็นข้อความใน SQL แล้ว SQL Server แปลงเข้าคอลัมน์ float; ให้ส่งค่าตัวเลขที่ถูกต้อง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_87176ffa9ebc41039cb92b007ab3ecca`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `PhBefore`, `PhBefore2`, `spac`, `spac2`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "PhBefore",
      "default": ""
    },
    {
      "name": "PhBefore2",
      "default": ""
    },
    {
      "name": "spac",
      "default": ""
    },
    {
      "name": "spac2",
      "default": ""
    },
    {
      "name": "sampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update Sampling Submit

[Update Sampling Submit](<Update Sampling Submit.sql>)

บันทึก check30/check55, submitBy, submit_date และ submit_Remark ของ Sampling ตาม sampID. ไม่ล็อก Production และไม่ลงผู้รับ; workflow รับงานทำใน Update_Sampling แยกกัน.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ace2c5f350dc4c489c4302215c68a429`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `check30`, `check55`, `submitby`, `submitdate`, `remark`, `sampID`

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "sampID",
      "default": ""
    },
    {
      "name": "check30",
      "default": ""
    },
    {
      "name": "check55",
      "default": ""
    },
    {
      "name": "submitby",
      "default": ""
    },
    {
      "name": "submitdate",
      "default": ""
    },
    {
      "name": "remark",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Filling

[Update_Filling](<Update_Filling.sql>)

แก้วัน FillingDate/ExpiredDate, EditBy พร้อม Plan_CheckDate/Plan_CheckDate55 ของ Sampling ตาม SamID. หน้าจอคำนวณ state แผนก่อนส่ง query; SQL ไม่คำนวณวันบ่มเอง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_330c44a86ad64990b07b7e4f6df839c0`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `Fdate`, `Edate`, `EditBy`, `P`, `P2`, `SamID`

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Fdate",
      "default": ""
    },
    {
      "name": "Edate",
      "default": ""
    },
    {
      "name": "EditBy",
      "default": ""
    },
    {
      "name": "SamID",
      "default": ""
    },
    {
      "name": "P",
      "default": ""
    },
    {
      "name": "P2",
      "default": ""
    }
  ],
  "schema": {},
  "transformer": "return []"
}
```

</details>

### Update_Filling_LOW

[Update_Filling_LOW](<Update_Filling_LOW.sql>)

แก้ FillingDate/ExpiredDate และ EditBy ของ Sampling ตาม SamID เท่านั้น. ไม่เปลี่ยนวันแผน ต่างจาก Update_Filling.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef40da05eded48dea86f879918c269ab`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `Fdate`, `Edate`, `EditBy`, `SamID`

**หน้าที่อ้าง query ID นี้**

ไม่พบ query ID นี้ใน active screen config; ยังเก็บ query ไว้ครบ ไม่ยืนยันว่า unused จากระบบภายนอก.

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Fdate",
      "default": ""
    },
    {
      "name": "Edate",
      "default": ""
    },
    {
      "name": "EditBy",
      "default": ""
    },
    {
      "name": "SamID",
      "default": ""
    }
  ],
  "schema": {},
  "transformer": "return []"
}
```

</details>

### Update_HighAcid_Recevied

[Update_HighAcid_Recevied](<Update_HighAcid_Recevied.sql>)

บันทึกสภาพตัวอย่าง บรรจุภัณฑ์ การอยู่ใน spec/นอก spec และคำอธิบาย พร้อม recieved_by/recieved_date ของ Sampling high. แปลงวันรับด้วย style101 และตั้ง Locked_Production='1'. กรอง SamplingIDH.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4fd1fdbfa78e4882bea7df06373aaec0`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `comp`, `de_comp`, `package`, `inspec`, `de_inspec`, `abspec`, `incomp_respec`, `de_incomp_respec`, `ab_respec`, `recieved`, `recieved_time`, `Sampling`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid`](../../high-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "comp",
      "default": ""
    },
    {
      "name": "de_comp",
      "default": ""
    },
    {
      "name": "package",
      "default": ""
    },
    {
      "name": "inspec",
      "default": ""
    },
    {
      "name": "de_inspec",
      "default": ""
    },
    {
      "name": "abspec",
      "default": ""
    },
    {
      "name": "incomp_respec",
      "default": ""
    },
    {
      "name": "de_incomp_respec",
      "default": ""
    },
    {
      "name": "ab_respec",
      "default": ""
    },
    {
      "name": "recieved",
      "default": ""
    },
    {
      "name": "recieved_time",
      "default": ""
    },
    {
      "name": "Sampling",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_HighAcid_Submitted_Sampling

[Update_HighAcid_Submitted_Sampling](<Update_HighAcid_Submitted_Sampling.sql>)

บันทึกผู้ส่ง/วันส่ง, test flags TPCH/Y_M/Physical_T, storage flags Room_Temp/Temp0_8/Feezer และ OtherSpecBox/Other_Spec/Submit_remark ของ Sampling high. แปลงวันส่ง style101; ไม่แก้ lock หรือผู้รับ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_42105532df4943d6af6ae909cf8fb625`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `submit`, `submit_date`, `tpch`, `Y_M`, `Physical`, `R_Temp`, `Temp8`, `Fzer`, `OBox`, `OT_Spec`, `SubRemark`, `Sampling`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid`](../../high-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "submit",
      "default": ""
    },
    {
      "name": "submit_date",
      "default": ""
    },
    {
      "name": "tpch",
      "default": ""
    },
    {
      "name": "Y_M",
      "default": ""
    },
    {
      "name": "Physical",
      "default": ""
    },
    {
      "name": "R_Temp",
      "default": ""
    },
    {
      "name": "Temp8",
      "default": ""
    },
    {
      "name": "Fzer",
      "default": ""
    },
    {
      "name": "OBox",
      "default": ""
    },
    {
      "name": "OT_Spec",
      "default": ""
    },
    {
      "name": "Sampling",
      "default": ""
    },
    {
      "name": "SubRemark",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UPDATE_IMPORT

[UPDATE_IMPORT](<UPDATE_IMPORT.sql>)

รับ data เป็น JSON array แยกด้วย OPENJSON schema sampID(50), no(10), pH(10), atp(10). UPDATE temperature_30.pH/atp เมื่อคู่ sampID+no ตรงกัน. ไม่ INSERT รายการใหม่, ไม่กรองด้วย route sampid และไม่รวม code/id ใน key; JSON อาจแก้หลาย sampling และหลายแถวต่อเลข no ได้. ข้อมูลที่ยาวเกินขนาดใน OPENJSON ต้องพิจารณาการแปลง/ตัดค่า.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_487feda73adb45319ad456b7af59684e`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `data`

**หน้าที่อ้าง query ID นี้**

- [`/in-out-csv/:sampid`](../../in-out-csv/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "data",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UPDATE_IMPORT55

[UPDATE_IMPORT55](<UPDATE_IMPORT55.sql>)

นำเข้า JSON แบบ UPDATE_IMPORT แต่ใช้ temperature_55 และ field ph. เปลี่ยนเฉพาะ ph/atp ตาม sampID+no; ไม่สร้างแถวใหม่และไม่จำกัด sampling ตาม route โดย SQL เอง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2781257b4d244ec8a3bb96370cc22424`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_55`
- Bindings ใน SQL: `data`

**หน้าที่อ้าง query ID นี้**

- [`/in-out-csv/:sampid`](../../in-out-csv/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "data",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Microbe_highacid

[Update_Microbe_highacid](<Update_Microbe_highacid.sql>)

ตั้ง interpretor_by/interpretor_date ของ Sampling high ทุก SamplingIDH ใน SampID แบบ comma. binding ชื่อ inspect/inspect_date แม้คอลัมน์เป็น interpretor; trim token แต่ไม่ตัดซ้ำ.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3edef2f1a7814e49bee5aceadf8e88b9`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `inspect`, `inspect_date`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "inspect",
      "default": ""
    },
    {
      "name": "inspect_date",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Physical_highacid

[Update_Physical_highacid](<Update_Physical_highacid.sql>)

ตั้ง inspector_by/inspector_date ของ Sampling high ตาม SampID แบบ comma. เป็นผู้ลงผล physical ระดับหัว; ผลราย Brik ต้องบันทึกต่าง query.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_322e64adf23648d1b62eba5c9105a56b`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `inspect`, `inspect_date`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "inspect",
      "default": ""
    },
    {
      "name": "inspect_date",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Physicial_BottomPass_Brik

[Update_Physicial_BottomPass_Brik](<Update_Physicial_BottomPass_Brik.sql>)

ตั้ง Colourcode/Colour/Smell/Appearance ของทุก Brik temperature_30high ใน samplings แบบ comma. ไม่มีตัวกรอง id, หน้า หรือสถานะเดิม จึงมีผลกับทุกกล่องของ sampling ที่เลือก.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_75fa09ee3f2f4d0192fa781c2b3d8811`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `temperature_30high`
- Bindings ใน SQL: `code`, `colour`, `smell`, `aprance`, `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "samplings",
      "default": ""
    },
    {
      "name": "colour",
      "default": ""
    },
    {
      "name": "smell",
      "default": ""
    },
    {
      "name": "aprance",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Sampling

[Update_Sampling](<Update_Sampling.sql>)

บันทึกข้อมูลรับ Low Acid: Product/Flavour, วันแผน/วันตรวจจริงทั้ง30/55, dayFinished/dayFinished2, ผู้รับ/วันรับ, จำนวนตัวอย่าง สภาพ บรรจุภัณฑ์ และรายละเอียด พร้อม EditBy. ตั้ง Locked_Production='1' ตาม SamID. เป็นจุดส่งสถานะกลับให้ Sampling Check ระงับการเพิ่มข้อมูล; ไม่ได้สร้าง Sampling ใหม่.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_62524e88788f4018b1b4abdf486e4443`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `Sampling`
- Bindings ใน SQL: `Product`, `Flavour`, `Plan`, `Actual`, `Plan55`, `Actual55`, `dayFinished`, `dayFinished2`, `RecevieBy`, `Recieved_date`, `Amount_Samples`, `Example`, `Indication`, `packaging`, `complete`, `Detail_Complete`, `Normal`, `Incomplete`, `Detail_incomplete`, `Abnormal`, `EditBy`, `SamID`

**หน้าที่อ้าง query ID นี้**

- [`/low-acid`](../../low-acid/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Plan",
      "default": ""
    },
    {
      "name": "Actual",
      "default": ""
    },
    {
      "name": "SamID",
      "default": ""
    },
    {
      "name": "Plan55",
      "default": ""
    },
    {
      "name": "Actual55",
      "default": ""
    },
    {
      "name": "dayFinished",
      "default": ""
    },
    {
      "name": "dayFinished2",
      "default": ""
    },
    {
      "name": "RecevieBy",
      "default": ""
    },
    {
      "name": "Recieved_date",
      "default": ""
    },
    {
      "name": "Example",
      "default": ""
    },
    {
      "name": "Indication",
      "default": ""
    },
    {
      "name": "packaging",
      "default": ""
    },
    {
      "name": "complete",
      "default": ""
    },
    {
      "name": "Detail_Complete",
      "default": ""
    },
    {
      "name": "Normal",
      "default": ""
    },
    {
      "name": "Incomplete",
      "default": ""
    },
    {
      "name": "Detail_incomplete",
      "default": ""
    },
    {
      "name": "Abnormal",
      "default": ""
    },
    {
      "name": "EditBy",
      "default": ""
    },
    {
      "name": "Amount_Samples",
      "default": ""
    },
    {
      "name": "Product",
      "default": ""
    },
    {
      "name": "Flavour",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Sup_HighAcid

[Update_Sup_HighAcid](<Update_Sup_HighAcid.sql>)

ตั้ง QSM_Sup_by/QSM_Sup_date ของ Sampling high ตามรายการ SampID คั่น comma. SQL ไม่บังคับผลตรวจครบก่อนอนุมัติ; เมื่อ QSM_Sup_by ไม่ NULL รายการจะเป็น success. ใช้ทั้งหน้ารายงานและ a4-highacid.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_567275191e7c49f6a982c9d72e5a832a`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `Sampling high`
- Bindings ใน SQL: `Supervisor`, `Supervisor_Date`, `SampID`

**หน้าที่อ้าง query ID นี้**

- [`/a4-highacid`](../../a4-highacid/README.md)
- [`/high-acid-report/:sampid`](../../high-acid-report/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Supervisor",
      "default": ""
    },
    {
      "name": "Supervisor_Date",
      "default": ""
    },
    {
      "name": "SampID",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_TPC_BottomPass_Brik

[Update_TPC_BottomPass_Brik](<Update_TPC_BottomPass_Brik.sql>)

ตั้ง Colourcode และ TPC ของทุก Brik temperature_30high ใน samplings แบบ comma. ไม่จำกัดเฉพาะกล่องที่แสดงอยู่ในหน้า และไม่แก้ค่า Y_M.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_47a1044abe72444089fe55229ca4b0b4`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `temperature_30high`
- Bindings ใน SQL: `code`, `tpc`, `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "samplings",
      "default": ""
    },
    {
      "name": "tpc",
      "default": ""
    },
    {
      "name": "ym",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### Update_Y&m_BottomPass_Brik

[Update_Y&m_BottomPass_Brik](<Update_Y&m_BottomPass_Brik.sql>)

ตั้ง Colourcode และ Y_M ของทุก Brik temperature_30high ใน samplings แบบ comma. คงผล TPC เดิม; ชื่อมี & ให้รักษาชื่อไฟล์/ลิงก์ตรงกัน.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8c1d57a6703446a4823ab4bb8ab73b53`
- Builder queryVerb: `update`
- SQL operations: `UPDATE, SELECT`
- ตาราง: `temperature_30high`
- Bindings ใน SQL: `code`, `ym`, `samplings`

**หน้าที่อ้าง query ID นี้**

- [`/high-acid/bottom-shrink`](../../high-acid-bottom-shrink/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "code",
      "default": ""
    },
    {
      "name": "samplings",
      "default": ""
    },
    {
      "name": "ym",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UpdateTemp30

[UpdateTemp30](<UpdateTemp30.sql>)

แก้ colour/smell/tpc ของ temperature_30 ตาม id. ไม่แก้ pH/ATP และไม่มี sampID ใน WHERE; screen ต้องส่ง id ของกล่องที่เลือกถูกต้อง.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_30`
- Bindings ใน SQL: `Colour`, `smell`, `TPC`, `id`

**หน้าที่อ้าง query ID นี้**

- [`/in-out-csv/:sampid`](../../in-out-csv/README.md)
- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Colour",
      "default": ""
    },
    {
      "name": "smell",
      "default": ""
    },
    {
      "name": "TPC",
      "default": ""
    },
    {
      "name": "id",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>

### UpdateTemp55

[UpdateTemp55](<UpdateTemp55.sql>)

แก้ colour/smell/tpc ของ temperature_55 ตาม id. เป็นคู่ฝั่ง55ของ UpdateTemp30; ไม่มีการเขียนข้ามไป temperature_30 ใน query นี้.

- Query ID: `query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6086e94cb9004fa69cae43ae8723a448`
- Builder queryVerb: `update`
- SQL operations: `UPDATE`
- ตาราง: `temperature_55`
- Bindings ใน SQL: `Colour`, `smell`, `TPC`, `id`

**หน้าที่อ้าง query ID นี้**

- [`/table-time-check-30-55/:sampid`](../../table-time-check-30-55/README.md)

<details><summary>Configured parameters / output schema / transformer</summary>


```json
{
  "parameters": [
    {
      "name": "Colour",
      "default": ""
    },
    {
      "name": "smell",
      "default": ""
    },
    {
      "name": "TPC",
      "default": ""
    },
    {
      "name": "id",
      "default": ""
    }
  ],
  "schema": {
    "updated": {
      "type": "boolean",
      "name": "updated"
    }
  },
  "transformer": "return data"
}
```

</details>
