# 🖥️ /part3/:microid

บันทึก Internal Quality ผู้ตรวจ และผู้แปลผล

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/part3/:microid`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_9772f672ad644adb8dca1a15814fbc40`
- จำนวน components: 45

## Data / Query dependencies

- [Save_Inspec&Inter](<../database/Query/Save_Inspec&Inter.sql>)
- [Save_Internal](<../database/Query/Save_Internal.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| text | 10 |
| container | 7 |
| button | 5 |
| stringfield | 5 |
| booleanfield | 4 |
| heading | 3 |
| dataprovider | 2 |
| optionsfield | 2 |
| datetimefield | 2 |
| image | 1 |
| divider | 1 |
| form | 1 |
| gridblock | 1 |
| modal | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| No | No |  | ไม่ได้ตั้งค่าใน component |
| Other | Other |  | ไม่ได้ตั้งค่าใน component |
| Batch | Batch |  | ไม่ได้ตั้งค่าใน component |
| Pass | Pass |  | ไม่ได้ตั้งค่าใน component |
| Not Pass | No_pass |  | ไม่ได้ตั้งค่าใน component |
| Positive | Positive |  | ไม่ได้ตั้งค่าใน component |
| Negative | Negative |  | ไม่ได้ตั้งค่าใน component |
| Equipment | Equipment |  | ไม่ได้ตั้งค่าใน component |
| Media | Media |  | ไม่ได้ตั้งค่าใน component |
| Inspector | Coliform_MPN |  | ไม่ได้ตั้งค่าใน component |
| Inspec | Date |  | ไม่ได้ตั้งค่าใน component |
| Interpretor | Ecoli_MPN |  | ไม่ได้ตั้งค่าใน component |
| Inter | Time |  | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

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
    "id": "tWqGA9BzL"
  }
]
```

</details>

### SAVE3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Save_Internal |
| 2 | Refresh Data Provider | componentId= Internal Quality Control |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "No": "{{ [cbde74565213a498a9555832b421af4cf].[No] }}",
        "Media": "{{ [cbde74565213a498a9555832b421af4cf].[Media] }}",
        "Batch": "{{ [cbde74565213a498a9555832b421af4cf].[Batch] }}",
        "Pass": "{{ [cbde74565213a498a9555832b421af4cf].[Pass] }}",
        "No_pass": "{{ [cbde74565213a498a9555832b421af4cf].[No_pass] }}",
        "Positive": "{{ [cbde74565213a498a9555832b421af4cf].[Positive] }}",
        "Negative": "{{ [cbde74565213a498a9555832b421af4cf].[Negative] }}",
        "MicroID": "{{ [state].[SendMicroID] }}",
        "Equipment": "{{ [cbde74565213a498a9555832b421af4cf].[Equipment] }}",
        "Other": "{{ [c96ac84334ad445508a7df5b6b26caaa6].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_01fcd0e1a3434f5c8594001ce9eda00b",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "feiRqXH3Z"
  },
  {
    "parameters": {
      "componentId": "c756d3bd0f7ee4affbcd7a84e8b3087d5"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "aHYr4N5Ys"
  }
]
```

</details>

### Inspector — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=Inspector |
| 2 | Open Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "persist": null,
      "value": "Inspector"
    },
    "##eventHandlerType": "Update State",
    "id": "VDsdwMURg"
  },
  {
    "parameters": {
      "id": "c036a8c98a01e4effa2d428d610c22d02"
    },
    "##eventHandlerType": "Open Modal",
    "id": "YxCHtpnNJ"
  }
]
```

</details>

### Save — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Save_Inspec&Inter |
| 2 | Close Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "MicroID": "{{ [state].[SendMicroID] }}",
        "Type": "INSPECTOR",
        "Employee": "{{ [ce43f48e26ff74079854187891b8de8fb].[value] }}",
        "Date": "{{ [c612e8fcc8dc34d8b96d6e1e8bef457f9].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_b4b57abd86554b38aca5a52852edb303",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "leKAoT5lY"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "wp6LODevp"
  }
]
```

</details>

### Save — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Execute Query | queryId=Save_Inspec&Inter |
| 2 | Close Modal |  |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "MicroID": "{{ [state].[SendMicroID] }}",
        "Type": "INTERPRETOR",
        "Employee": "{{ [cc8bd50f5a2374a3ab986f6c026c7d276].[value] }}",
        "Date": "{{ [c9741112e36e44ecd9e238ab2340669d6].[value] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "notificationOverride": null,
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_b4b57abd86554b38aca5a52852edb303",
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "IanDIJrxw"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "SfeAFZ7kw"
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
    "component": "Micro",
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
    "component": "Control",
    "dataSource": {
      "label": "Internal_Quality",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Internal_Quality",
      "type": "table",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Internal_Quality"
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
                "presence": {
                  "allowEmpty": false
                },
                "type": "string",
                "length": {}
              },
              "externalType": "nvarchar",
              "operator": "equal",
              "noValue": false,
              "value": "{{ [url].[microid] }}"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "New Form",
    "dataSource": {
      "label": "Internal_Quality",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Internal_Quality",
      "type": "table",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__Internal_Quality"
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
