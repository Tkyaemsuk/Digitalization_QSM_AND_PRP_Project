# 🖥️ /micro-table

ตารางเลือก MicroID และจัดการรายการ

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/micro-table`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_7840999229ee46e88d988ea878608408`
- จำนวน components: 32

## Data / Query dependencies

- [Delect_Micro&Sampling](<../database/Query/Delect_Micro&Sampling.sql>)
- [MicroID_Table](<../database/Query/MicroID_Table.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| button | 15 |
| container | 4 |
| gridblock | 4 |
| heading | 2 |
| text | 2 |
| image | 1 |
| divider | 1 |
| datetimefield | 1 |
| modal | 1 |
| optionsfield | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Date picker |  |  | ไม่ได้ตั้งค่าใน component |
| Department Options |  |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### cacd25cf55c184bee9e7f8591ec54648f — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }} |
| 2 | Navigate To | url=/micro-daily; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "XB-MLr3ss"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-daily"
    },
    "##eventHandlerType": "Navigate To",
    "id": "PbIpUgPch"
  }
]
```

</details>

### cbe88bc73c92a43a4ab41743b5dac490f — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }} |
| 2 | Navigate To | url=/part3/:microid; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "orqUj-UVh"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/part3/:microid",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "eS4QfBuDp"
  }
]
```

</details>

### c5a99557a8b9043adbba72e8fc4afb4b6 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }} |
| 2 | Navigate To | url=/result-of-micro; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "7TsQ8OVTL"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/result-of-micro",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "ghSPNdMFA"
  }
]
```

</details>

### c4bad4c6577c940ab8e422a85cc01a0d3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/report/{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report/{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "yvE3Z2A7V"
  }
]
```

</details>

### cd685f829cc2444e5b994454435667c90 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Continue if / Stop if | type=continue; operator=equal; referenceValue=QSM; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[Department] }} |
| 2 | Continue if / Stop if | type=stop; operator=equal; referenceValue=Pending; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[Stu] }} |
| 3 | Continue if / Stop if | type=stop; operator=equal; referenceValue=Success; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[Stu] }} |
| 4 | Update State | key=SendMicroID; type=set; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }} |
| 5 | Navigate To | url=/add-rammilk; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "referenceValue": "QSM",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[Department] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "hageL0DwN"
  },
  {
    "parameters": {
      "referenceValue": "Pending",
      "type": "stop",
      "operator": "equal",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[Stu] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "9wWlDIZ2n"
  },
  {
    "parameters": {
      "referenceValue": "Success",
      "type": "stop",
      "operator": "equal",
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[Stu] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "5f6GsI41m"
  },
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "persist": null,
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "yaJMeVyP5"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "peek": null,
      "url": "/add-rammilk"
    },
    "##eventHandlerType": "Navigate To",
    "id": "uVRCy8fqg"
  }
]
```

</details>

### c49d0e5db00a7490fad3dbd861f4665bf — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }} |
| 2 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "persist": null,
      "value": "{{ [c00fe40cc2d7843e783e357bd21eecdc7].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "lyn_6mnr9"
  },
  {
    "parameters": {
      "id": "cf488b9548d094f0ab550f80b6c6cdd3b"
    },
    "##eventHandlerType": "Open Modal",
    "id": "uDec1KD92"
  }
]
```

</details>

### cacd25cf55c184bee9e7f8591ec54648f — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [cad6e94b95c6541ee9c0e4a791f955e42].[MicroID] }} |
| 2 | Navigate To | url=/micro-daily; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [cad6e94b95c6541ee9c0e4a791f955e42].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "XB-MLr3ss"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-daily"
    },
    "##eventHandlerType": "Navigate To",
    "id": "PbIpUgPch"
  }
]
```

</details>

### c4bad4c6577c940ab8e422a85cc01a0d3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/report/{{ [cad6e94b95c6541ee9c0e4a791f955e42].[MicroID] }}; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report/{{ [cad6e94b95c6541ee9c0e4a791f955e42].[MicroID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "yvE3Z2A7V"
  }
]
```

</details>

### cacd25cf55c184bee9e7f8591ec54648f — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [c5280c4940159464f8a72d90dd8c690b3].[MicroID] }} |
| 2 | Navigate To | url=/micro-daily; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [c5280c4940159464f8a72d90dd8c690b3].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "XB-MLr3ss"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-daily"
    },
    "##eventHandlerType": "Navigate To",
    "id": "PbIpUgPch"
  }
]
```

</details>

### c4bad4c6577c940ab8e422a85cc01a0d3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/report/{{ [c5280c4940159464f8a72d90dd8c690b3].[MicroID] }}; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report/{{ [c5280c4940159464f8a72d90dd8c690b3].[MicroID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "yvE3Z2A7V"
  }
]
```

</details>

### cacd25cf55c184bee9e7f8591ec54648f — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=SendMicroID; type=set; value={{ [cfc0e15fa93094a039d3763471bec51ea].[MicroID] }} |
| 2 | Navigate To | url=/micro-daily; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "SendMicroID",
      "type": "set",
      "value": "{{ [cfc0e15fa93094a039d3763471bec51ea].[MicroID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "XB-MLr3ss"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-daily"
    },
    "##eventHandlerType": "Navigate To",
    "id": "PbIpUgPch"
  }
]
```

</details>

### c4bad4c6577c940ab8e422a85cc01a0d3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/report/{{ [cfc0e15fa93094a039d3763471bec51ea].[MicroID] }}; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report/{{ [cfc0e15fa93094a039d3763471bec51ea].[MicroID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "yvE3Z2A7V"
  }
]
```

</details>

### Back — `onClick`

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
    "id": "_86tCWG6s"
  }
]
```

</details>

### Date picker — `onChange`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=MicroDate; type=set; value={{ [eventContext].[value] }} |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "MicroDate",
      "type": "set",
      "value": "{{ [eventContext].[value] }}",
      "persist": true
    },
    "##eventHandlerType": "Update State",
    "id": "2szj5SCa5"
  }
]
```

</details>

### Cancel — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Close Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "ktUp7nydE"
  }
]
```

</details>

### New Button — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Delect_Micro&Sampling |
| 2 | Refresh Data Provider | componentId=QA |
| 3 | Close Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "MicroID": "{{ [state].[SendMicroID] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a7092314881d4138a9b92bc244e0cbc2"
    },
    "##eventHandlerType": "Execute Query",
    "id": "gOVIwa3V5"
  },
  {
    "parameters": {
      "componentId": "c00fe40cc2d7843e783e357bd21eecdc7"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "XzY2Dz3HT"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "gKynGkYvP"
  }
]
```

</details>

## Data provider configuration

ชื่อหรือ SQL สำเนาใน data provider อาจเก่ากว่า query document ปัจจุบัน. ถ้า `embeddedSqlDiffersFromCurrentQuery=true` ให้ตรวจการ resolve query ID ใน runtime ก่อนแก้ไข; เอกสาร SQL ใช้ query document ปัจจุบันเป็นหลัก.

<details><summary>เปิดดู data source และ query parameter mapping</summary>

```json
[]
```

</details>

## หมายเหตุส่งต่องาน

- Metadata นี้มาจาก latest edited app; ไม่ยืนยันว่า published app เป็น revision เดียวกัน.
- Access=PUBLIC เป็นค่าที่ตั้งใน screen; ต้องอ่านเงื่อนไข action/state เพิ่มเพื่อเข้าใจข้อจำกัดที่ UI ใช้.
- ไม่ได้ execute query หรือบันทึกข้อมูลธุรกิจระหว่างจัดเอกสาร.
