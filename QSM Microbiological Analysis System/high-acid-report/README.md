# Screen: /high-acid-report/:sampid

รายงาน High Acid รวม CallBack Sampling_HighAcid, CallBackTable และ Batch_Recall. มีหัวข้อมูล, Brik แบบหน้าละ30 และ QC pivot10รายการ; ปุ่ม Approve เปิด modal ลง QSM_Sup_by/date ผ่าน Update_Sup_HighAcid. Query หัวมีโอกาสคืนหลายแถวจาก JOIN QC.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_68d1ae7c45414f75a2cabdb8da6bf400`
- Route: `/high-acid-report/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Medium`
- Components: 770

## Query dependencies

- [Batch_Recall](<../database/Query/Batch_Recall.sql>)
- [CallBack Sampling_HighAcid](<../database/Query/CallBack Sampling_HighAcid.sql>)
- [CallBackTable](<../database/Query/CallBackTable.sql>)
- [Update_Sup_HighAcid](<../database/Query/Update_Sup_HighAcid.sql>)

## Components

| Type | Count |
|---|---|
| text | 290 |
| heading | 164 |
| booleanfield | 144 |
| container | 93 |
| divider | 28 |
| button | 12 |
| dataprovider | 9 |
| repeater | 9 |
| image | 4 |
| modal | 4 |
| form | 4 |
| stringfield | 4 |
| datetimefield | 4 |
| embed | 1 |

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
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Colour |  |  | ไม่ได้กำหนด |
| Smell |  |  | ไม่ได้กำหนด |
| Apprance |  |  | ไม่ได้กำหนด |
| SuperVisor_ExployeeID | QSM_Sup_by | Supervisor employeeID | ไม่ได้กำหนด |
| Supervisor_Date | QSM_Sup_date |  | ไม่ได้กำหนด |
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| YMbox | Physical_T |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Colour |  |  | ไม่ได้กำหนด |
| Smell |  |  | ไม่ได้กำหนด |
| Apprance |  |  | ไม่ได้กำหนด |
| SuperVisor_ExployeeID | QSM_Sup_by | Supervisor employeeID | ไม่ได้กำหนด |
| Supervisor_Date | QSM_Sup_date |  | ไม่ได้กำหนด |
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| YMbox | Physical_T |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Colour |  |  | ไม่ได้กำหนด |
| Smell |  |  | ไม่ได้กำหนด |
| Apprance |  |  | ไม่ได้กำหนด |
| SuperVisor_ExployeeID | QSM_Sup_by | Supervisor employeeID | ไม่ได้กำหนด |
| Supervisor_Date | QSM_Sup_date |  | ไม่ได้กำหนด |
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| YMbox | Physical_T |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Pass |  |  | ไม่ได้กำหนด |
| NotPass |  |  | ไม่ได้กำหนด |
| Colour |  |  | ไม่ได้กำหนด |
| Smell |  |  | ไม่ได้กำหนด |
| Apprance |  |  | ไม่ได้กำหนด |
| SuperVisor_ExployeeID | QSM_Sup_by | Supervisor employeeID | ไม่ได้กำหนด |
| Supervisor_Date | QSM_Sup_date |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Approve — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c82da0b39b7e34a79a800dd975581c735"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Ca19MBRsS"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/0/_children/0/_children/10/_children/0/_children/0/_children/4`

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
      "componentId": "c08275017fafc4bcbaed36a3f263d357b",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/0/_children/0/_children/10/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sup_HighAcid |
| 2 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [c08275017fafc4bcbaed36a3f263d357b].[interpretor_by] }}",
        "inspect_date": "{{ [c08275017fafc4bcbaed36a3f263d357b].[interpretor_date] }}",
        "SampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "Supervisor": "{{ [c08275017fafc4bcbaed36a3f263d357b].[QSM_Sup_by] }}",
        "Supervisor_Date": "{{ [c08275017fafc4bcbaed36a3f263d357b].[QSM_Sup_date] }}"
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

### Approve — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "ce33d485af2824632a989ef3a9ad896fe"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Ca19MBRsS"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/0/_children/1/_children/10/_children/0/_children/0/_children/4`

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
      "componentId": "c644739c441ff4649848e77b463556b4d",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/0/_children/1/_children/10/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sup_HighAcid |
| 2 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [c644739c441ff4649848e77b463556b4d].[interpretor_by] }}",
        "inspect_date": "{{ [c644739c441ff4649848e77b463556b4d].[interpretor_date] }}",
        "SampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "Supervisor": "{{ [c644739c441ff4649848e77b463556b4d].[QSM_Sup_by] }}",
        "Supervisor_Date": "{{ [c644739c441ff4649848e77b463556b4d].[QSM_Sup_date] }}"
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

### Approve — onClick

Config path: `/_children/0/_children/0/_children/2/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c28659ed95d6f437e94e83a1624c4b241"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Ca19MBRsS"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/0/_children/2/_children/10/_children/0/_children/0/_children/4`

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
      "componentId": "cdcfabc6dad8d4cf18eb88047fff9c37f",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/0/_children/2/_children/10/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sup_HighAcid |
| 2 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [cdcfabc6dad8d4cf18eb88047fff9c37f].[interpretor_by] }}",
        "inspect_date": "{{ [cdcfabc6dad8d4cf18eb88047fff9c37f].[interpretor_date] }}",
        "SampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "Supervisor": "{{ [cdcfabc6dad8d4cf18eb88047fff9c37f].[QSM_Sup_by] }}",
        "Supervisor_Date": "{{ [cdcfabc6dad8d4cf18eb88047fff9c37f].[QSM_Sup_date] }}"
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

### Approve — onClick

Config path: `/_children/0/_children/0/_children/3/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c3674b78d62774211a9b8483713ff6167"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Ca19MBRsS"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/0/_children/3/_children/10/_children/0/_children/0/_children/4`

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
      "componentId": "cb0def3fe7c764935ae4b319be2773f87",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/0/_children/3/_children/10/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sup_HighAcid |
| 2 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [cb0def3fe7c764935ae4b319be2773f87].[interpretor_by] }}",
        "inspect_date": "{{ [cb0def3fe7c764935ae4b319be2773f87].[interpretor_date] }}",
        "SampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "Supervisor": "{{ [cb0def3fe7c764935ae4b319be2773f87].[QSM_Sup_by] }}",
        "Supervisor_Date": "{{ [cb0def3fe7c764935ae4b319be2773f87].[QSM_Sup_date] }}"
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
    "component": "Sampling HighAcia",
    "path": "/_children/0",
    "dataSource": {
      "label": "CallBack Sampling_HighAcid",
      "name": "CallBack Sampling_HighAcid",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_5b555ae892f4463397d709f40263d313",
      "type": "query",
      "queryParams": {
        "SamplingID": "{{ [url].[sampid] }}"
      },
      "currentQueryName": "CallBack Sampling_HighAcid",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "Batch Resukt",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1",
    "dataSource": {
      "label": "Batch_Recall",
      "name": "Batch_Recall",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}"
      },
      "currentQueryName": "Batch_Recall",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/0/_children/0/_children/8",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "PageNo": "1"
      },
      "currentQueryName": "CallBackTable",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 28
  },
  {
    "component": "Supervisor Forms",
    "path": "/_children/0/_children/0/_children/0/_children/10/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "Batch Resukt",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1",
    "dataSource": {
      "label": "Batch_Recall",
      "name": "Batch_Recall",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}"
      },
      "currentQueryName": "Batch_Recall",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/0/_children/1/_children/8",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "PageNo": "2"
      },
      "currentQueryName": "CallBackTable",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 28
  },
  {
    "component": "Supervisor Forms",
    "path": "/_children/0/_children/0/_children/1/_children/10/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "Batch Resukt",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1",
    "dataSource": {
      "label": "Batch_Recall",
      "name": "Batch_Recall",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}"
      },
      "currentQueryName": "Batch_Recall",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/0/_children/2/_children/8",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "PageNo": "3"
      },
      "currentQueryName": "CallBackTable",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 28
  },
  {
    "component": "Supervisor Forms",
    "path": "/_children/0/_children/0/_children/2/_children/10/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "Batch Resukt",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1",
    "dataSource": {
      "label": "Batch_Recall",
      "name": "Batch_Recall",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}"
      },
      "currentQueryName": "Batch_Recall",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/0/_children/3/_children/8",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SamplingIDH] }}",
        "PageNo": "4"
      },
      "currentQueryName": "CallBackTable",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 28
  },
  {
    "component": "Supervisor Forms",
    "path": "/_children/0/_children/0/_children/3/_children/10/_children/0",
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
    "component": "Sampling HighAcia",
    "id": "cf1c77b413204404cb5c7b6fb326a1fdc",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Sxv3Bs_St",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Sampling HighAcia",
    "id": "c80186c96f63d49cf9d4523b3f15ea972",
    "path": "/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cf1c77b413204404cb5c7b6fb326a1fdc] }}"
    }
  },
  {
    "component": "Approve",
    "id": "c18552df7b8384253b6678c2a4892128c",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/5",
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
    "component": "Mac_name",
    "id": "c7d6e75b2f16e4c128b628ab5a79e5996",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c3dbd434d3eaa4911877ccd7631cca77d",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "c9dc4ef0b28b042099ae630573ddcaa31",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/10",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "c7075fb3157474e409f6500859b5f5ec0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/11",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "cacce354e57f342299a89b45d17b83a09",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/13",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Physical_T] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "c42817add3aad44c88f43cf46be32f54a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "ca87539577ddd40e99c5c37345a58007e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "c289a41b521f54bddb9dc50ae1c285a9a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "c3c9b37289ef0438fbcb552a73f5aca45",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Other_Spec",
    "id": "c87af8b76adf14371b0dba51d4f176ff2",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/9",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Other_Spec] }}"
    }
  },
  {
    "component": "SubRemark",
    "id": "ca7459c1171704735862f6dae3ff1bb94",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_remark] }}"
    }
  },
  {
    "component": "Incomeplete Specify",
    "id": "c409c591c89bb4ba6929f433236ec52f8",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/6",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[incom_spec_re] }}"
    }
  },
  {
    "component": "Detail Incomplete Specify",
    "id": "c89fe03ca46bd4aaca34826c9d7ed45e2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec_re] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c79f0fd4ec807428b9437457165c00e06",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec_re] }}"
    }
  },
  {
    "component": "Result Complete",
    "id": "cd5a4c6fbd41d4091ad492abd2ea03350",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/17",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "cf9d3e9ea99014eb5863dd4e1a29fd8e5",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/18",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "De_Complete",
    "id": "cc0026b19416347929cbd5228a2865eb4",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/19",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c26feac68f625425d9be9f7f10bcd23bb",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/20",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result De_Complete",
    "id": "c65db789b77e5466fa5744db6822f0bc4",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/21",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Packaging",
    "id": "cd2e37347655446019a4097bf9b9a30cc",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/22",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Amount",
    "id": "c4488726e220446c383899d7e8b7aefc5",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/23",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "Batch Repeater",
    "id": "cd9946f8868c24966aa6e51f2bacf8de0",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c084a784f7d0a4b43b4ca17131bf6095c] }}"
    }
  },
  {
    "component": "No",
    "id": "c1017cf41892b4f72ad8417c1d3799911",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No1] }}"
    }
  },
  {
    "component": "Media",
    "id": "c92518d35b3c745b2a5d6a57cb0e1f659",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media1] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c9e1f197a228d4da68ab3e67555319b95",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch1] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c5d75109419b54c9ca61a09c33cb46360",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass1] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c896d9b0eeb3b463cb910b15d935bcbfb",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass1] }}"
    }
  },
  {
    "component": "No",
    "id": "c75e1d2bf422a461fbaba593339f10145",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No2] }}"
    }
  },
  {
    "component": "Media",
    "id": "c4431549926734a1b93cbaea8ca78f5b1",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media2] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cd77b64a2d85d4cc183e09ee94825d63e",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/1/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch2] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c1dc66d134d10466a83bffe1b446603f9",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass2] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cdae86d2007aa400d8c7f2b43214f2d16",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/1/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass2] }}"
    }
  },
  {
    "component": "No",
    "id": "ce770a8445331433d9021a303f561d02b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/2/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No3] }}"
    }
  },
  {
    "component": "Media",
    "id": "c6ecb8f4afe744c02835cf464d73b7f79",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/2/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media3] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c0c90e1ab64b74103b658b52fcb799b06",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/2/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch3] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c89f677dfb1ba4d6a8efe6d5cc465106f",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/2/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass3] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cedf880ecb25945a88f9823f74b302d41",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass3] }}"
    }
  },
  {
    "component": "No",
    "id": "c9d730366b34948e8948567a61e2acdd8",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/3/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No4] }}"
    }
  },
  {
    "component": "Media",
    "id": "c76b9f98dc14b49eaa67de9902d9024b2",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/3/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media4] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c181b625aa0014986b25ffab1995fabd3",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/3/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch4] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cecf980877fee42b78022b18372d87c3b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/3/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass4] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c8b18f956f0b34c57867bacce0a01d34a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/3/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass4] }}"
    }
  },
  {
    "component": "No",
    "id": "c7a74ce0036f940a0a2dcaaf39b6043d3",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/4/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No5] }}"
    }
  },
  {
    "component": "Media",
    "id": "c290632e8a7e442c197e917bb2696604f",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/4/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media5] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c894e5e825cc7433d853a44d28faafd14",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/4/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch5] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0d529d8fc47b43a7a17a2e20268ff224",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/4/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass5] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cf1be41fdc4cf4f6996e53df844e4a8b3",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/4/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass5] }}"
    }
  },
  {
    "component": "No",
    "id": "c28258954eb3e4988bfc4e6dc81548c7d",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/5/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No6] }}"
    }
  },
  {
    "component": "Media",
    "id": "cdded0fdb4c9a48f498e44b2dac61ddeb",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/5/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media6] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ca1e40112139f446f894ad7bd5cda8c73",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/5/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch6] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cf2f7b9a3ec7a427ab1fb348771e79374",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/5/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass6] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c13d3df62b3f847b0bce3885036abba41",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass6] }}"
    }
  },
  {
    "component": "No",
    "id": "c66a973c386be41fe8627fc44402c812d",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/6/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No7] }}"
    }
  },
  {
    "component": "Media",
    "id": "c458296e5aa7f443b9473022b99edaaeb",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/6/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media7] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cabd4615d6ccc43d4869a81a22e211a43",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/6/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch7] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0908f4507aa748cca20d77e64ab4e25b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/6/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass7] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c40440555e05f44b794214275a7c80863",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/6/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass7] }}"
    }
  },
  {
    "component": "No",
    "id": "c921a94a71ca246eaa21b95732983f67e",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/7/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No8] }}"
    }
  },
  {
    "component": "Media",
    "id": "ce6b120b2a49e4d8abe9b41dd750cd7f6",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/7/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media8] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ccfc044f5d4d445b897c84616c00c720b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/7/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch8] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cf66b31f337a0488baa68567591fc08ee",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/7/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass8] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c23449148d1c241728f33693d89d666c4",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/7/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass8] }}"
    }
  },
  {
    "component": "No",
    "id": "c8ca547b6a9184d4cb9c07959107cda03",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No9] }}"
    }
  },
  {
    "component": "Media",
    "id": "c1a737c0a994a4854a1bca23ec5c2053a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/8/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media9] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ccc0ed4d4526c46bb8bbb4ab8ddb6a0f6",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/8/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch9] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c809a46068b7747b8b38a721a18c85250",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/8/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass9] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cb9cae9abb7914635892d08a9762e7767",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass9] }}"
    }
  },
  {
    "component": "No",
    "id": "c684f2bebb63d46628d0df14708ec3bd9",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/9/_children/0",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[No10] }}"
    }
  },
  {
    "component": "Media",
    "id": "c5e83ec89d013474b86619bf3b4ac3ded",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Media10] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c20b6c1dc10834c6e92323e5efd7be3e4",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/9/_children/2",
    "properties": {
      "text": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Batch10] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c10310c44148e4fab93a5237fc5496d65",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/9/_children/3",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Pass10] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cfb9e86f4779e4ef8acee0a492a241548",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/0/_children/0/_children/9/_children/4",
    "properties": {
      "defaultValue": "{{ [cd9946f8868c24966aa6e51f2bacf8de0].[Notpass10] }}"
    }
  },
  {
    "component": "MFG CODE :",
    "id": "cd1421985193342528e994942d2617f8e",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[MFG_Code_Format] }}"
    }
  },
  {
    "component": "EXP CODE",
    "id": "c049605131bd64042a81c228c5de30b44",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[EXP_Code_Format] }}"
    }
  },
  {
    "component": "Check1",
    "id": "c37fef7c247cf40568c77fd47df791007",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/12",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "Check2",
    "id": "c9fef610ada734876b1fef2b0083236df",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/14",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date2]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date2] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "c6f390590ab8947a9b0659c1913b67f0a",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cbddcb927448a4e2395f9b6af6ec9ff91] }}"
    }
  },
  {
    "component": "Brik",
    "id": "ce9b374cfa7714b439c8d83c894ee9462",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "No",
    "id": "c41ae11dd04dc4eaca3d8da49d26dfe24",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[No] }}"
    }
  },
  {
    "component": "Code",
    "id": "c3f696f8b015b47ffac2ea2e69206872c",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/1",
    "properties": {
      "text": "   {{ [c6f390590ab8947a9b0659c1913b67f0a].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "cfcdb4bdf9dae4774bd6fb10b20e2e02b",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/2",
    "properties": {
      "text": "          {{ [c6f390590ab8947a9b0659c1913b67f0a].[Flavour] }}"
    }
  },
  {
    "component": "Colour",
    "id": "cae43e36974b14beea5b87d18bc57c825",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[Colour] }}"
    }
  },
  {
    "component": "Smell",
    "id": "c7eb5e767bc10472dbc354a32d5f3942f",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[Smell] }}"
    }
  },
  {
    "component": "Apprance",
    "id": "cb4cb2338f6a34fa2a97ab4f5172c9b48",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/5",
    "properties": {
      "defaultValue": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[Appearance] }}"
    }
  },
  {
    "component": "TPC",
    "id": "ccb3b7e355a32469fa74217b5a2eeb7a1",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/6",
    "properties": {
      "text": "  {{ [c6f390590ab8947a9b0659c1913b67f0a].[TPC] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "_Qn6qkB4T",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[TPC] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "Y & M",
    "id": "cda09b5ff826e4b9dad4a7c209eb2c6fa",
    "path": "/_children/0/_children/0/_children/0/_children/8/_children/0/_children/0/_children/7",
    "properties": {
      "text": "   {{ [c6f390590ab8947a9b0659c1913b67f0a].[Y_M] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "X8JNhvJxN",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6f390590ab8947a9b0659c1913b67f0a].[Y_M] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "submit",
    "id": "ca9be64c496f64c9aaf6179fd52df8e51",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SubmitBy_Name] }}           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_Time] }}"
    }
  },
  {
    "component": "recieved",
    "id": "c0b69f307f5cf42d7a347d1a4ed520bb9",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/2",
    "properties": {
      "text": "{{#if  [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}\n  {{ [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}         {{ date [c80186c96f63d49cf9d4523b3f15ea972].[inspector_date] \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Recived",
    "id": "c79f266d8cd594f8d935377fe68006cae",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Recevie_Name] }}        {{ [c80186c96f63d49cf9d4523b3f15ea972].[Recieved_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "c454d977a8b8c4751ba90e3b6b81402c4",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/7",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}\n{{ [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}            {{ date    [c80186c96f63d49cf9d4523b3f15ea972].[interpretor_date]   \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "qsm supervisor",
    "id": "c1e7adcc790374c49a46155a62ecfffd6",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/9",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}\n           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}      {{ date  [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_date]  \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Remark_1",
    "id": "c898e2b3a2dca49db9a31c342e11f4783",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_remark] }}"
    }
  },
  {
    "component": "Remark_2",
    "id": "cbd5a67a45e884e3690b5b441fdfb7d57",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/12",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_remark] }}"
    }
  },
  {
    "component": "Remark_3",
    "id": "c3a9d22d5d81442de8c62de665edbd6aa",
    "path": "/_children/0/_children/0/_children/0/_children/9/_children/13",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_remark] }}"
    }
  },
  {
    "component": "Approve",
    "id": "c98f4f8c212534649b376c709faf1bb91",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/5",
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
    "component": "Mac_name",
    "id": "c656646bb48a74f66bb517153031882c6",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/4",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c781efa05dc2e48a890c5499bf7b1cb73",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "ceec6f5b7e7a54a86b24b7f96d87207fd",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/10",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "ccfcd018d187a4a9cae9eb28334c06e1d",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/11",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "c0762c4799d2f4cbe83f23fbffef2283e",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/13",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Physical_T] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "c82ce7c54f0a14c53bdb073f462f52f66",
    "path": "/_children/0/_children/0/_children/1/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "c64d4dbb13514451eb3fdd9191ab7ca55",
    "path": "/_children/0/_children/0/_children/1/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "c8936344ec7884a8a91d0c5b961c38d30",
    "path": "/_children/0/_children/0/_children/1/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "c2dc469d751804075973e444c6a4c29c9",
    "path": "/_children/0/_children/0/_children/1/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Other_Spec",
    "id": "c7125fe39c2884ed8bcd3741441ce070a",
    "path": "/_children/0/_children/0/_children/1/_children/2/_children/9",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Other_Spec] }}"
    }
  },
  {
    "component": "Incomeplete Specify",
    "id": "cc3edf2e65dee4950b1f6c07907763d9d",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/6",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[incom_spec_re] }}"
    }
  },
  {
    "component": "Detail Incomplete Specify",
    "id": "c5ae385ca1430418d9438aeffe02c47b2",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec_re] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c01f25c74b31f46ab8ba7f8a07a68a1d1",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec_re] }}"
    }
  },
  {
    "component": "Result Complete",
    "id": "cdf4d8726a7c84763a0d7bbb59e0bd846",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/17",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c511c6d9516814a9e88f9ab91bfabf68f",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/18",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "De_Complete",
    "id": "ce46b2704ffdd41aea75a638150d1d8a2",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/19",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c1593715feb4a48f1a005cab3ac0cbdba",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/20",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result De_Complete",
    "id": "cf15605360d7b4e62b475dd461109ff13",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/21",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Packaging",
    "id": "c2041f95d5c414c7ca71d8701941e28ac",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/22",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Amount",
    "id": "c6ab634062a524ddcabeb17132349a781",
    "path": "/_children/0/_children/0/_children/1/_children/3/_children/23",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "Batch Repeater",
    "id": "c37e34bd551a74638a75e4feedf4c813e",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cc74ea398253b488e9cb0c7142a17b6cb] }}"
    }
  },
  {
    "component": "No",
    "id": "cd93699cd68c24c1794e3a4be8c7014b1",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No1] }}"
    }
  },
  {
    "component": "Media",
    "id": "cf2a961529c80455aa2c5cd4b3ed74251",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media1] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c8c18a26ab3fb48979c89b69694a82403",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch1] }}"
    }
  },
  {
    "component": "Pass",
    "id": "ceface8be06f6445fa03c75d4db746b58",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass1] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c95ffa1eed1c54d469987b8582134c1d3",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass1] }}"
    }
  },
  {
    "component": "No",
    "id": "c4cf10887168545ac93e287e0a98647ad",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No2] }}"
    }
  },
  {
    "component": "Media",
    "id": "c5178dc36550d442bbc0ddaf0521ae1cb",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media2] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ce220deee3aa74eed843f829a36a44279",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/1/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch2] }}"
    }
  },
  {
    "component": "Pass",
    "id": "ccd6787b687e541b9aa9b506ead8d7412",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass2] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cc27a8728d035458a96501c34d5948fcd",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/1/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass2] }}"
    }
  },
  {
    "component": "No",
    "id": "ce3784548cbae476699c3ff9830536f3b",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/2/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No3] }}"
    }
  },
  {
    "component": "Media",
    "id": "ceb4456ed30964d56a92e266191e109be",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/2/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media3] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ce01f9712703f4b48b656db72d58200c0",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/2/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch3] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cf970135cf18e41b684397bf4453f3c36",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/2/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass3] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c9cfcef63e2ad4647a6cf2f19aac6a24f",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass3] }}"
    }
  },
  {
    "component": "No",
    "id": "c06ad6502ee0a46dbb206fe17847fc3cd",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/3/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No4] }}"
    }
  },
  {
    "component": "Media",
    "id": "c268d5380c35d4fd0b158fb81c377df1c",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/3/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media4] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ccdd961c2ef6b4161a791f0e64536943b",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/3/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch4] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cf688a638194b4909af72a3402a100bfa",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/3/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass4] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cae943f74329641eab66d1be865905620",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/3/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass4] }}"
    }
  },
  {
    "component": "No",
    "id": "c686c0d09aba84575ac3c2ddeccf81376",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/4/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No5] }}"
    }
  },
  {
    "component": "Media",
    "id": "c85732c7b920d491dbfc5801cc29807f5",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/4/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media5] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cb27bd83a16c54cf994f3a2f42cb00c21",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/4/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch5] }}"
    }
  },
  {
    "component": "Pass",
    "id": "ced0520a3796640baa524f56f6a2b81bc",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/4/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass5] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c244c031f930948e49af842d98e256eeb",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/4/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass5] }}"
    }
  },
  {
    "component": "No",
    "id": "ca1f70dd13f744631a9a24d751ca4f5b8",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/5/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No6] }}"
    }
  },
  {
    "component": "Media",
    "id": "c69ba2ae2d81a437ea6ff00e181152fd2",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/5/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media6] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c8f088cf103f94b11b2eb58bad394027c",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/5/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch6] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0d3d0afc0851433fa329ec92e6c78e51",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/5/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass6] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cc60a01f6a622435a8b0a89992d62f2b1",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass6] }}"
    }
  },
  {
    "component": "No",
    "id": "cb5e1581363dd4c58855c8233df7a9ff6",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/6/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No7] }}"
    }
  },
  {
    "component": "Media",
    "id": "cfc397ee320694c7f99ffe98a4a8360e3",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/6/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media7] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cb3c552c48bb14d76b7618da9b11a011e",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/6/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch7] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0e90de42e6f2499fb5714669a4496edd",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/6/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass7] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "ce5d3b15c2b704f91a16f9d8c92dc85d2",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/6/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass7] }}"
    }
  },
  {
    "component": "No",
    "id": "ccb7d6eaa757e4c2a9a435aeb5f137da9",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/7/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No8] }}"
    }
  },
  {
    "component": "Media",
    "id": "c4877b3555bc44d2a8a9e6cfa65e0fc2b",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/7/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media8] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cacc5f0476e32416ca94ac8562211c3c7",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/7/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch8] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c590f057e718644ffab9874b8932fe211",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/7/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass8] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cb7744386f0b948a6ad7baa393a6f4c8e",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/7/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass8] }}"
    }
  },
  {
    "component": "No",
    "id": "cc0cae895c29448f1a0d8050f4cd4ada2",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No9] }}"
    }
  },
  {
    "component": "Media",
    "id": "c7337e4deac7b49a9b938923587a34bb9",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/8/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media9] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c93c49306bc8f44e389d7dd215f25e03e",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/8/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch9] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c582b86063a114e65ba9718a743fd64a6",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/8/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass9] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cfa86538d3cb246948efdb916406b040f",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass9] }}"
    }
  },
  {
    "component": "No",
    "id": "c31b48b587e3b405eb445c4c68ebcdef4",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/9/_children/0",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[No10] }}"
    }
  },
  {
    "component": "Media",
    "id": "c7aec69b541b2434d8f53883aa4758e9d",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Media10] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c550ac59cce2349c988b3f8471291e0fe",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/9/_children/2",
    "properties": {
      "text": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Batch10] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c92308872db4b4682927b97b0c24734dd",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/9/_children/3",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Pass10] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "ca1d0c4b6be7a4f38b180fc3eab733fd3",
    "path": "/_children/0/_children/0/_children/1/_children/5/_children/1/_children/0/_children/0/_children/9/_children/4",
    "properties": {
      "defaultValue": "{{ [c37e34bd551a74638a75e4feedf4c813e].[Notpass10] }}"
    }
  },
  {
    "component": "MFG CODE :",
    "id": "c93a93eb09d774fc2995867c539182ee0",
    "path": "/_children/0/_children/0/_children/1/_children/6/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[MFG_Code_Format] }}"
    }
  },
  {
    "component": "EXP CODE",
    "id": "cb756440f9b0c4ab0a67beb602cd8c46e",
    "path": "/_children/0/_children/0/_children/1/_children/6/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[EXP_Code_Format] }}"
    }
  },
  {
    "component": "Check1",
    "id": "c5e2c0cf2c1ff4970902bc77d28f26eab",
    "path": "/_children/0/_children/0/_children/1/_children/6/_children/12",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "Check2",
    "id": "c354e9a061bd44679a448de29d8578be0",
    "path": "/_children/0/_children/0/_children/1/_children/6/_children/14",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date2]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date2] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "c67fe305f4f864329b45c0c0510cb655b",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c13e2544411f7487f80730a0bf1e39b90] }}"
    }
  },
  {
    "component": "Brik",
    "id": "c62dc3bfc174a454b9fc47bc282c967a7",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "No",
    "id": "c51c5cd51d1594df5b27774985dc1b8c0",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c67fe305f4f864329b45c0c0510cb655b].[No] }}"
    }
  },
  {
    "component": "Code",
    "id": "cad785b656e644d0b99de801048357038",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/1",
    "properties": {
      "text": "   {{ [c67fe305f4f864329b45c0c0510cb655b].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "c0f27bd16307f48a98be0ae886cecd5ee",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/2",
    "properties": {
      "text": "          {{ [c67fe305f4f864329b45c0c0510cb655b].[Flavour] }}"
    }
  },
  {
    "component": "Colour",
    "id": "c149d5c97504e412eadb4950eba62f1b7",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c67fe305f4f864329b45c0c0510cb655b].[Colour] }}"
    }
  },
  {
    "component": "Smell",
    "id": "c270a16aa98364e54aeedf53f29b722d2",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c67fe305f4f864329b45c0c0510cb655b].[Smell] }}"
    }
  },
  {
    "component": "Apprance",
    "id": "cb9abc8d5505647538f4c50cb79763be9",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/5",
    "properties": {
      "defaultValue": "{{ [c67fe305f4f864329b45c0c0510cb655b].[Appearance] }}"
    }
  },
  {
    "component": "TPC",
    "id": "cb45b4dfdd68e4f8b8f4b5e66f475d1e0",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/6",
    "properties": {
      "text": "  {{ [c67fe305f4f864329b45c0c0510cb655b].[TPC] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "_Qn6qkB4T",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c67fe305f4f864329b45c0c0510cb655b].[TPC] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "Y & M",
    "id": "cf05b80c607064214b65d1c94eaf76a0c",
    "path": "/_children/0/_children/0/_children/1/_children/8/_children/0/_children/0/_children/7",
    "properties": {
      "text": "   {{ [c67fe305f4f864329b45c0c0510cb655b].[Y_M] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "X8JNhvJxN",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c67fe305f4f864329b45c0c0510cb655b].[Y_M] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "submit",
    "id": "ce4901c744aaf4075a4719c981373fa78",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/1",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SubmitBy_Name] }}           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_Time] }}"
    }
  },
  {
    "component": "recieved",
    "id": "ce70281fdca88408e92221f4e0c5a3319",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/2",
    "properties": {
      "text": "{{#if  [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}\n  {{ [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}         {{ date [c80186c96f63d49cf9d4523b3f15ea972].[inspector_date] \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Recived",
    "id": "c9846a511d4074ecf8935acb20ddf4d53",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Recevie_Name] }}        {{ [c80186c96f63d49cf9d4523b3f15ea972].[Recieved_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "c73504df68832455fa03db8a6892b5d0b",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/7",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}\n{{ [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}            {{ date    [c80186c96f63d49cf9d4523b3f15ea972].[interpretor_date]   \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "qsm supervisor",
    "id": "c6ab0d9d167ca45a89f0906fd36a2ad93",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/9",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}\n           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}      {{ date  [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_date]  \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Remark_1",
    "id": "cf60fa8872e72487bb42beb047a74160e",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_remark] }}"
    }
  },
  {
    "component": "Remark_2",
    "id": "cf793781ae47c40f28e3791642227b04a",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/12",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_remark] }}"
    }
  },
  {
    "component": "Remark_3",
    "id": "c3ca4573fafeb40b2b2cd10147abb5f25",
    "path": "/_children/0/_children/0/_children/1/_children/9/_children/13",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_remark] }}"
    }
  },
  {
    "component": "Approve",
    "id": "ca2f6f2ea1e904ac784f9dbbc337457b3",
    "path": "/_children/0/_children/0/_children/2/_children/0/_children/5",
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
    "component": "Mac_name",
    "id": "c72d2b998598644898b57266bdc8d1161",
    "path": "/_children/0/_children/0/_children/2/_children/1/_children/4",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "ca5b590a233a2464b9e7314c235ff5369",
    "path": "/_children/0/_children/0/_children/2/_children/1/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "c2e1ca629431743bb8740e391d57087b3",
    "path": "/_children/0/_children/0/_children/2/_children/1/_children/10",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "ce0f6e06edb4d4734b904a32b8fdbf37d",
    "path": "/_children/0/_children/0/_children/2/_children/1/_children/11",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "cb839c724f4574ab99f8ff5202138eb01",
    "path": "/_children/0/_children/0/_children/2/_children/1/_children/13",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Physical_T] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "c930f6b36a9724dcdad16f140ee9d9fbb",
    "path": "/_children/0/_children/0/_children/2/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "c6ac81f0c441440859b453ce03404421c",
    "path": "/_children/0/_children/0/_children/2/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "cd216d8f797e44828b17b43e703a2a9d3",
    "path": "/_children/0/_children/0/_children/2/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "c6d99734f6a844dfca6b0290294562172",
    "path": "/_children/0/_children/0/_children/2/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Other_Spec",
    "id": "cce3ed2272ae94afe915d98f90b5e7c8b",
    "path": "/_children/0/_children/0/_children/2/_children/2/_children/9",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Other_Spec] }}"
    }
  },
  {
    "component": "Incomeplete Specify",
    "id": "c75c9385bb8e74f0dacd068358912bd89",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/6",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[incom_spec_re] }}"
    }
  },
  {
    "component": "Detail Incomplete Specify",
    "id": "c8a43d01e06c74fecb132a66ce57aa039",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec_re] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c3c77c85700e94bb88c1ed1e4590c4937",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec_re] }}"
    }
  },
  {
    "component": "Result Complete",
    "id": "caec78c664d554885a9b584bac1ad4a4d",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/17",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c75920a00552f4b9a8ce37a47a2fe97fd",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/18",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "De_Complete",
    "id": "ca78194856c264b6fac72e2d9bd9c646d",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/19",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "c9dac25b4786944919c85023cb5d9eb80",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/20",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result De_Complete",
    "id": "c46bdb8fce93d4d01ad9af4b79d992060",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/21",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Packaging",
    "id": "c66a129f14b814d06a9ebf21bfd9ae4e5",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/22",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Amount",
    "id": "c203a806eeb4149c4863998da36d47578",
    "path": "/_children/0/_children/0/_children/2/_children/3/_children/23",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "Batch Repeater",
    "id": "ce24e7fc0edc94d4fad2c1c1ff16e3754",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c0578c1e1de144976b1bb207da6460ae4] }}"
    }
  },
  {
    "component": "No",
    "id": "c245c47fc6be74294a4cf5a3ac0e75b68",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No1] }}"
    }
  },
  {
    "component": "Media",
    "id": "ceab843ed08544c84a34e7bc3a6a381ae",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media1] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c955573915f9d431a849905bc9b8b443d",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch1] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c6e58e179906b4166878cdc3774a2a153",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass1] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cd06aaad9f1bb4036b85aabd128265a66",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass1] }}"
    }
  },
  {
    "component": "No",
    "id": "c11d90d06c91144aa8d5917576eb4dede",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No2] }}"
    }
  },
  {
    "component": "Media",
    "id": "c12d9f7e35b9748dba799e10aafd96d30",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media2] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c96d0ffcf24c44b249d5ee15797240a08",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/1/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch2] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cde7446d8c1b44158af786627f6f63496",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass2] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c62c3f2c3ea384e2a884fe4cfb08e53df",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/1/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass2] }}"
    }
  },
  {
    "component": "No",
    "id": "c46f87796d9d84802897774a1fd1e1111",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/2/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No3] }}"
    }
  },
  {
    "component": "Media",
    "id": "c877830175b924a4982ee9bfcd0745749",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/2/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media3] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c91748bbb79e34c419a0252f2664ee6ff",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/2/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch3] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cc174c31582764c7896d91a9e9dd68118",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/2/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass3] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c84da50f862fc4504a2193ce77a93e369",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass3] }}"
    }
  },
  {
    "component": "No",
    "id": "c6918d19ab2024f868e72696dd806dced",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/3/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No4] }}"
    }
  },
  {
    "component": "Media",
    "id": "cb99bc1efd30547719509b81c3f9477bb",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/3/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media4] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cd505bbc9e60749da91e73307f1c4e999",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/3/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch4] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c20ba8f56dcbb4b86b1e4459891e11cc5",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/3/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass4] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cec9ac411254b4dd3bff0a10eb6348b44",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/3/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass4] }}"
    }
  },
  {
    "component": "No",
    "id": "cd44994481c364d4fad8d81c266fe5f7b",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/4/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No5] }}"
    }
  },
  {
    "component": "Media",
    "id": "c652a493d6b15486a8356f7252dacb4d0",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/4/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media5] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c6ca100acfb3042bf89dd2b7f5bb3ae83",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/4/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch5] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c6a6f607506694ef7afd2d84f33f43cfa",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/4/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass5] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cc717105fa630446899ae99a2045db13f",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/4/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass5] }}"
    }
  },
  {
    "component": "No",
    "id": "ca048faf0affa429d991953d32ef2748a",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/5/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No6] }}"
    }
  },
  {
    "component": "Media",
    "id": "c80baa1426ab24f9589f662646f3a4131",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/5/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media6] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c47c95e2801b4412cae583a8ed1640ddb",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/5/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch6] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0003d5392d8b40e6a140a2a08edc98e5",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/5/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass6] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cb0efb3697c2c445f8af21d93823cf605",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass6] }}"
    }
  },
  {
    "component": "No",
    "id": "cac834f4eb6984c80ae7a94e753f8fefa",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/6/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No7] }}"
    }
  },
  {
    "component": "Media",
    "id": "c8899b719ae514d7485cecd231fa6d02d",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/6/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media7] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c281d5c5680cc40b0be3f4317f9a86348",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/6/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch7] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cd332b2e9060c4c9889282a10a26c1714",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/6/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass7] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cac59e14b48a34f88b35abd40546c0da7",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/6/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass7] }}"
    }
  },
  {
    "component": "No",
    "id": "c2b87e6ee9d414635a46bb2a59d44eb25",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/7/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No8] }}"
    }
  },
  {
    "component": "Media",
    "id": "c6945355888174e2a83077229a3b091a6",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/7/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media8] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c19c8c39339374e93bb61aab15723d3d1",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/7/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch8] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cb89904d6853e4243985e20202b271c8e",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/7/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass8] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cffac48bf03264c0e83f216ab336051e9",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/7/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass8] }}"
    }
  },
  {
    "component": "No",
    "id": "c84d4a8ac08db4e54b9f0fe13277c7aa7",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No9] }}"
    }
  },
  {
    "component": "Media",
    "id": "c9f09acf47896456d8095279050ecfec8",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/8/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media9] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cadc76338918f4504984cd84e8a0593ba",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/8/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch9] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c839e426682024f758351c61b590d6c41",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/8/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass9] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c198fddc7c90a4933acd0e6fa36dc641b",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass9] }}"
    }
  },
  {
    "component": "No",
    "id": "cd1909a9fa6ce4fc1a01e09b3ded42629",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/9/_children/0",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[No10] }}"
    }
  },
  {
    "component": "Media",
    "id": "c9f89b07d1ba94afaa9756fbba91f36c4",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Media10] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c205562a7d5394b0e8966d69f717245e3",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/9/_children/2",
    "properties": {
      "text": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Batch10] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cb7aad3cb10b94240b0683b67f09e1bdd",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/9/_children/3",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Pass10] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c91b26257c0754b1489181fae8eb9fad3",
    "path": "/_children/0/_children/0/_children/2/_children/5/_children/1/_children/0/_children/0/_children/9/_children/4",
    "properties": {
      "defaultValue": "{{ [ce24e7fc0edc94d4fad2c1c1ff16e3754].[Notpass10] }}"
    }
  },
  {
    "component": "MFG CODE :",
    "id": "ce2c79113c6f5456f83818b74698caf3f",
    "path": "/_children/0/_children/0/_children/2/_children/6/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[MFG_Code_Format] }}"
    }
  },
  {
    "component": "EXP CODE",
    "id": "c8d396061c36b4f34bd0d1ff1faa08111",
    "path": "/_children/0/_children/0/_children/2/_children/6/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[EXP_Code_Format] }}"
    }
  },
  {
    "component": "Check1",
    "id": "cd551aef7195b41dc8be07f108c714a27",
    "path": "/_children/0/_children/0/_children/2/_children/6/_children/12",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "Check2",
    "id": "c45c777fbe8f14122a47a6860fba5ae93",
    "path": "/_children/0/_children/0/_children/2/_children/6/_children/14",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date2]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date2] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "c2e8c44e87b744f23baf0ec1b7bcbd4e0",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c992fb49969c040fdac4a53d1543d110c] }}"
    }
  },
  {
    "component": "Brik",
    "id": "c705d974c00c6430c9c900810c570ed9a",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "No",
    "id": "c057b4cfca67644ad8f84610cf9e33487",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[No] }}"
    }
  },
  {
    "component": "Code",
    "id": "ca25983419270428aa29b96ca72ef6974",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/1",
    "properties": {
      "text": "   {{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "cf7c52012090d4dc2ae0da635df1a713d",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/2",
    "properties": {
      "text": "          {{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Flavour] }}"
    }
  },
  {
    "component": "Colour",
    "id": "c29124f6fa6bb40158595ea48a21f7760",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Colour] }}"
    }
  },
  {
    "component": "Smell",
    "id": "c4a8884d9c298478aaa6c0502a784607f",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Smell] }}"
    }
  },
  {
    "component": "Apprance",
    "id": "cc6b0b3959aaa4744baa88ca06b7fd88a",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/5",
    "properties": {
      "defaultValue": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Appearance] }}"
    }
  },
  {
    "component": "TPC",
    "id": "c5b8dddb2965748e29ae4f828522f947c",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/6",
    "properties": {
      "text": "  {{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[TPC] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "_Qn6qkB4T",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[TPC] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "Y & M",
    "id": "c49906593873c4775825d914568a3f44a",
    "path": "/_children/0/_children/0/_children/2/_children/8/_children/0/_children/0/_children/7",
    "properties": {
      "text": "   {{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Y_M] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "X8JNhvJxN",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c2e8c44e87b744f23baf0ec1b7bcbd4e0].[Y_M] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "submit",
    "id": "c30da9d1287bf4f679656f7115f3be67a",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/1",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SubmitBy_Name] }}           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_Time] }}"
    }
  },
  {
    "component": "recieved",
    "id": "cb268f61f376b4e4b93c97bb26bc9e2f0",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/2",
    "properties": {
      "text": "{{#if  [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}\n  {{ [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}         {{ date [c80186c96f63d49cf9d4523b3f15ea972].[inspector_date] \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Recived",
    "id": "c177b42ed4eba49c1868830ee6c5a731f",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Recevie_Name] }}        {{ [c80186c96f63d49cf9d4523b3f15ea972].[Recieved_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "c17c504fe91174befabbd5797e2ef00fa",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/7",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}\n{{ [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}            {{ date    [c80186c96f63d49cf9d4523b3f15ea972].[interpretor_date]   \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "qsm supervisor",
    "id": "c418cd7c938e843f0890b51a95c17fdc6",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/9",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}\n           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}      {{ date  [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_date]  \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Remark_1",
    "id": "cccd3ffdaf713497796989fb0029d6117",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_remark] }}"
    }
  },
  {
    "component": "Remark_2",
    "id": "c1882ce9e0217432dbe292c34b791ae27",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/12",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_remark] }}"
    }
  },
  {
    "component": "Remark_3",
    "id": "c0a049fbef2fb47458a4d32851dcedca8",
    "path": "/_children/0/_children/0/_children/2/_children/9/_children/13",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_remark] }}"
    }
  },
  {
    "component": "Approve",
    "id": "c211ab6a7811841ccb0c87e5557ec6e6e",
    "path": "/_children/0/_children/0/_children/3/_children/0/_children/5",
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
    "component": "Mac_name",
    "id": "c555d6b2928214a6480be96f04252a17f",
    "path": "/_children/0/_children/0/_children/3/_children/1/_children/4",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c8a4e44cf73bd4658980701a6be50636b",
    "path": "/_children/0/_children/0/_children/3/_children/1/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "c56809196c72f49b8b32926d06a3119a9",
    "path": "/_children/0/_children/0/_children/3/_children/1/_children/10",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "c14196ae8dbed4c80a0a0e7690226b2f2",
    "path": "/_children/0/_children/0/_children/3/_children/1/_children/11",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "c03f5ca543ca74d37bd80a66106e15a0a",
    "path": "/_children/0/_children/0/_children/3/_children/1/_children/13",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Physical_T] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "ce85c58064e3a464e969011e9856f7d36",
    "path": "/_children/0/_children/0/_children/3/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "ce01aab8b3cf24da3aea90708317b0b43",
    "path": "/_children/0/_children/0/_children/3/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "cfa731456920c4741a7bd9400e2cee196",
    "path": "/_children/0/_children/0/_children/3/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "c05dfb81b51f24d85b656165354da69bf",
    "path": "/_children/0/_children/0/_children/3/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Other_Spec",
    "id": "c98ea785484f04d79810bc39bdeb94f10",
    "path": "/_children/0/_children/0/_children/3/_children/2/_children/9",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Other_Spec] }}"
    }
  },
  {
    "component": "Incomeplete Specify",
    "id": "c97a84f53ae9544d1bb84e9b46aa9ee9e",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/6",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[incom_spec_re] }}"
    }
  },
  {
    "component": "Detail Incomplete Specify",
    "id": "c4b07adf2edd547a9b5cbe841dd4d99eb",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec_re] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c42088e303fb04757ab14c0131b5c12c8",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec_re] }}"
    }
  },
  {
    "component": "Result Complete",
    "id": "c40519f30c04145dabc32209585996710",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/17",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "cbbb125575a0e4e8182e86714e83f8b87",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/18",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "De_Complete",
    "id": "c7be5f24ae18f44248c23dbe7dc8907cf",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/19",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_incom_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Complete",
    "id": "caafffa51cf9042d7b88cd4ee57cc2404",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/20",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[ab_spec] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result De_Complete",
    "id": "c84e6b4ea719b4902bb2934ff73939498",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/21",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[De_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Packaging",
    "id": "c1f71499b7ed548e4afecbebee0b81b93",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/22",
    "properties": {
      "defaultValue": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Result Amount",
    "id": "cf109c12c34904d51a88ecc91f4c21fdc",
    "path": "/_children/0/_children/0/_children/3/_children/3/_children/23",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[amount] }}"
    }
  },
  {
    "component": "Batch Repeater",
    "id": "c6a00d3908c404b34a776bc29f162c606",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cab7de36909354988ada80ad2ca8d1774] }}"
    }
  },
  {
    "component": "No",
    "id": "c7b8391ad6e9548beaf472338c496b405",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No1] }}"
    }
  },
  {
    "component": "Media",
    "id": "cc30c62b4fa9e4b1389b4bb9aefba4eaa",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media1] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c77511758af8a4dd98fcc09b8cb7bd12f",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch1] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c74a40ed671594d2fac961e19274b874f",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass1] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cc8fd848c9366419f89a1cec8cf0dd38b",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass1] }}"
    }
  },
  {
    "component": "No",
    "id": "ce4da23d9334945e993d451441bf3e393",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No2] }}"
    }
  },
  {
    "component": "Media",
    "id": "c74403753dd45459ba3b846bf372a895d",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media2] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cdf6ebc0d72e54ed4b06c09e3d2cd97b5",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/1/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch2] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c71656278a82e4b69bea9dc0ce8fcebfd",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass2] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c3ffcd06d1ab24437bb2214eb68f24bf2",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/1/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass2] }}"
    }
  },
  {
    "component": "No",
    "id": "c0a05f50633f54b8e9574bd460ea4beef",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/2/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No3] }}"
    }
  },
  {
    "component": "Media",
    "id": "c26ae3e2cf2da4c8c9ee7f1061658471c",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/2/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media3] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c991367ea6ce143e1b4ac049c66f5d927",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/2/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch3] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c5493894a2c004fc4bb392be027064f99",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/2/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass3] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c80f5a9ea93504b27bbfdf979988d80cd",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass3] }}"
    }
  },
  {
    "component": "No",
    "id": "c81bdb242676540d4860c5154b3cbc9c6",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/3/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No4] }}"
    }
  },
  {
    "component": "Media",
    "id": "c65fdb522ee254d98aa4cca2b609da910",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/3/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media4] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cbacb070d78254dfaa7db3d838df2c7e7",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/3/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch4] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c6990438f5db34b078534277acf805fb2",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/3/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass4] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c1c9557c9913b4d1a8428ea14a9d9bcf6",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/3/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass4] }}"
    }
  },
  {
    "component": "No",
    "id": "ce60f07eba2034d49bd9c94ac8fa5d282",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/4/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No5] }}"
    }
  },
  {
    "component": "Media",
    "id": "cfe15824f25fb40e49236a73cb0307927",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/4/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media5] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cc68127e84307467a94b5c5d79397223a",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/4/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch5] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cd36891d2cea34ed69a01149773f51971",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/4/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass5] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c688a721632784df9bfe22148cd3afe00",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/4/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass5] }}"
    }
  },
  {
    "component": "No",
    "id": "cf599b45a2a1c461aa72ffe3c677e40b7",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/5/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No6] }}"
    }
  },
  {
    "component": "Media",
    "id": "c9f9738f397c34e30830904659bd228d5",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/5/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media6] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ced46352eeec4448f8e5f7c9dc68dae97",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/5/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch6] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c2212c87dee294aa7915633bca0883b7e",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/5/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass6] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c6ae98db5c21745cf8dbc19699ff83bf8",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass6] }}"
    }
  },
  {
    "component": "No",
    "id": "c10310415c7f3425baf203f580c9c1ad2",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/6/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No7] }}"
    }
  },
  {
    "component": "Media",
    "id": "c0ca4b2e9a9c04a509e55c182f4c4dc4a",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/6/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media7] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cebeb8e3f0a0b4e1ead1d413c63f1d835",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/6/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch7] }}"
    }
  },
  {
    "component": "Pass",
    "id": "cdb3d311682e34eb992843d7c029d015c",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/6/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass7] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cf58500bae5a74a84a75992356f9e03dd",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/6/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass7] }}"
    }
  },
  {
    "component": "No",
    "id": "ca657f7742eda44d3b46c44fd5af42cd2",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/7/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No8] }}"
    }
  },
  {
    "component": "Media",
    "id": "c28bbff75e58d441cbf41b1b33be98e44",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/7/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media8] }}"
    }
  },
  {
    "component": "Batch",
    "id": "cde9344b4b30749ec813fb277224929f7",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/7/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch8] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c6b4b718ffaa948df8f079916d6de7715",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/7/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass8] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cd1db63c867754caa8062f20a89513a20",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/7/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass8] }}"
    }
  },
  {
    "component": "No",
    "id": "c205e221907c64542a7aaee306a8c4339",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No9] }}"
    }
  },
  {
    "component": "Media",
    "id": "c77e347c79e9141d0bfb7d156b18b2e20",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/8/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media9] }}"
    }
  },
  {
    "component": "Batch",
    "id": "ca5eb34bf98ed4edfaecb40764d34d374",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/8/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch9] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c0cedbda757b246d7aa4c3140a0c4f349",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/8/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass9] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "c6c99d27073594424a4af4be19fd0db08",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass9] }}"
    }
  },
  {
    "component": "No",
    "id": "cae27a9c0738e41c880b15724604df58e",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/9/_children/0",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[No10] }}"
    }
  },
  {
    "component": "Media",
    "id": "c6a9be98dc5ee453e812fd835482ec74e",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Media10] }}"
    }
  },
  {
    "component": "Batch",
    "id": "c1af07a4c35a1431e9740f4052a41af4b",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/9/_children/2",
    "properties": {
      "text": "{{ [c6a00d3908c404b34a776bc29f162c606].[Batch10] }}"
    }
  },
  {
    "component": "Pass",
    "id": "c8e1a68b196d243a4bb59b2b0fd977814",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/9/_children/3",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Pass10] }}"
    }
  },
  {
    "component": "NotPass",
    "id": "cc6ad4cce890e49c7ae790b750b46d244",
    "path": "/_children/0/_children/0/_children/3/_children/5/_children/1/_children/0/_children/0/_children/9/_children/4",
    "properties": {
      "defaultValue": "{{ [c6a00d3908c404b34a776bc29f162c606].[Notpass10] }}"
    }
  },
  {
    "component": "MFG CODE :",
    "id": "c6654411063a945fbabd339b207c83ca4",
    "path": "/_children/0/_children/0/_children/3/_children/6/_children/8",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[MFG_Code_Format] }}"
    }
  },
  {
    "component": "EXP CODE",
    "id": "cb33d975518284c19b3649c65b40c3993",
    "path": "/_children/0/_children/0/_children/3/_children/6/_children/10",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[EXP_Code_Format] }}"
    }
  },
  {
    "component": "Check1",
    "id": "c22038f022f4d4ed6ac777a8207412060",
    "path": "/_children/0/_children/0/_children/3/_children/6/_children/12",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "Check2",
    "id": "c8819084df9fa47938e3e3f50dfd7602e",
    "path": "/_children/0/_children/0/_children/3/_children/6/_children/14",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[check_date2]  }}\n          {{ date [c80186c96f63d49cf9d4523b3f15ea972].[check_date2] \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "c6b35c7afa9e740d1930d15c8933809ac",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c049d86f79ad54819892b81fa2413fdf3] }}"
    }
  },
  {
    "component": "Brik",
    "id": "c4645328cac19487e8b5d595d0602b13a",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "No",
    "id": "cfd7c31d3ef384b3fbb4b29ccfac59453",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[No] }}"
    }
  },
  {
    "component": "Code",
    "id": "c76a17e6bdc7a48f9ac95fd3a694e88fd",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/1",
    "properties": {
      "text": "   {{ [c6b35c7afa9e740d1930d15c8933809ac].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "c822f26af481a495da63ca8507d51f425",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/2",
    "properties": {
      "text": "          {{ [c6b35c7afa9e740d1930d15c8933809ac].[Flavour] }}"
    }
  },
  {
    "component": "Colour",
    "id": "ce7b1f454409b4c368c91d6c09e5ad582",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[Colour] }}"
    }
  },
  {
    "component": "Smell",
    "id": "c1d9f9abc604f40dc9553cc7a6563a587",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[Smell] }}"
    }
  },
  {
    "component": "Apprance",
    "id": "ceedf8880d4d34df4a6abb3815523f9f8",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/5",
    "properties": {
      "defaultValue": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[Appearance] }}"
    }
  },
  {
    "component": "TPC",
    "id": "c78841dbfd2c64ba38bd2b7dfaa2d79c3",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/6",
    "properties": {
      "text": "  {{ [c6b35c7afa9e740d1930d15c8933809ac].[TPC] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "_Qn6qkB4T",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[TPC] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "Y & M",
    "id": "c5e469cadc406484aab4ec8d76f118113",
    "path": "/_children/0/_children/0/_children/3/_children/8/_children/0/_children/0/_children/7",
    "properties": {
      "text": "   {{ [c6b35c7afa9e740d1930d15c8933809ac].[Y_M] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "X8JNhvJxN",
          "action": "update",
          "operator": "equal",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6b35c7afa9e740d1930d15c8933809ac].[Y_M] }}",
          "referenceValue": "P"
        }
      ]
    }
  },
  {
    "component": "submit",
    "id": "c8239c9024e65459c96a303da35cb2972",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/1",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[SubmitBy_Name] }}           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Submit_Time] }}"
    }
  },
  {
    "component": "recieved",
    "id": "cc9d41cb2c64546928c82c8fd383decc0",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/2",
    "properties": {
      "text": "{{#if  [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}\n  {{ [c80186c96f63d49cf9d4523b3f15ea972].[Inspecter_Name] }}         {{ date [c80186c96f63d49cf9d4523b3f15ea972].[inspector_date] \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Recived",
    "id": "c4470f114adcf4d33b9820b18a67b2bdc",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/5",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[Recevie_Name] }}        {{ [c80186c96f63d49cf9d4523b3f15ea972].[Recieved_Time] }}"
    }
  },
  {
    "component": "inspecter",
    "id": "cf418d53c6e0746449878f319a1bc1ee3",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/7",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}\n{{ [c80186c96f63d49cf9d4523b3f15ea972].[Interpretor_Name] }}            {{ date    [c80186c96f63d49cf9d4523b3f15ea972].[interpretor_date]   \"DD/MM/YYYY\" }}\n{{/if}}"
    }
  },
  {
    "component": "qsm supervisor",
    "id": "c232608c3f4ee4742b6e188485bf8b704",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/9",
    "properties": {
      "text": "{{#if [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}\n           {{ [c80186c96f63d49cf9d4523b3f15ea972].[Supervisor_Name] }}      {{ date  [c80186c96f63d49cf9d4523b3f15ea972].[QSM_Sup_date]  \"DD/MM/YYYY\"}}\n{{/if}}"
    }
  },
  {
    "component": "Remark_1",
    "id": "cd35859d43e144b4d8b9e0f3bc447c1b3",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/11",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_remark] }}"
    }
  },
  {
    "component": "Remark_2",
    "id": "cee7ba6f1abc9410d9d41794ce79613cc",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/12",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_2_remark] }}"
    }
  },
  {
    "component": "Remark_3",
    "id": "c17e1097c8efb490d992f3cc6f6c746e9",
    "path": "/_children/0/_children/0/_children/3/_children/9/_children/13",
    "properties": {
      "text": "{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_no] }}.{{ [c80186c96f63d49cf9d4523b3f15ea972].[temp30_3_remark] }}"
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
