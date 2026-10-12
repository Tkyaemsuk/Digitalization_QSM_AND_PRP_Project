# 🖥️ /create-rawmilk-microid

สร้าง MicroID สำหรับตัวอย่างน้ำนมดิบ

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/create-rawmilk-microid`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_b1e6787f242a489dba8820e3744d306e`
- จำนวน components: 37

## Data / Query dependencies

- [Create_Raw_Milk](<../database/Query/Create_Raw_Milk.sql>)
- [Rawmilk_Create_2](<../database/Query/Rawmilk_Create_2.sql>)
- [samplingDate](<../database/Query/samplingDate.sql>)
- [SelectionRawMilk](<../database/Query/SelectionRawMilk.sql>)
- [SumTable](<../database/Query/SumTable.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 8 |
| button | 8 |
| container | 6 |
| optionsfield | 5 |
| dataprovider | 2 |
| heading | 2 |
| image | 1 |
| form | 1 |
| datetimefield | 1 |
| gridblock | 1 |
| buttongroup | 1 |
| divider | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Date Picker | Plan |  | ไม่ได้ตั้งค่าใน component |
| Sampling | SamplingID |  | ไม่ได้ตั้งค่าใน component |
| Tank |  | Tank | ไม่ได้ตั้งค่าใน component |
| Suplier |  |  | ไม่ได้ตั้งค่าใน component |
| Truck |  |  | ไม่ได้ตั้งค่าใน component |
| Remark |  |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### Date Picker — `onChange`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=samplingDate |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "samplingDate": "{{ [eventContext].[value] }}",
        "Date": "{{ [eventContext].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_d33f2cfaffd049cfbc8793554f643c22",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "1MU7c7wTH"
  }
]
```

</details>

### New Button — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Rawmilk_Create_2 |
| 2 | Refresh Data Provider | componentId=Micro Table |
| 3 | Navigate To | url=/micro-table; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Date": "{{ [c3f0a494f21884514b2b55c07f128747d].[value] }}",
        "Remark": "{{ [c040edaafba3d45d99fa22b2b171f16de].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_33f09923ea1d4c938984c00ec880ae53",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "U4u7LRubF"
  },
  {
    "parameters": {
      "componentId": "ce660ec29d74845d1828c2a84b97c330a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "ekec35QGj"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-table"
    },
    "##eventHandlerType": "Navigate To",
    "id": "hDqmzHrQo"
  }
]
```

</details>

### c570336d506064492b030c2e667236be1 — `onClick`

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
      "rowId": "{{ [ce660ec29d74845d1828c2a84b97c330a].[id] }}"
    },
    "##eventHandlerType": "Delete Row",
    "id": "zj2neYVNd"
  },
  {
    "parameters": {
      "componentId": "ce660ec29d74845d1828c2a84b97c330a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "DNJQuD6l-"
  }
]
```

</details>

### Save — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Create_Raw_Milk |
| 2 | Refresh Data Provider | componentId=Micro Table |
| 3 | Clear Form | componentId=New Form |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Item": "{{ [c21e9c81cbdf1471c84f8c388e6c8f8bd].[value] }}",
        "Selection": "{{ [c02db77df8519482592a8bc459f0f9836].[value] }}",
        "Sample": "{{ [cbba63f5bec0f43bb905e57a316335053].[value] }}",
        "Department": "{{ [cbfab3b6de43243bf8ca222788b613210].[value] }}",
        "Batch": "{{ [ce6ab50b434354a66a346a00128474bb0].[value] }}",
        "Section": "{{ [c02db77df8519482592a8bc459f0f9836].[value] }}",
        "Date": "{{ [c3f0a494f21884514b2b55c07f128747d].[value] }}",
        "Time": "{{ [c256ee3f49c574fbea714d54a4532d2ef].[value] }}",
        "SampID": "{{ [c16f5df77e16946908a4f9577751609c1].[rows].0.SamplingID }}",
        "MicroID": "{{ [c7f6c37626deb4885a90d2ee0e47bf265].[rows].0.SamplingID }}",
        "Amount": "{{ [cbaaee578b84740bba959adea1e61d33c].[Tank] }}",
        "SamplingIDs": "{{ [cbaaee578b84740bba959adea1e61d33c].[SamplingID] }}",
        "SamplingID": "{{ [c47174ebac0bd47e3a4aad05069727f2f].[value] }}",
        "remark": "{{ [cc1637db0b3b341db94fd88a0ac3a2615].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a37a32b344554d799047abea0ab1c5e2",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "r-8Ws4dd2"
  },
  {
    "parameters": {
      "componentId": "ce660ec29d74845d1828c2a84b97c330a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "ByZqR-1nV"
  },
  {
    "parameters": {
      "componentId": "cbaaee578b84740bba959adea1e61d33c"
    },
    "##eventHandlerType": "Clear Form",
    "id": "OrRnC0pWO"
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

## Data provider configuration

ชื่อหรือ SQL สำเนาใน data provider อาจเก่ากว่า query document ปัจจุบัน. ถ้า `embeddedSqlDiffersFromCurrentQuery=true` ให้ตรวจการ resolve query ID ใน runtime ก่อนแก้ไข; เอกสาร SQL ใช้ query document ปัจจุบันเป็นหลัก.

<details><summary>เปิดดู data source และ query parameter mapping</summary>

```json
[
  {
    "component": "Suplier",
    "dataSource": {
      "label": "SelectionRawMilk",
      "name": "SelectionRawMilk",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_ddfda2a366784feaba9fd355d5e86dc7",
      "type": "query",
      "queryParams": {
        "Date": "{{ [c3f0a494f21884514b2b55c07f128747d].[value] }}",
        "Supplier": "{{ [cb67c991a6be746ccbe08bb9405bdb282].[value] }}",
        "TruckNo": "{{ [ccd9084c1db1d4009a2c78d4ee493d7af].[value] }}"
      },
      "currentQueryName": "SelectionRawMilk",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "Pullrawmilk",
    "dataSource": {
      "label": "samplingDate",
      "name": "samplingDate",
      "_id": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_d33f2cfaffd049cfbc8793554f643c22",
      "type": "query",
      "queryParams": {
        "Date": "{{ [c3f0a494f21884514b2b55c07f128747d].[value] }}"
      },
      "currentQueryName": "samplingDate",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "queryParams": null,
    "filter": null
  },
  {
    "component": "New Form",
    "dataSource": {
      "label": "Sampling RawMilk",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Sampling%20RawMilk",
      "type": "table",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Sampling%20RawMilk"
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
