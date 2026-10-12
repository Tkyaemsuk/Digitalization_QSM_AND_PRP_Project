# Screen: /high-acid/quanity-control/add

จัดการ QC media/batch ของหลาย sampling: อ่าน Quanity Table, เพิ่มด้วย Quanity_Control_Added, ลบราย id ด้วย Remove_Qc Table และตั้ง Pass ทั้งชุดด้วย Qunity_pass. การตั้ง Pass ไม่ reset Notpass; Document เก็บ state send และเปิด modal.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_6a3c59a47cc345c49ec72e19c2c49629`
- Route: `/high-acid/quanity-control/add`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 21

## Query dependencies

- [Quanity Table](<../database/Query/Quanity Table.sql>)
- [Quanity_Control_Added](<../database/Query/Quanity_Control_Added.sql>)
- [Qunity_pass](<../database/Query/Qunity_pass.sql>)
- [Remove_Qc Table](<../database/Query/Remove_Qc Table.sql>)

## Components

| Type | Count |
|---|---|
| button | 4 |
| container | 3 |
| stringfield | 3 |
| gridblock | 2 |
| optionsfield | 2 |
| booleanfield | 2 |
| dataprovider | 1 |
| form | 1 |
| heading | 1 |
| divider | 1 |
| modal | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| No | No | No | ไม่ได้กำหนด |
| Equipment | Equipment | Equipment | ไม่ได้กำหนด |
| Media | Media | Media | ไม่ได้กำหนด |
| OTHER | OTHER | OTHER | ไม่ได้กำหนด |
| Batch | Batch | Batch | ไม่ได้กำหนด |
| Pass | Pass | Pass | ไม่ได้กำหนด |
| NotPass | NotPass | NotPass | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### c2627199a202349dfa650140ce5bd1c0a — onClick

Config path: `/_children/1/_children/0/_children/2/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Remove_Qc Table |
| 2 | Refresh Data Provider | componentId=Quanlilty Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "id": "{{ [cf1bd8edfcf8e48ba84abc846446de1c7].[id] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e868e9263e6d49b58406b07f41795f77",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "U-K3ssFxj"
  },
  {
    "parameters": {
      "componentId": "cf1bd8edfcf8e48ba84abc846446de1c7"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "nBB-L-aWA"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/1/_children/0/_children/10`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Quanity_Control_Added |
| 2 | Refresh Data Provider | componentId=Quanlilty Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "SampID": "{{ [state].[Samplings_highacid_batch] }}",
        "media": "{{ [c8eeab823bd7d4030aec9af5555613234].[value] }}{{ [ccf51333686cf4a088f185741f15089d2].[value] }}{{ [c9fcb3143dfe6494fba53a653f1b066bb].[value] }}",
        "batch": "{{ [ce2eca9e2c04e47f78bd8a39a36c85536].[Batch] }}",
        "pass": "{{ [ce2eca9e2c04e47f78bd8a39a36c85536].[Pass] }}",
        "notpass": "{{ [ce2eca9e2c04e47f78bd8a39a36c85536].[NotPass] }}",
        "no": "{{ [ce2eca9e2c04e47f78bd8a39a36c85536].[No] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_dec1b117c33e4a63af4e995d7549db23",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "AESp_JDzr"
  },
  {
    "parameters": {
      "componentId": "cf1bd8edfcf8e48ba84abc846446de1c7"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "lrq9x9G-k"
  }
]
```

</details>

### Document — onClick

Config path: `/_children/1/_children/0/_children/11`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=send; type=set; value={{ [state].[Samplings_highacid_batch] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "send",
      "type": "set",
      "value": "{{ [state].[Samplings_highacid_batch] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "NEZWqYmQa"
  },
  {
    "parameters": {
      "id": "c2295fb64b2cf4dbe91febb6aba342a11"
    },
    "##eventHandlerType": "Open Modal",
    "id": "JQaZ52ZoO"
  }
]
```

</details>

### Pass — onClick

Config path: `/_children/2/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Qunity_pass |
| 2 | Refresh Data Provider | componentId=New Table |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "samplings": "{{ [state].[Samplings_highacid_batch] }}",
        "Pass": "true"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d446973d6a704925b3c5bc2ca5f01256",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "Hltu1W-1W"
  },
  {
    "parameters": {
      "componentId": "c5414d5db15b14b93b83c11742aaff778"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "3Ss1A9EBK"
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
    "component": "Sampling High",
    "path": "/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
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
              "constraints": {
                "presence": false
              },
              "externalType": "nvarchar",
              "operator": "oneOf",
              "noValue": false,
              "value": "{{ [state].[Samplings_highacid_batch] }}"
            }
          ]
        }
      ]
    },
    "limit": null
  },
  {
    "component": "Qualilty_Control_Forms",
    "path": "/_children/1",
    "dataSource": {
      "label": "Quanity_Control_Sampling_highacid",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Quanity_Control_Sampling_highacid",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Quanity_Control_Sampling_highacid"
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
    "component": "Sampling High",
    "id": "c64247461e82146a788ae6a1620570c52",
    "path": "/_children/0",
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
                "constraints": {
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "oneOf",
                "noValue": false,
                "value": "{{ [state].[Samplings_highacid_batch] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Qualilty_Control_Forms",
    "id": "ce2eca9e2c04e47f78bd8a39a36c85536",
    "path": "/_children/1",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Quanlilty Table",
    "id": "cf1bd8edfcf8e48ba84abc846446de1c7",
    "path": "/_children/1/_children/0/_children/2",
    "properties": {
      "table": {
        "label": "Quanity Table",
        "name": "Quanity Table",
        "transformer": "return data",
        "schema": {},
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "samplings",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n    qc.*,\n    m.machine\nFROM Quanity_Control_Sampling_highacid qc\nLEFT JOIN [Sampling high] sph\n    ON qc.SampID = sph.SamplingIDH\nLEFT JOIN machine m\n    ON sph.machine = m.machine\n\t\t\nWHERE sph.SamplingIDH IN ('{{ samplings }}', ',')"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f7af0df2a76d4cdda61cd474dae73478",
        "nullDefaultSupport": true,
        "createdAt": "2026-07-31T00:38:43.382Z",
        "updatedAt": "2026-07-31T00:40:51.733Z",
        "_rev": "3-27a183588d107be746aa299fdea99969",
        "type": "query",
        "queryParams": {
          "samplings": "{{ [state].[Samplings_highacid_batch] }}"
        }
      },
      "columns": [
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "SampID",
          "field": "SampID",
          "active": true,
          "width": 150
        },
        {
          "label": "No",
          "field": "No",
          "active": true,
          "width": 80
        },
        {
          "label": "Media",
          "field": "Media",
          "active": true,
          "width": 150
        },
        {
          "label": "Batch",
          "field": "Batch",
          "active": true,
          "width": 150
        },
        {
          "label": "Pass",
          "field": "Pass",
          "active": true,
          "width": 80
        },
        {
          "label": "NotPass",
          "field": "NotPass",
          "active": true,
          "width": 90
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": true,
          "width": 100,
          "format": ""
        }
      ],
      "buttons": [
        {
          "_id": "c5776571ef77d466695da1891fdfd8eb6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c2627199a202349dfa650140ce5bd1c0a",
          "text": "Delete",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cf1bd8edfcf8e48ba84abc846446de1c7",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "id": "{{ [cf1bd8edfcf8e48ba84abc846446de1c7].[id] }}"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e868e9263e6d49b58406b07f41795f77",
                "confirm": null,
                "notificationOverride": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "U-K3ssFxj"
            },
            {
              "parameters": {
                "componentId": "cf1bd8edfcf8e48ba84abc846446de1c7"
              },
              "##eventHandlerType": "Refresh Data Provider",
              "id": "nBB-L-aWA"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Equipment",
    "id": "c8eeab823bd7d4030aec9af5555613234",
    "path": "/_children/1/_children/0/_children/4",
    "properties": {
      "customOptions": [
        {
          "id": "q4Zo_vaZr",
          "label": "Plate",
          "value": "Plate"
        },
        {
          "id": "1aorQp6lQ",
          "label": "Pipette 2 ml.",
          "value": "Pipette 2 ml."
        },
        {
          "id": "4D0wrfazEP",
          "label": "Pipette 5 ml.",
          "value": "Pipette 5 ml."
        },
        {
          "id": "b21pB2n2b",
          "label": "Pipette 10 ml.",
          "value": "Pipette 10 ml."
        },
        {
          "id": "o7AcjZx_pc",
          "label": "Tube",
          "value": "Tube"
        },
        {
          "id": "hQClqGG-P",
          "label": "Bottle",
          "value": "Bottle"
        },
        {
          "id": "m0Zj_6OWJ",
          "label": "Dilution 9 ml",
          "value": "Dilution 9 ml"
        },
        {
          "id": "A5Ej41zXv",
          "label": "Dilution 10 ml",
          "value": "Dilution 10 ml"
        },
        {
          "id": "KJKrZSEF_",
          "label": "Dilution 100 ml",
          "value": "Dilution 100 ml"
        },
        {
          "id": "vwqP5Nzr6",
          "label": "Dilution 450 ml",
          "value": "Dilution 450 ml"
        }
      ]
    }
  },
  {
    "component": "Media",
    "id": "ccf51333686cf4a088f185741f15089d2",
    "path": "/_children/1/_children/0/_children/5",
    "properties": {
      "customOptions": [
        {
          "id": "HCSIqfh6H",
          "label": "PCA",
          "value": "PCA"
        },
        {
          "id": "gJXOtBJOSs",
          "label": "PDA",
          "value": "PDA"
        },
        {
          "id": "0eRnFvRgI",
          "label": "GCPA",
          "value": "GCPA"
        },
        {
          "id": "kJ8B-1uUR",
          "label": "VRB",
          "value": "VRB"
        },
        {
          "id": "iWEB0QbFw",
          "label": "EMB",
          "value": "EMB"
        },
        {
          "id": "amk4DTzME",
          "label": "Lactose broth",
          "value": "Lactose broth"
        },
        {
          "id": "CNZkNVqFA",
          "label": "MYP",
          "value": "MYP"
        },
        {
          "id": "u0MTlnpld",
          "label": "BP",
          "value": "BP"
        },
        {
          "id": "MEg7qSg6B",
          "label": "OSA",
          "value": "OSA"
        }
      ]
    }
  },
  {
    "component": "OTHER",
    "id": "c9fcb3143dfe6494fba53a653f1b066bb",
    "path": "/_children/1/_children/0/_children/6",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "New Table",
    "id": "c5414d5db15b14b93b83c11742aaff778",
    "path": "/_children/2/_children/0/_children/0",
    "properties": {
      "table": {
        "label": "Quanity_Control_Sampling_highacid",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Quanity_Control_Sampling_highacid",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Quanity_Control_Sampling_highacid"
      },
      "columns": [
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "SampID",
          "field": "SampID",
          "active": true,
          "width": 130
        },
        {
          "label": "No",
          "field": "No",
          "active": true,
          "width": 80
        },
        {
          "label": "Media",
          "field": "Media",
          "active": true,
          "width": 100
        },
        {
          "label": "Batch",
          "field": "Batch",
          "active": true,
          "width": 100
        },
        {
          "label": "Pass",
          "field": "Pass",
          "active": true,
          "width": 80
        },
        {
          "label": "NotPass",
          "field": "NotPass",
          "active": true,
          "width": 90
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
                  "presence": {
                    "allowEmpty": false
                  },
                  "type": "string",
                  "length": {}
                },
                "externalType": "nvarchar",
                "operator": "oneOf",
                "noValue": false,
                "value": "{{ [state].[Samplings_highacid_batch] }}"
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
