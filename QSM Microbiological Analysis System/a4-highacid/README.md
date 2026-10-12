# Screen: /a4-highacid

หน้า A4 High Acid ตั้ง access BASIC และยังมี action Update_Sup_HighAcid ใน modal Approve. ต้องตรวจแหล่งข้อมูล/บริบท state ก่อนนำไปใช้งานเป็นรายงานอิสระ.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_937073b36bae4fdfa9b5572d1c0fe009`
- Route: `/a4-highacid`
- Access: `BASIC`
- Home: `False`
- Width: `Medium`
- Components: 116

## Query dependencies

- [Update_Sup_HighAcid](<../database/Query/Update_Sup_HighAcid.sql>)

## Components

| Type | Count |
|---|---|
| heading | 41 |
| text | 34 |
| booleanfield | 13 |
| container | 12 |
| divider | 7 |
| button | 3 |
| embed | 1 |
| image | 1 |
| modal | 1 |
| form | 1 |
| stringfield | 1 |
| datetimefield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| YMbox | Physical_T |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| SuperVisor_ExployeeID | QSM_Sup_by | Supervisor employeeID | ไม่ได้กำหนด |
| Supervisor_Date | QSM_Sup_date |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Approve — onClick

Config path: `/_children/1/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "ca4814bf2b1844bebafff3cae4446ed33"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Ca19MBRsS"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/1/_children/8/_children/0/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=QSM_Sup_date; componentId=Supervisor Forms; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "QSM_Sup_date",
      "type": "set",
      "componentId": "c4cc72f5213414942a8120590e23789da",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/1/_children/8/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sup_HighAcid |
| 2 | Refresh Data Provider | componentId=cf1c77b413204404cb5c7b6fb326a1fdc |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [c4cc72f5213414942a8120590e23789da].[interpretor_by] }}",
        "inspect_date": "{{ [c4cc72f5213414942a8120590e23789da].[interpretor_date] }}",
        "SampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "Supervisor": "{{ [c4cc72f5213414942a8120590e23789da].[QSM_Sup_by] }}",
        "Supervisor_Date": "{{ [c4cc72f5213414942a8120590e23789da].[QSM_Sup_date] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_567275191e7c49f6a982c9d72e5a832a",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "L84LhmkPl"
  },
  {
    "parameters": {
      "componentId": "cf1c77b413204404cb5c7b6fb326a1fdc"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "xS2-gwETq"
  }
]
```

</details>

## Data providers

Canonical query source อยู่ใน database/Query. สำเนา SQL ภายใน provider อาจเก่ากว่า query document; `embeddedSqlDiffersFromCurrentQuery` ระบุจุดที่ต้องตรวจ runtime resolution. Table providers ใช้ table ID โดยตรงและไม่มี query file.

<details><summary>Data source, filters, parameters</summary>

```json
[
  {
    "component": "Supervisor Forms",
    "path": "/_children/1/_children/8/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  }
]
```

</details>

## Component bindings / conditions

รวมค่าที่คำนวณ state, JavaScript, visibility และ validation; ไม่รวม style/assets.

<details><summary>เปิดรายละเอียด bindings ของแต่ละ component</summary>

```json
[
  {
    "component": "Approve",
    "id": "cca639660f3b04480b6fe3f195ca605ba",
    "path": "/_children/1/_children/0/_children/5",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "REuiapqR1",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_by] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "1c-j7e82m",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qasup"
        }
      ]
    }
  },
  {
    "component": "TPCbox",
    "id": "c4dacaea6a0dd4ad6a01ad4bd23741466",
    "path": "/_children/1/_children/1/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "ca9999a24e3fd4072872910fb03a803ec",
    "path": "/_children/1/_children/1/_children/9",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "ce259665cdaa4468bb01a44d0029e9648",
    "path": "/_children/1/_children/1/_children/11",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Physical_T] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "c3ab0b93ec1b44c76963c788652be45f9",
    "path": "/_children/1/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "cefad397dbe7d4f478290c5880f6a2133",
    "path": "/_children/1/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "c0c832a58545743f98ec5e56c38aa2f30",
    "path": "/_children/1/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "c9cf049f54fe2431d90e5809b382d63a4",
    "path": "/_children/1/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[OtherSpecBox] }}"
    }
  },
  {
    "component": "MFG CODE :",
    "id": "c4d9202ce626341b990aca367c1634db0",
    "path": "/_children/1/_children/4/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[MFG_Code_Format] }}"
    }
  },
  {
    "component": "EXP CODE",
    "id": "c7fcdbcf0b17545de844bc1ad8adf6f8a",
    "path": "/_children/1/_children/4/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[EXP_Code_Format] }}"
    }
  },
  {
    "component": "recieved",
    "id": "c55043dab506b4386b6b1b3ef88fd473e",
    "path": "/_children/1/_children/7/_children/1",
    "properties": {
      "text": "{{#if  [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}\n  {{ [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}         {{ date [c80186c96f63d49cf9d4523b3f15ea972].[inspector_date] \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "submit",
    "id": "c45d2f90b782143208483e768573a8c9f",
    "path": "/_children/1/_children/7/_children/3",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SubmitBy_Name] }}           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "c1d34a57a184a4646855aba1241d3e9de",
    "path": "/_children/1/_children/7/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Recevie_Name] }}        {{ [c80186c96f63d49cf9d4523b3f15ea972].[Recieved_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "c05a1016a04704b5c8dfa72a3828a2f2a",
    "path": "/_children/1/_children/7/_children/7",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}\n{{ [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}            {{ date    [c80186c96f63d49cf9d4523b3f15ea972].[interpretor_date]   \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "qsm supervisor",
    "id": "ca98e1fea38534011b7d8d46078c9bc5a",
    "path": "/_children/1/_children/7/_children/9",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}\n           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}      {{ date  [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_date]  \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Remark_1",
    "id": "c57e9fd610e2c4a8db474fb071cfc8922",
    "path": "/_children/1/_children/7/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_remark] }}"
    }
  },
  {
    "component": "Remark_2",
    "id": "ce91a60cef22f43629cf587c0003f9be8",
    "path": "/_children/1/_children/7/_children/12",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_remark] }}"
    }
  },
  {
    "component": "Remark_3",
    "id": "c53ed88189ac94c28967da7f3f8483bd1",
    "path": "/_children/1/_children/7/_children/13",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_remark] }}"
    }
  },
  {
    "component": "Incomeplete Specify",
    "id": "cdc11cc2b700b4269831fd61a0ce8e1eb",
    "path": "/_children/1/_children/9/_children/6",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[incom_spec_re] }}"
    }
  },
  {
    "component": "Detail Incomplete Specify",
    "id": "c4a9cc65a4a6d4a77989f0192d9eeed2e",
    "path": "/_children/1/_children/9/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec_re] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "ca5a391510d8b49bc9dcbe3923f558c89",
    "path": "/_children/1/_children/9/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec_re] }}"
    }
  },
  {
    "component": "Result Complete",
    "id": "c574826da96a54c22b2f11b90df5c292f",
    "path": "/_children/1/_children/9/_children/17",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "cd91967d75d2843138762e083ebc514ad",
    "path": "/_children/1/_children/9/_children/18",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "De_Complete",
    "id": "c4e6f01c70ea54aafae60d35eaea59f0c",
    "path": "/_children/1/_children/9/_children/19",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c0b09a6a7a460423fa00ac07409f3cca7",
    "path": "/_children/1/_children/9/_children/20",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result De_Complete",
    "id": "c641fdb8ab3dd44caa8aef99ba27a2a6d",
    "path": "/_children/1/_children/9/_children/21",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Packaging",
    "id": "c3869d3e8207044c48310e5b939ecf9a7",
    "path": "/_children/1/_children/9/_children/22",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Amount",
    "id": "c791b017be24d4a1b9155de74c275e872",
    "path": "/_children/1/_children/9/_children/23",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
