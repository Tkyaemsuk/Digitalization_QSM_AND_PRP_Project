# 🖥️ /create-microid

สร้างตัวอย่างทั่วไป/PlanSwab และ MicroID

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/create-microid`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_a63dff837bf84d429cdf2b78dc69e9ef`
- จำนวน components: 78

## Data / Query dependencies

- [Create Sampling](<../database/Query/Create Sampling.sql>)
- [Department_Options](<../database/Query/Department_Options.sql>)
- [Genarate_MicroID](<../database/Query/Genarate_MicroID.sql>)
- [Genarate_Sampling](<../database/Query/Genarate_Sampling.sql>)
- [Get_All_Type_Machine_Option](<../database/Query/Get_All_Type_Machine_Option.sql>)
- [Item_Options](<../database/Query/Item_Options.sql>)
- [Sampling_Create_2](<../database/Query/Sampling_Create_2.sql>)
- [Selection_Options](<../database/Query/Selection_Options.sql>)
- [Simple_Options](<../database/Query/Simple_Options.sql>)
- [SumTable](<../database/Query/SumTable.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 23 |
| stringfield | 11 |
| button | 10 |
| container | 9 |
| dataprovider | 7 |
| optionsfield | 6 |
| heading | 2 |
| datetimefield | 2 |
| gridblock | 2 |
| buttongroup | 2 |
| image | 1 |
| form | 1 |
| booleanfield | 1 |
| divider | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Department Option |  |  | ไม่ได้ตั้งค่าใน component |
| Sample Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Section Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Item Picker |  |  | ไม่ได้ตั้งค่าใน component |
| All Checkbox |  |  | ไม่ได้ตั้งค่าใน component |
| other_Sample | other_Sample |  | ไม่ได้ตั้งค่าใน component |
| Type Options Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Machine |  |  | ไม่ได้ตั้งค่าใน component |
| Point3 |  |  | ไม่ได้ตั้งค่าใน component |
| Point4 |  |  | ไม่ได้ตั้งค่าใน component |
| Point12 |  |  | ไม่ได้ตั้งค่าใน component |
| Point11 |  |  | ไม่ได้ตั้งค่าใน component |
| Point10 |  |  | ไม่ได้ตั้งค่าใน component |
| Point5 |  |  | ไม่ได้ตั้งค่าใน component |
| New Date Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Date Picker |  |  | ไม่ได้ตั้งค่าใน component |
| Batch / Lot no. |  |  | ไม่ได้ตั้งค่าใน component |
| Remark |  |  | ไม่ได้ตั้งค่าใน component |
| Product |  |  | ไม่ได้ตั้งค่าใน component |
| Flavour |  |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### All Checkbox — `onChange`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=true |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "true"
    },
    "##eventHandlerType": "Update State",
    "id": "Huo9yltKV"
  }
]
```

</details>

### New Button — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_inps; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Vaildate_inps] }} |
| 3 | Show Notification | type=warning; message={{ [state].[Vaildate_inps] }} |
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
      "value": "\n[JavaScript binding]\nconst inp = [\n  {name: 'Department', value: $(\"[c75515349ab8746c28b48e620da71cfdc].[value]\")}\n];\n\nfor(const i of inp) {\n  if(!i.value) {\n    return \"Please input \" + i.name + \"!\";\n  }\n}\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "DvB5PTbYL"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Vaildate_inps] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "LROPpUlqi"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_inps] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "RF37anALj"
  },
  {
    "parameters": {
      "queryParams": {
        "Remark": "{{ [cde0d88f488bb4ec3b43dd5fec52b8758].[value] }}",
        "DataType": "PlanSwab",
        "Department": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "Page": "1",
        "Product": "{{ [c48b90bb21c5a492e8c7991a0bb4c27d7].[value] }}",
        "Flavour": "{{ [ce4f6b11ed286499d8ab38761f3aa94fb].[value] }}"
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

### c4f4e7a03e8cd4e4fb4ed7e16b6bab416 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Delete Row |  |
| 2 | Refresh Data Provider | componentId=UHT3 Table |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "confirm": null,
      "notificationOverride": null,
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro%20Sampling",
      "rowId": "{{ [cbbc750bb0b194788bd6bc6a53368d1c4].[id] }}"
    },
    "##eventHandlerType": "Delete Row",
    "id": "Z75dxjZrS"
  },
  {
    "parameters": {
      "componentId": "cbbc750bb0b194788bd6bc6a53368d1c4"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "EF2CMX2iy"
  }
]
```

</details>

### c4f4e7a03e8cd4e4fb4ed7e16b6bab416 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Delete Row |  |
| 2 | Refresh Data Provider | componentId=Micro Table |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "confirm": null,
      "notificationOverride": null,
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Micro%20Sampling",
      "rowId": "{{ [c79414c16e9344a9e899d840d79cb1276].[id] }}"
    },
    "##eventHandlerType": "Delete Row",
    "id": "Z75dxjZrS"
  },
  {
    "parameters": {
      "componentId": "c79414c16e9344a9e899d840d79cb1276"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "EF2CMX2iy"
  }
]
```

</details>

### Save — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_inps; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Vaildate_inps] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Vaildate_inps] }} |
| 4 | Execute Query | queryId=Create Sampling |
| 5 | Update Field Value | field=other_Sample; componentId=New Form; type=set; value= |
| 6 | Refresh Data Provider | componentId=UHT3 Table |
| 7 | Refresh Data Provider | componentId=Micro Table |
| 8 | Refresh Data Provider | componentId=SamplingID |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_inps",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst inp = [\n  {name: 'Batch', value: $(\"[c0a0054445a96459d933e4df425945509].[value]\")}\n];\n\nfor(const i of inp) {\n  if(!i.value) {\n    return \"Please input \" + i.name + \"!\";\n  }\n}\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "I44hJd_WI"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_inps] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "n-XJaqATg"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Vaildate_inps] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "SBCYLbzPi"
  },
  {
    "parameters": {
      "queryParams": {
        "Item": "{{ [ca08df974fc954eb58a01fe6d7d6ed45d].[value] }}",
        "Selection": "{{ [cf503f96b055344adb71f5d05afd8a832].[value] }}",
        "Sample": "{{#if [c5987d18c92934b5f873e69fc8aa40880].[value]}}{{[c5987d18c92934b5f873e69fc8aa40880].[value]}}{{else}}{{[cf5c855a47ccc438bb29a2d744ecc5167].[value]}}{{/if}}",
        "Department": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "Batch": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Batch / Lot no].[] }}",
        "Section": "{{ [cf503f96b055344adb71f5d05afd8a832].[value] }}",
        "Date": "{{ [c16229ed487974aeea8565816ab873356].[value] }}",
        "Time": "{{ [c6c0190de80e0443fb8f2d5b7f3644bda].[value] }}",
        "SampID": "{{ [cae2eafdf064c42fbb826c47cc11a8ead].[rows].0.SamplingID }}",
        "MicroID": "{{ [c80f63fc07a5241ae9037d573d889ed2e].[rows].0.SamplingID }}",
        "Type": "{{ [c452f0ebbcf9f4864af01ed259e39168b].[value] }}",
        "Machine": "{{ [cf7d78190eaa94333aa7bd4064e0cf0d8].[value] }}",
        "State": "{{ [ced17d31950ce482fb89c1a6d7eb6c22c].[value] }}",
        "SidelTank3Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point3] }}",
        "SidelTank4Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point4] }}",
        "SidelTank5Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point5] }}",
        "SidelTank10Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point10] }}",
        "SidelTank11Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point11] }}",
        "SidelTank12Extra": "{{ [c9b91679ef7bc4bb694fe25e8777d674d].[Point12] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7dddba6194fa45ba91cb1b19852ded20",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "r-8Ws4dd2"
  },
  {
    "parameters": {
      "field": "other_Sample",
      "type": "set",
      "componentId": "c9b91679ef7bc4bb694fe25e8777d674d",
      "value": ""
    },
    "##eventHandlerType": "Update Field Value",
    "id": "GcmbR_EBF"
  },
  {
    "parameters": {
      "componentId": "cbbc750bb0b194788bd6bc6a53368d1c4"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "bLLQfWZ4T"
  },
  {
    "parameters": {
      "componentId": "c79414c16e9344a9e899d840d79cb1276"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "lemRDm-ak"
  },
  {
    "parameters": {
      "componentId": "cae2eafdf064c42fbb826c47cc11a8ead"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "gLkX8CAKZ"
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

### c8c0408510d924253a93641a75d730a07 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/create-inprocess; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/create-inprocess"
    },
    "##eventHandlerType": "Navigate To",
    "id": "6-NzSuA0f"
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
    "component": "Type",
    "dataSource": {
      "label": "Machine Options",
      "name": "Machine Options",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_38f78a836a0d43ddb1cf2ee89eb47551",
      "type": "query",
      "queryParams": {},
      "currentQueryName": "Get_All_Type_Machine_Option",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Department",
    "dataSource": {
      "label": "Department_Options",
      "name": "Department_Options",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_1209148b17c54b5c8beea43558b95115",
      "type": "query",
      "queryParams": {},
      "currentQueryName": "Department_Options",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Item",
    "dataSource": {
      "label": "Item_Options",
      "name": "Item_Options",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_f9ae2eb5147a40918d250b6a66ce50f9",
      "type": "query",
      "queryParams": {
        "Department": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}"
      },
      "currentQueryName": "Item_Options",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Selection",
    "dataSource": {
      "label": "Selection_Options",
      "name": "Selection_Options",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7e617ef0c9a34e04abe87bc78dab780b",
      "type": "query",
      "queryParams": {
        "Department": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "Item": "{{ [ca08df974fc954eb58a01fe6d7d6ed45d].[value] }}"
      },
      "currentQueryName": "Selection_Options",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Simple",
    "dataSource": {
      "label": "Simple_Options",
      "name": "Simple_Options",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_c11e4d0d641d447082eff69160bce679",
      "type": "query",
      "queryParams": {
        "Department": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "Item": "{{ [ca08df974fc954eb58a01fe6d7d6ed45d].[value] }}",
        "Section": "{{ [cf503f96b055344adb71f5d05afd8a832].[value] }}"
      },
      "currentQueryName": "Simple_Options",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "SamplingID",
    "dataSource": {
      "label": "Genarate_Sampling",
      "name": "Genarate_Sampling",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_bdfda38f9bab47f99dd8e628d4124513",
      "type": "query",
      "queryParams": {
        "dep": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "machine": "{{ [cf503f96b055344adb71f5d05afd8a832].[value] }}",
        "Date": "{{ [c16229ed487974aeea8565816ab873356].[value] }}",
        "item": "{{ [ca08df974fc954eb58a01fe6d7d6ed45d].[value] }}"
      },
      "currentQueryName": "Genarate_Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "MicroID",
    "dataSource": {
      "label": "Genarate_MicroID",
      "name": "Genarate_MicroID",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_367eb22c82754f78905ef0df7485f56a",
      "type": "query",
      "queryParams": {
        "dep": "{{ [c75515349ab8746c28b48e620da71cfdc].[value] }}",
        "selection": "{{ [cf503f96b055344adb71f5d05afd8a832].[value] }}",
        "Date": "{{ [c16229ed487974aeea8565816ab873356].[value] }}",
        "item": "{{ [ca08df974fc954eb58a01fe6d7d6ed45d].[value] }}"
      },
      "currentQueryName": "Genarate_MicroID",
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
