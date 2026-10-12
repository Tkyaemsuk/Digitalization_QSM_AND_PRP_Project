# 🖥️ /create-inprocess

สร้างรายการตัวอย่างระหว่างกระบวนการ

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/create-inprocess`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_c05e1374724640e8aba7be8455f42565`
- จำนวน components: 51

## Data / Query dependencies

- [Create_Inprocess](<../database/Query/Create_Inprocess.sql>)
- [Genarate_Inprocess](<../database/Query/Genarate_Inprocess.sql>)
- [Sampling_Create_2](<../database/Query/Sampling_Create_2.sql>)
- [Selection_Inprocess](<../database/Query/Selection_Inprocess.sql>)
- [SumTable](<../database/Query/SumTable.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| button | 12 |
| text | 10 |
| container | 6 |
| stringfield | 5 |
| optionsfield | 4 |
| buttongroup | 3 |
| dataprovider | 2 |
| heading | 2 |
| datetimefield | 2 |
| gridblock | 2 |
| image | 1 |
| form | 1 |
| divider | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Type Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Name Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Machine |  |  | ไม่ได้ตั้งค่าใน component |
| New Date Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Date Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Batch / Lot no. |  |  | ไม่ได้ตั้งค่าใน component |
| Department Option |  |  | ไม่ได้ตั้งค่าใน component |
| RemarkInprocess |  |  | ไม่ได้ตั้งค่าใน component |
| Reprocess |  |  | ไม่ได้ตั้งค่าใน component |
| Other |  |  | ไม่ได้ตั้งค่าใน component |
| ReprocessMachine |  |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### Send1 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_inps; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Vaildate_inps] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Vaildate_inps] }} |
| 4 | Execute Query | queryId=Sampling_Create_2 |
| 5 | Navigate To | url=/micro-table; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_inps",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst inp = [\n  {name: 'Department', value: $(\"[c42b11c6b80a149438620ef2ba80f1329].[value]\")}\n];\n\nfor(const i of inp) {\n  if(!i.value) {\n    return \"Please input \" + i.name + \"!\";\n  }\n}\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "Ewrm5JzNx"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_inps] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "t5Og5hMw4"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Vaildate_inps] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "S2Fa-W6sp"
  },
  {
    "parameters": {
      "queryParams": {
        "DataType": "Inprocess",
        "Department": "{{ [c42b11c6b80a149438620ef2ba80f1329].[value] }}",
        "Page": "{{ [state].[Choose] }}",
        "Remark": "{{ [c02d1cb676a0942c480f1d36dc24a3898].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a1d610ddd2f74991a1b6be72402a6d7f",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "BgzB4QdaQ"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-table"
    },
    "##eventHandlerType": "Navigate To",
    "id": "sqYiwkRZK"
  }
]
```

</details>

### c6c18e24d9e3c492384ce2f30607326a1 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Delete Row |  |
| 2 | Refresh Data Provider | componentId=Sum Table |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "confirm": null,
      "notificationOverride": null,
      "rowId": "{{ [cf2b4d66cd4324858bde206436e2bf95f].[id] }}",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro%20Sampling"
    },
    "##eventHandlerType": "Delete Row",
    "id": "vVHbLsN_R"
  },
  {
    "parameters": {
      "componentId": "cf2b4d66cd4324858bde206436e2bf95f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "RKnXUOsmf"
  }
]
```

</details>

### c6c18e24d9e3c492384ce2f30607326a1 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Delete Row |  |
| 2 | Refresh Data Provider | componentId=Micro |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "confirm": null,
      "notificationOverride": null,
      "rowId": "{{ [c22601d012d7b48669a9be08c1686bde4].[id] }}",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro%20Sampling"
    },
    "##eventHandlerType": "Delete Row",
    "id": "vVHbLsN_R"
  },
  {
    "parameters": {
      "componentId": "c22601d012d7b48669a9be08c1686bde4"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "RKnXUOsmf"
  }
]
```

</details>

### Save1 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_inps2; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Vaildate_inps2] }} |
| 3 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaildate_inps2] }} |
| 4 | Execute Query | queryId=Create_Inprocess |
| 5 | Update Field Value | field=Reprocess; componentId=New Form; type=set |
| 6 | Update Field Value | field=Other; componentId=New Form; type=set |
| 7 | Update Field Value | field=ReprocessMachine; componentId=New Form; type=set; value= |
| 8 | Refresh Data Provider | componentId=Sampling |
| 9 | Refresh Data Provider | componentId=Sum Table |
| 10 | Refresh Data Provider | componentId=Micro |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_inps2",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst inp = [\n  {name: 'Batch', value: $(\"[cf88048612fad4433abf474526597aa36].[value]\")}\n];\n\nfor(const i of inp) {\n  if(!i.value) {\n    return \"Please input \" + i.name + \"!\";\n  }\n}\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "bhzE9V8zR"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_inps2] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "rTNwd8zA8"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "stop",
      "operator": "notEqual",
      "value": "{{ [state].[Vaildate_inps2] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "fK-JmZZp2"
  },
  {
    "parameters": {
      "queryParams": {
        "Item": "{{ [c9f4c01ff18f94b0db3199302ee801dbc].[value] }}",
        "Selection": "{{ [cba3b4756a7f5435a8872246261f34ca0].[value] }}",
        "Sample": "{{ [c7589c4bec16f415dbf4bb5b902fb9e18].[value] }}",
        "Department": "{{ [c42b11c6b80a149438620ef2ba80f1329].[value] }}",
        "Batch": "{{ [c9f57cc93d50a4b6b84c1276a8cf3d1b5].[Batch / Lot no].[] }}",
        "Section": "{{ [cba3b4756a7f5435a8872246261f34ca0].[value] }}",
        "Date": "{{ [c6b87c4035cc3403196e16499890dc903].[value] }}",
        "Time": "{{ [c1813c417868e4fb59ba5a1e5ca1c3ef9].[value] }}",
        "SampID": "{{ [c1a154a1158164375b44cb4e19d123ec4].[rows].0.SamplingID }}",
        "MicroID": "{{ [c858bd5b57b4b4bbeaddd615f1b96a023].[rows].0.SamplingID }}",
        "Type": "{{#if [cef9c10b9b8d94a3cb858eaa9ca383a44].[value] }}{{ [cef9c10b9b8d94a3cb858eaa9ca383a44].[value] }}{{else}}{{[c9f4c01ff18f94b0db3199302ee801dbc].[value] }}{{/if}}",
        "Name": "{{ [cba3b4756a7f5435a8872246261f34ca0].[value] }}",
        "Tank": "{{#if [cb6b2dc40898649baaf3c7632f2cf9583].[value]}}{{[c54ec89988f464d3abb371cfa77948be6].[value]}}{{#if (eq [ce4ea0fcf40c044c0b2f974b21b4882fc].[value] \"Other\")}}{{[cb6b2dc40898649baaf3c7632f2cf9583].[value]}}{{else}}{{[ce4ea0fcf40c044c0b2f974b21b4882fc].[value]}} / {{[cb6b2dc40898649baaf3c7632f2cf9583].[value]}}{{/if}}{{else if [c54ec89988f464d3abb371cfa77948be6].[value]}}{{[c54ec89988f464d3abb371cfa77948be6].[value]}}{{else}}{{[ce4ea0fcf40c044c0b2f974b21b4882fc].[value]}}{{/if}}",
        "Page": "{{ [state].[Choose] }}",
        "Machine": ""
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_c81d2d5c4b2642378112ee63ec7ef278",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "r-8Ws4dd2"
  },
  {
    "parameters": {
      "field": "Reprocess",
      "type": "set",
      "componentId": "c9f57cc93d50a4b6b84c1276a8cf3d1b5"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "PeksdTnJq"
  },
  {
    "parameters": {
      "field": "Other",
      "type": "set",
      "componentId": "c9f57cc93d50a4b6b84c1276a8cf3d1b5"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "nMly-l5Aw"
  },
  {
    "parameters": {
      "field": "ReprocessMachine",
      "type": "set",
      "componentId": "c9f57cc93d50a4b6b84c1276a8cf3d1b5",
      "value": ""
    },
    "##eventHandlerType": "Update Field Value",
    "id": "f1uNGBJqB"
  },
  {
    "parameters": {
      "componentId": "cfd937473216044b8a3aae29f08230d24"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "bLLQfWZ4T"
  },
  {
    "parameters": {
      "componentId": "cf2b4d66cd4324858bde206436e2bf95f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "gLkX8CAKZ"
  },
  {
    "parameters": {
      "componentId": "c22601d012d7b48669a9be08c1686bde4"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "3G57MRf04"
  }
]
```

</details>

### ca7bcadc6bb1b4c6fa17d7ba64372388d — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=1 |
| 2 | Refresh Data Provider | componentId=Sum Table |
| 3 | Clear Form | componentId=New Form |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "1",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "k8KsGh3ZM"
  },
  {
    "parameters": {
      "componentId": "cf2b4d66cd4324858bde206436e2bf95f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "RnjExErvn"
  },
  {
    "parameters": {
      "componentId": "c9f57cc93d50a4b6b84c1276a8cf3d1b5"
    },
    "##eventHandlerType": "Clear Form",
    "id": "oJJVwIpOa"
  }
]
```

</details>

### c3b3661221fbc45a79a7058adbd62bac5 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=2 |
| 2 | Refresh Data Provider | componentId=Sum Table |
| 3 | Clear Form | componentId=New Form |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "2",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "J3Sy4nQDs"
  },
  {
    "parameters": {
      "componentId": "cf2b4d66cd4324858bde206436e2bf95f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "RSoRDisdc"
  },
  {
    "parameters": {
      "componentId": "c9f57cc93d50a4b6b84c1276a8cf3d1b5"
    },
    "##eventHandlerType": "Clear Form",
    "id": "2-a5Myw6r"
  }
]
```

</details>

### c6fc7fb0c014d4a8f957cd1fa0f3e7361 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/menu; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/menu"
    },
    "##eventHandlerType": "Navigate To",
    "id": "FO75InftM"
  }
]
```

</details>

### c2731e7a96fe144ca87203eacd7d58614 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/create-rawmilk-microid; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/create-rawmilk-microid"
    },
    "##eventHandlerType": "Navigate To",
    "id": "bZNpTj1UK"
  }
]
```

</details>

### c61ca9a9f261948e48a847a4ee1eaf570 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/create-microid; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/create-microid"
    },
    "##eventHandlerType": "Navigate To",
    "id": "UEI96GnfQ"
  }
]
```

</details>

### c6fc7fb0c014d4a8f957cd1fa0f3e7361 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/menu; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/menu"
    },
    "##eventHandlerType": "Navigate To",
    "id": "FO75InftM"
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
    "component": "Sampling",
    "dataSource": {
      "label": "Genarate_Inprocess",
      "name": "Genarate_Inprocess",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_fb06ae31362b4cfd886c4cdd38baa2be",
      "type": "query",
      "queryParams": {
        "Department": "{{ [c42b11c6b80a149438620ef2ba80f1329].[value] }}",
        "Type": "{{ [c9f4c01ff18f94b0db3199302ee801dbc].[value] }}",
        "Date": "{{ [c6b87c4035cc3403196e16499890dc903].[value] }}",
        "Name": "{{ [cba3b4756a7f5435a8872246261f34ca0].[value] }}"
      },
      "currentQueryName": "Genarate_Inprocess",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Inprocess",
    "dataSource": {
      "label": "Selection_Inprocess",
      "name": "Selection_Inprocess",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_1748888cc8b4490abf2ca73a02010a7c",
      "type": "query",
      "queryParams": {
        "Department": "{{ [c42b11c6b80a149438620ef2ba80f1329].[value] }}",
        "Type": "{{ [c9f4c01ff18f94b0db3199302ee801dbc].[value] }}",
        "Name": "{{ [cba3b4756a7f5435a8872246261f34ca0].[value] }}"
      },
      "currentQueryName": "Selection_Inprocess",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "New Form",
    "dataSource": {
      "name": "Custom",
      "label": "Custom"
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
