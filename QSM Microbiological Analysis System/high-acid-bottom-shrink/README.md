# Screen: /high-acid/bottom-shrink

ตรวจ High Acid แบบหลาย sampling: TPC Pass, Y&M Pass และ Physical เขียนผลทุก Brik ของรายการที่เลือก. Modal Send Report แยกลง inspector และ interpretor ด้วย Update_Physical_highacid/Update_Microbe_highacid. มีเลือก sampling เพิ่มผ่าน CheckList Sampling; provider ที่แสดงกล่องให้ดู configuration ด้านล่าง.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_560b35587d004a3d83ed14f8e14792b8`
- Route: `/high-acid/bottom-shrink`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 39

## Query dependencies

- [CheckList Sampling](<../database/Query/CheckList Sampling.sql>)
- [Update_Microbe_highacid](<../database/Query/Update_Microbe_highacid.sql>)
- [Update_Physical_highacid](<../database/Query/Update_Physical_highacid.sql>)
- [Update_Physicial_BottomPass_Brik](<../database/Query/Update_Physicial_BottomPass_Brik.sql>)
- [Update_TPC_BottomPass_Brik](<../database/Query/Update_TPC_BottomPass_Brik.sql>)
- [Update_Y&m_BottomPass_Brik](<../database/Query/Update_Y&m_BottomPass_Brik.sql>)

## Components

| Type | Count |
|---|---|
| button | 11 |
| container | 8 |
| modal | 4 |
| heading | 3 |
| divider | 3 |
| form | 2 |
| stringfield | 2 |
| datetimefield | 2 |
| gridblock | 2 |
| dataprovider | 1 |
| optionsfield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| ExployeeID | inspector_by | inspector employeeID | ไม่ได้กำหนด |
| Date Picker | inspector_date |  | ไม่ได้กำหนด |
| ExployeeID | interpretor_by | inspector employeeID | ไม่ได้กำหนด |
| Date Picker | interpretor_date |  | ไม่ได้กำหนด |
| Samplings Options |  |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### TPC Pass — onClick

Config path: `/_children/0/_children/0/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_TPC_BottomPass_Brik |
| 2 | Refresh Data Provider | componentId=New Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "samplings": "{{ [state].[Samplings_highacid] }}",
        "code": "1",
        "tpc": "N",
        "ym": ""
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_47a1044abe72444089fe55229ca4b0b4",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "rKKxfqo2g"
  },
  {
    "parameters": {
      "componentId": "c0e335417a6e9428bacb621eb5ba2fc8d"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "r0Sd1S563"
  }
]
```

</details>

### Y&M Pass — onClick

Config path: `/_children/0/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Y&m_BottomPass_Brik |
| 2 | Refresh Data Provider | componentId=New Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "samplings": "{{ [state].[Samplings_highacid] }}",
        "code": "1",
        "tpc": "N",
        "ym": "N"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8c1d57a6703446a4823ab4bb8ab73b53",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "rKKxfqo2g"
  },
  {
    "parameters": {
      "componentId": "c0e335417a6e9428bacb621eb5ba2fc8d"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "r0Sd1S563"
  }
]
```

</details>

### Physical — onClick

Config path: `/_children/0/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Physicial_BottomPass_Brik |
| 2 | Refresh Data Provider | componentId=New Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "samplings": "{{ [state].[Samplings_highacid] }}",
        "code": "2",
        "colour": "true",
        "smell": "true",
        "aprance": "true"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_75fa09ee3f2f4d0192fa781c2b3d8811",
      "notificationOverride": false,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "rKKxfqo2g"
  },
  {
    "parameters": {
      "componentId": "c0e335417a6e9428bacb621eb5ba2fc8d"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "r0Sd1S563"
  }
]
```

</details>

### Send Report — onClick

Config path: `/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |
| 2 | Update State | key=Spcheck_highacid; type=set; value={{ [state].[Samplings_highacid] }} |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c58812549011d44d09214ff2794b48558"
    },
    "##eventHandlerType": "Open Modal",
    "id": "_LRST1jeu"
  },
  {
    "parameters": {
      "key": "Spcheck_highacid",
      "type": "set",
      "value": "{{ [state].[Samplings_highacid] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "9GBeKdL4u"
  }
]
```

</details>

### Choose Sampling — onClick

Config path: `/_children/0/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cdef862f9c7134ec9a1f7ebd8eb50f546"
    },
    "##eventHandlerType": "Open Modal",
    "id": "6VVC5AzKz"
  }
]
```

</details>

### Physical Report — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Close Modal |  |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "9bwjQ8JkG"
  },
  {
    "parameters": {
      "id": "c9c31b8232e0346c6b524feab6403a2eb"
    },
    "##eventHandlerType": "Open Modal",
    "id": "6VVC5AzKz"
  }
]
```

</details>

### Microbe Report — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Close Modal |  |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "D-NMGcQTF"
  },
  {
    "parameters": {
      "id": "cbdc9d9f976494a2f87aaff252c988be6"
    },
    "##eventHandlerType": "Open Modal",
    "id": "GNUUcfZVj"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/1/_children/1/_children/0/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=inspector_date; componentId=Physicial Forms; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "inspector_date",
      "type": "set",
      "componentId": "cb717e50628344cd99404dee315943fac",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/1/_children/1/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Physical_highacid |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [cb717e50628344cd99404dee315943fac].[inspector_by] }}",
        "inspect_date": "{{ [cb717e50628344cd99404dee315943fac].[inspector_date] }}",
        "SampID": "{{ [state].[Samplings_highacid] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_322e64adf23648d1b62eba5c9105a56b",
      "notificationOverride": false,
      "confirm": false
    },
    "##eventHandlerType": "Execute Query",
    "id": "VcUzsN1i0"
  }
]
```

</details>

### Date Check — onClick

Config path: `/_children/0/_children/1/_children/2/_children/0/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=interpretor_date; componentId=Microbe Forms; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "interpretor_date",
      "type": "set",
      "componentId": "c2eccc0441ab745419a28e2c7e9fe8dfe",
      "value": "\n[JavaScript binding]\nreturn new Date().toISOString();\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "eyG44fFHi"
  }
]
```

</details>

### Save Check — onClick

Config path: `/_children/0/_children/1/_children/2/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Microbe_highacid |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "inspect": "{{ [c2eccc0441ab745419a28e2c7e9fe8dfe].[interpretor_by] }}",
        "inspect_date": "{{ [c2eccc0441ab745419a28e2c7e9fe8dfe].[interpretor_date] }}",
        "SampID": "{{ [state].[Samplings_highacid] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3edef2f1a7814e49bee5aceadf8e88b9",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "L84LhmkPl"
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
    "component": "Physicial Forms",
    "path": "/_children/0/_children/1/_children/1/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "Microbe Forms",
    "path": "/_children/0/_children/1/_children/2/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "Sampling_HighAcid",
    "path": "/_children/0/_children/1/_children/3/_children/0/_children/0",
    "dataSource": {
      "label": "CheckList Sampling",
      "name": "CheckList Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3a40ea9291744f6d8b2dd122fb9483a7",
      "type": "query",
      "queryParams": {
        "samplings": ""
      },
      "currentQueryName": "CheckList Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": {
      "logicalOperator": "all",
      "onEmptyFilter": "none",
      "groups": [
        {
          "logicalOperator": "any",
          "filters": [
            {
              "valueType": "Binding",
              "field": "SamplingIDH",
              "type": "string",
              "operator": "oneOf",
              "noValue": false,
              "value": "{{ [state].[Samplings_highacid] }}"
            }
          ]
        }
      ]
    },
    "limit": 6
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
    "component": "Container",
    "id": "c36c7c4a6649a4942becb579b37889dae",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "RQHl1onKM",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Physical",
    "id": "c5273cab61aa84afdaae32f88c3f0c928",
    "path": "/_children/0/_children/0/_children/2",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Send Report",
    "id": "c2679e75d3af34865a3c37987ee206226",
    "path": "/_children/0/_children/0/_children/3",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Choose Sampling",
    "id": "c5f6ade7ba0f1491081d7ac71b79dd486",
    "path": "/_children/0/_children/0/_children/4",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Physical Report",
    "id": "cd3e3b1cb6ba8497a845f2d2c02d4f0c0",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/2",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Microbe Report",
    "id": "cfa8352b6e9314e578d53a7e0901396ed",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/3",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Sampling_HighAcid",
    "id": "cb1b2ff8fd985482d805eb730e7a9e118",
    "path": "/_children/0/_children/1/_children/3/_children/0/_children/0",
    "properties": {
      "filter": {
        "logicalOperator": "all",
        "onEmptyFilter": "none",
        "groups": [
          {
            "logicalOperator": "any",
            "filters": [
              {
                "valueType": "Binding",
                "field": "SamplingIDH",
                "type": "string",
                "operator": "oneOf",
                "noValue": false,
                "value": "{{ [state].[Samplings_highacid] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Samplings Options",
    "id": "cced090602b4b4889bead443f027616ad",
    "path": "/_children/0/_children/1/_children/3/_children/0/_children/1",
    "properties": {
      "validation": [],
      "dataProvider": "{{ literal [cb1b2ff8fd985482d805eb730e7a9e118] }}",
      "onChange": []
    }
  },
  {
    "component": "Table HighAcid",
    "id": "c955cbdbfe55d4e288632685722cae093",
    "path": "/_children/0/_children/1/_children/3/_children/0/_children/2",
    "properties": {
      "table": {
        "label": "temperature_30high",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30high",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30high"
      },
      "columns": [
        {
          "label": "status",
          "field": "status",
          "active": true,
          "width": 130
        },
        {
          "label": "Code",
          "field": "Code",
          "active": true,
          "width": 120
        },
        {
          "label": "TPC",
          "field": "TPC",
          "active": true,
          "width": 120
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 120
        },
        {
          "label": "Y_M",
          "field": "Y_M",
          "active": true,
          "width": 120
        },
        {
          "label": "Colour",
          "field": "Colour",
          "active": true,
          "width": 100
        },
        {
          "label": "Smell",
          "field": "Smell",
          "active": true,
          "width": 100
        },
        {
          "label": "Appearance",
          "field": "Appearance",
          "active": true,
          "width": 130
        },
        {
          "label": "Remark",
          "field": "Remark",
          "active": true,
          "width": 130
        },
        {
          "label": "SampID",
          "field": "SampID",
          "active": false
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "No",
          "field": "No",
          "active": true,
          "width": 80
        }
      ],
      "initialFilter": {
        "logicalOperator": "all",
        "onEmptyFilter": "none",
        "groups": [
          {
            "logicalOperator": "any",
            "filters": [
              {
                "valueType": "Binding",
                "field": "SampID",
                "type": "string",
                "constraints": {
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "oneOf",
                "noValue": false,
                "value": "{{ [cced090602b4b4889bead443f027616ad].[value] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "New Table",
    "id": "c0e335417a6e9428bacb621eb5ba2fc8d",
    "path": "/_children/0/_children/2",
    "properties": {
      "table": {
        "label": "temperature_30high",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30high",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30high"
      },
      "columns": [
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": true,
          "width": 130
        },
        {
          "label": "Code",
          "field": "Code",
          "active": false,
          "width": 130,
          "format": "\n[JavaScript binding]\nreturn $(\"[c0e335417a6e9428bacb621eb5ba2fc8d].[Code]\")\n  ? $(\"[c0e335417a6e9428bacb621eb5ba2fc8d].[Code]\").slice(11, 16)\n  : \"\";\n[/JavaScript binding]\n"
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 130
        },
        {
          "label": "TPC",
          "field": "TPC",
          "active": true,
          "width": 80
        },
        {
          "label": "Y_M",
          "field": "Y_M",
          "active": true,
          "width": 80
        },
        {
          "label": "Colour",
          "field": "Colour",
          "active": true,
          "width": 130
        },
        {
          "label": "Smell",
          "field": "Smell",
          "active": true,
          "width": 130
        },
        {
          "label": "Appearance",
          "field": "Appearance",
          "active": true,
          "width": 130
        },
        {
          "label": "Remark",
          "field": "Remark",
          "active": true,
          "width": 130
        },
        {
          "label": "SampID",
          "field": "SampID",
          "active": false
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "No",
          "field": "No",
          "active": true,
          "width": 80
        },
        {
          "label": "Product",
          "field": "Product",
          "active": false
        },
        {
          "label": "sampling_ref_id",
          "field": "sampling_ref_id",
          "active": false
        }
      ],
      "initialFilter": {
        "logicalOperator": "all",
        "onEmptyFilter": "none",
        "groups": [
          {
            "logicalOperator": "any",
            "filters": [
              {
                "valueType": "Binding",
                "field": "SampID",
                "type": "string",
                "constraints": {
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "oneOf",
                "noValue": false,
                "value": "{{ [state].[Samplings_highacid] }}"
              }
            ]
          }
        ]
      }
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
