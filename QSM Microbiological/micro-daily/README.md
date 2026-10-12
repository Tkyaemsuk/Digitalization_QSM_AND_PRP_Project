# 🖥️ /micro-daily

ฟอร์มข้อมูลหัวงาน Micro และรายละเอียด Part

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/micro-daily`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_843917f977364d839be1311c2b7fb6cb`
- จำนวน components: 122

## Data / Query dependencies

- [Pull_sum_MicroID](<../database/Query/Pull_sum_MicroID.sql>)
- [Update_PART](<../database/Query/Update_PART.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 41 |
| booleanfield | 29 |
| stringfield | 17 |
| container | 13 |
| heading | 7 |
| button | 4 |
| datetimefield | 4 |
| image | 1 |
| divider | 1 |
| dataprovider | 1 |
| repeater | 1 |
| form | 1 |
| modal | 1 |
| gridblock | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Inprocess Check | inprocess |  | ไม่ได้ตั้งค่าใน component |
| Inprocess_remark | inprocess_remark |  | ไม่ได้ตั้งค่าใน component |
| Raw material Check | raw_material |  | ไม่ได้ตั้งค่าใน component |
| Raw milk Check | raw_milk |  | ไม่ได้ตั้งค่าใน component |
| Hot water Check | Hot_water |  | ไม่ได้ตั้งค่าใน component |
| water Check | water |  | ไม่ได้ตั้งค่าใน component |
| Lye Check | Lye |  | ไม่ได้ตั้งค่าใน component |
| air_borne Check | air_borne |  | ไม่ได้ตั้งค่าใน component |
| swab test Check | swab_test |  | ไม่ได้ตั้งค่าใน component |
| Other specify Check | Other_specify for detail |  | ไม่ได้ตั้งค่าใน component |
| Other_remark | Other_remark  for detail |  | ไม่ได้ตั้งค่าใน component |
| TPC Check | TPC |  | ไม่ได้ตั้งค่าใน component |
| Y_M Check | Y_M |  | ไม่ได้ตั้งค่าใน component |
| Mesophilic spore Check | Mesophilic_spore |  | ไม่ได้ตั้งค่าใน component |
| Coliform Check | Coliform |  | ไม่ได้ตั้งค่าใน component |
| Ecoli Check | Ecoli |  | ไม่ได้ตั้งค่าใน component |
| Salmonella Check | Salmonella |  | ไม่ได้ตั้งค่าใน component |
| Staphylococcus Check | Staphylococcus |  | ไม่ได้ตั้งค่าใน component |
| Bacillus Check | Bacillus |  | ไม่ได้ตั้งค่าใน component |
| Other_Specify for type Check | Other_Specify for type |  | ไม่ได้ตั้งค่าใน component |
| Thermophillic spore Check | Thermophillic_spore |  | ไม่ได้ตั้งค่าใน component |
| Other_remark | Other_remark for type |  | ไม่ได้ตั้งค่าใน component |
| Ecoli_unit | Ecoli_unit |  | ไม่ได้ตั้งค่าใน component |
| Salmonella_unit | Salmonella_unit |  | ไม่ได้ตั้งค่าใน component |
| Staphylococcus_unit | Staphylococcus_unit |  | ไม่ได้ตั้งค่าใน component |
| Bacillus_unit | Bacillus_unit |  | ไม่ได้ตั้งค่าใน component |
| Coliform_unit | Coliform_unit |  | ไม่ได้ตั้งค่าใน component |
| room temp Check | room_temp |  | ไม่ได้ตั้งค่าใน component |
| temperature0_8 Check | temperature0_8 |  | ไม่ได้ตั้งค่าใน component |
| Freezer Check | Freezer |  | ไม่ได้ตั้งค่าใน component |
| Other_Specify sample Check | Other_Specify for sample |  | ไม่ได้ตั้งค่าใน component |
| Other_remark | Other_remark for sample |  | ไม่ได้ตั้งค่าใน component |
| Submit_by | Submit_by |  | ไม่ได้ตั้งค่าใน component |
| Sbmit Date | Submit_Date |  | ไม่ได้ตั้งค่าใน component |
| Complete check | Complete |  | ไม่ได้ตั้งค่าใน component |
| Detail check | detail_complete |  | ไม่ได้ตั้งค่าใน component |
| Normal Check | Normal |  | ไม่ได้ตั้งค่าใน component |
| Incomplete Check | Incomplete |  | ไม่ได้ตั้งค่าใน component |
| detail incomplete Check | detail_incomplete |  | ไม่ได้ตั้งค่าใน component |
| Abnormal Specify Check | Abnormal_Specify |  | ไม่ได้ตั้งค่าใน component |
| Incomplete_remark | Incomplete_remark |  | ไม่ได้ตั้งค่าใน component |
| detail_incomplete_remark | detail_incomplete_remark |  | ไม่ได้ตั้งค่าใน component |
| Abnormal_Specify_remark | Abnormal_Specify_remark |  | ไม่ได้ตั้งค่าใน component |
| New Text Field | Action_on_ploblems |  | ไม่ได้ตั้งค่าใน component |
| Amount_sample | Amount_sample |  | ไม่ได้ตั้งค่าใน component |
| NO_page | NO_page |  | ไม่ได้ตั้งค่าใน component |
| recevived_date | recevived_date |  | ไม่ได้ตั้งค่าใน component |
| received_by | received_by |  | ไม่ได้ตั้งค่าใน component |
| Check_date1 | Check_date1 |  | ไม่ได้ตั้งค่าใน component |
| Check_date2 | Check_date2 |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### Check samp — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "id": "c24af39c29dfb4cdfbfe3dadd7badb066"
    },
    "##eventHandlerType": "Open Modal",
    "id": "yCJn1nsea"
  }
]
```

</details>

### SAVE — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=CheckSendID; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[CheckSendID] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[CheckSendID] }} |
| 4 | Execute Query | queryId=Update_PART |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "CheckSendID",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\n// ===============================\n// รับค่าจาก Form\n// ===============================\n\nconst code = String($(\"[c00f5a8c0789a4d34ac8172df2e189772].[value]\") || \"\").trim();\nconst date = String($(\"[c4a6ee7498da446fe8b06bd39294e0678].[value]\") || \"\").trim();\n\n\n// ===============================\n// ตรวจสอบรหัส\n// ===============================\n\n// ห้ามว่าง\nif (!code) {\n    throw new Error(\"กรุณากรอกรหัส\");\n}\n\n// ต้องมี 6 ตัวเท่านั้น\nif (code.length !== 6) {\n    throw new Error(\"กรุณาใส่รหัสพนักงานให้ถูกต้อง\");\n}\n\n// อนุญาตเฉพาะ A-Z และ 0-9\nif (!/^[A-Za-z0-9]{6}$/.test(code)) {\n    throw new Error(\"กรุณาใส่รหัส 6 ตัว ห้ามใส่ชื่อหรืออักขระพิเศษ\");\n}\n\n\n// ===============================\n// ตรวจสอบวันที่\n// ===============================\n\nif (!date) {\n    throw new Error(\"กรุณาระบุวันที่\");\n}\n\n\n// ===============================\n// ผ่านทุกเงื่อนไข\n// ===============================\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "2pZ_AcmL7"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[CheckSendID] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "iwoNznDw7"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[CheckSendID] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "4aptHl1R6"
  },
  {
    "parameters": {
      "queryParams": {
        "MicroID": "{{ [cbdee38343d3a45c0bc8737efa8df4ce6].[MicroID] }}",
        "inprocess": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[inprocess] }}",
        "inprocess_remark": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[inprocess_remark] }}",
        "raw_material": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[raw_material] }}",
        "raw_milk": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[raw_milk] }}",
        "Hot_water": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Hot_water] }}",
        "water": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[water] }}",
        "Lye": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Lye] }}",
        "air_borne": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[air_borne] }}",
        "swab_test": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[swab_test] }}",
        "Other_specify_for_detail": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_specify for detail] }}",
        "Other_remark_for_detail": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_remark  for detail] }}",
        "TPC": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[TPC] }}",
        "Y_M": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Y_M] }}",
        "Mesophilic_spore": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Mesophilic_spore] }}",
        "Thermophillic_spore": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Thermophillic_spore] }}",
        "Coliform": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Coliform] }}",
        "Ecoli": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Ecoli] }}",
        "Salmonella": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Salmonella] }}",
        "Staphylococcus": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Staphylococcus] }}",
        "Bacillus": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Bacillus] }}",
        "Other_Specify_for_type": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_Specify for type] }}",
        "Other_remark_for_type": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_remark for type] }}",
        "room_temp": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[room_temp] }}",
        "temperature0_8": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[temperature0_8] }}",
        "Freezer": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Freezer] }}",
        "Other_Specify_for_sample": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_Specify for sample] }}",
        "Other_remark_for_sample": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Other_remark for sample] }}",
        "Submit_by": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Submit_by] }}",
        "Submit_Date": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Submit_Date] }}",
        "Complete": "",
        "Incomplete": "",
        "Incomplete_remark": "",
        "detail_complete": "",
        "detail_incomplete": "",
        "detail_incomplete_remark": "",
        "Normal": "",
        "Abnormal_Specify": "",
        "Abnormal_Specify_remark": "",
        "Action_on_ploblems": "",
        "received_by": "",
        "recevived_date": "",
        "Check_date1": "",
        "Check_date2": "",
        "NO_page": "",
        "Inspector": "",
        "Inspector_date": "",
        "Interpretor": "",
        "Interpretor_date": "",
        "Sup": "",
        "Sup_date": "",
        "Coliform_unit": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Coliform_unit] }}",
        "Ecoli_unit": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Ecoli_unit] }}",
        "Salmonella_unit": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Salmonella_unit] }}",
        "Staphylococcus_unit": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Staphylococcus_unit] }}",
        "Bacillus_unit": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Bacillus_unit] }}",
        "Amount_sample": "",
        "Part": "1"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7c24680b92d544b785b3b01999d5d407",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "3K5iqEJpb"
  }
]
```

</details>

### SAVE — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=CheckSendID; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[CheckSendID] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[CheckSendID] }} |
| 4 | Execute Query | queryId=Update_PART |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "CheckSendID",
      "type": "set",
      "value": "\n[JavaScript binding]\n// ===============================\n// รับค่าจาก Form\n// ===============================\n\nconst code = String($(\"[c38782c46f9a4420390c7b1374bd87f84].[value]\") || \"\").trim();\nconst date = String($(\"[c5779a5d1e97849c88f49c64f9fa933b0].[value]\") || \"\").trim();\n\n\n// ===============================\n// ตรวจสอบรหัส\n// ===============================\n\n// ห้ามว่าง\nif (!code) {\n    throw new Error(\"กรุณากรอกรหัส\");\n}\n\n// ต้องมี 6 ตัวเท่านั้น\nif (code.length !== 6) {\n    throw new Error(\"กรุณาใส่รหัสพนักงานให้ถูกต้อง\");\n}\n\n// อนุญาตเฉพาะ A-Z และ 0-9\nif (!/^[A-Za-z0-9]{6}$/.test(code)) {\n    throw new Error(\"กรุณาใส่รหัส 6 ตัว ห้ามใส่ชื่อหรืออักขระพิเศษ\");\n}\n\n\n// ===============================\n// ตรวจสอบวันที่\n// ===============================\n\nif (!date) {\n    throw new Error(\"กรุณาระบุวันที่\");\n}\n\n\n// ===============================\n// ผ่านทุกเงื่อนไข\n// ===============================\n\nreturn \"\";\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "v8-wp8HWt"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[CheckSendID] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "ppFqymiIz"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[CheckSendID] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "Q1Y3btrZt"
  },
  {
    "parameters": {
      "queryParams": {
        "MicroID": "{{ [cbdee38343d3a45c0bc8737efa8df4ce6].[MicroID] }}",
        "inprocess": "",
        "inprocess_remark": "",
        "raw_material": "",
        "raw_milk": "",
        "Hot_water": "",
        "water": "",
        "Lye": "",
        "air_borne": "",
        "swab_test": "",
        "Other_specify_for_detail": "",
        "Other_remark_for_detail": "",
        "TPC": "",
        "Y_M": "",
        "Mesophilic_spore": "",
        "Thermophillic_spore": "",
        "Coliform": "",
        "Ecoli": "",
        "Salmonella": "",
        "Staphylococcus": "",
        "Bacillus": "",
        "Other_Specify_for_type": "",
        "Other_remark_for_type": "",
        "room_temp": "",
        "temperature0_8": "",
        "Freezer": "",
        "Other_Specify_for_sample": "",
        "Other_remark_for_sample": "",
        "Submit_by": "",
        "Submit_Date": "",
        "Complete": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Complete] }}",
        "Incomplete": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Incomplete] }}",
        "Incomplete_remark": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Incomplete_remark] }}",
        "detail_complete": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[detail_complete] }}",
        "detail_incomplete": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[detail_incomplete] }}",
        "detail_incomplete_remark": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[detail_incomplete_remark] }}",
        "Normal": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Normal] }}",
        "Abnormal_Specify": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Abnormal_Specify] }}",
        "Abnormal_Specify_remark": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Abnormal_Specify_remark] }}",
        "Action_on_ploblems": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Action_on_ploblems] }}",
        "received_by": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[received_by] }}",
        "recevived_date": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[recevived_date] }}",
        "Check_date1": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Check_date1] }}",
        "Check_date2": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Check_date2] }}",
        "NO_page": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[NO_page] }}",
        "Inspector": "",
        "Inspector_date": "",
        "Interpretor": "",
        "Interpretor_date": "",
        "Sup": "",
        "Sup_date": "",
        "Coliform_unit": "",
        "Ecoli_unit": "",
        "Salmonella_unit": "",
        "Staphylococcus_unit": "",
        "Bacillus_unit": "",
        "Amount_sample": "{{ [ceac0e8ec7b97498895b22d7a021b9ad8].[Amount_sample] }}",
        "Part": "2"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7c24680b92d544b785b3b01999d5d407",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "3K5iqEJpb"
  }
]
```

</details>

### Back — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/micro-table; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-table"
    },
    "##eventHandlerType": "Navigate To",
    "id": "ifc7c4hPQ"
  }
]
```

</details>

## Data provider configuration

ชื่อหรือ SQL สำเนาใน data provider อาจเก่ากว่า query document ปัจจุบัน. ถ้า `embeddedSqlDiffersFromCurrentQuery=true` ให้ตรวจการ resolve query ID ใน runtime ก่อนแก้ไข; เอกสาร SQL ใช้ query document ปัจจุบันเป็นหลัก.

<details><summary>เปิดดู data source และ query parameter mapping</summary>

```json
[
  {
    "component": "Micro provider",
    "dataSource": {
      "label": "Micro",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro",
      "type": "table",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro"
    },
    "queryParams": null,
    "filter": {
      "logicalOperator": "all",
      "onEmptyFilter": "none",
      "groups": [
        {
          "logicalOperator": "any",
          "filters": [
            {
              "valueType": "Binding",
              "field": "MicroID",
              "type": "string",
              "constraints": {
                "presence": false,
                "type": "string",
                "length": {}
              },
              "externalType": "nvarchar",
              "operator": "equal",
              "noValue": false,
              "value": "{{ [state].[SendMicroID] }}"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Micro",
    "dataSource": {
      "label": "Micro",
      "type": "table",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro"
    },
    "queryParams": null,
    "filter": null
  }
]
```

</details>

## หมายเหตุส่งต่องาน

- Metadata นี้มาจาก latest edited app; ไม่ยืนยันว่า published app เป็น revision เดียวกัน.
- Access=PUBLIC เป็นค่าที่ตั้งใน screen; ต้องอ่านเงื่อนไข action/state เพิ่มเพื่อเข้าใจข้อจำกัดที่ UI ใช้.
- ไม่ได้ execute query หรือบันทึกข้อมูลธุรกิจระหว่างจัดเอกสาร.
