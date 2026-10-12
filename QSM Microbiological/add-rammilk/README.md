# 🖥️ /add-rammilk

เพิ่ม raw milk sampling ให้ชุดงาน

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/add-rammilk`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_b264074d09a8476bace659703a48ad50`
- จำนวน components: 30

## Data / Query dependencies

- [Create_Raw_Milk](<../database/Query/Create_Raw_Milk.sql>)
- [Pull_sum_MicroID](<../database/Query/Pull_sum_MicroID.sql>)
- [samplingDate](<../database/Query/samplingDate.sql>)
- [SelectionRawMilk](<../database/Query/SelectionRawMilk.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 8 |
| container | 6 |
| optionsfield | 5 |
| dataprovider | 2 |
| heading | 2 |
| button | 2 |
| image | 1 |
| form | 1 |
| datetimefield | 1 |
| gridblock | 1 |
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
    "id": "jMuRfp_Ed"
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
        "Batch": "{{ [c887500af2cb7473b87ac63cbb92187fe].[value] }}",
        "Section": "{{ [c02db77df8519482592a8bc459f0f9836].[value] }}",
        "Date": "{{ [cbc11a03076294b5a84e06e5397076381].[value] }}",
        "Time": "{{ [c256ee3f49c574fbea714d54a4532d2ef].[value] }}",
        "SampID": "{{ [c16f5df77e16946908a4f9577751609c1].[rows].0.SamplingID }}",
        "MicroID": "{{ [state].[SendMicroID] }}",
        "Amount": "{{ [c5c12c7bc1e2e4f9ca24571fca7033c1b].[Tank] }}",
        "SamplingIDs": "{{ [c5c12c7bc1e2e4f9ca24571fca7033c1b].[SamplingID] }}",
        "SamplingID": "{{ [cdb91f610e08e47fe9cd72cdd2e4c19c3].[value] }}",
        "remark": "{{ [ca8f4fb5e307840b38222b04255fe5dde].[value] }}"
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
      "componentId": "ce35ba2b0f2f54153ac0540ee037c7b16"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "ByZqR-1nV"
  },
  {
    "parameters": {
      "componentId": "c5c12c7bc1e2e4f9ca24571fca7033c1b"
    },
    "##eventHandlerType": "Clear Form",
    "id": "OrRnC0pWO"
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
        "Date": "{{ [cbc11a03076294b5a84e06e5397076381].[value] }}",
        "Supplier": "{{ [c1c5e94b840bf4b129bab9eb52adad34e].[value] }}",
        "TruckNo": "{{ [cd1c653ac61c04516bcac890cf90d1aa1].[value] }}"
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
        "Date": "{{ [cbc11a03076294b5a84e06e5397076381].[value] }}"
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
