# Screen: /in-out-csv/:sampid

หน้า export/import ข้อมูล30/55. Import button เปิด modal แล้วส่ง JSON เข้า UPDATE_IMPORT หรือ UPDATE_IMPORT55 ตามชุด. CSV component ทั้งสองฝั่งมี onImport อ้าง UpdateTemp30 ใน config จึงต้องทบทวนก่อนใช้งานฝั่ง55; SQL import เองจับคู่ sampID+no จาก JSON ไม่ได้บังคับ route sampid.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_10386762e833448d92cf835549f4502f`
- Route: `/in-out-csv/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 21

## Query dependencies

- [UPDATE_IMPORT](<../database/Query/UPDATE_IMPORT.sql>)
- [UPDATE_IMPORT55](<../database/Query/UPDATE_IMPORT55.sql>)
- [UpdateTemp30](<../database/Query/UpdateTemp30.sql>)

## Components

| Type | Count |
|---|---|
| button | 8 |
| container | 4 |
| gridblock | 2 |
| modal | 2 |
| heading | 2 |
| csv-import | 2 |
| optionsfield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| Temperature |  | Please Select Temperature | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Import Button — onClick

Config path: `/_children/0/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cd6fb9e839e434071a921d40d2992baa0"
    },
    "##eventHandlerType": "Open Modal",
    "id": "fHbDunMyM"
  }
]
```

</details>

### Back Button — onClick

Config path: `/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/sampling-tables; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tables"
    },
    "##eventHandlerType": "Navigate To",
    "id": "6olmG9ONh"
  }
]
```

</details>

### Import55 Button — onClick

Config path: `/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cf0c403c3032b4b76bcdb0e43e166814f"
    },
    "##eventHandlerType": "Open Modal",
    "id": "fHbDunMyM"
  }
]
```

</details>

### Export Button — onClick

Config path: `/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Export Data | type=csv |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "rows": "{{ literal [c9ded20f7500d491e8e3713439002d6f1].[selectedRows] }}",
      "type": "csv",
      "delimiter": ",",
      "tableComponentId": "c9ded20f7500d491e8e3713439002d6f1",
      "columns": [
        {
          "id": "nsW7ewRsF",
          "name": "sampID",
          "displayName": "sampID"
        },
        {
          "id": "vfPltbOmN",
          "name": "no",
          "displayName": "no"
        },
        {
          "id": "Gb9AIVQik",
          "name": "pH",
          "displayName": "pH"
        },
        {
          "id": "RZ24SzPN9",
          "name": "NewpH30",
          "displayName": "NewpH30"
        },
        {
          "id": "kcSfGsg9_",
          "name": "atp",
          "displayName": "atp"
        },
        {
          "id": "UW9kyIjiJ",
          "name": "NewATP30",
          "displayName": "NewATP30"
        }
      ],
      "customHeaders": {
        "NewATP30": "NewATP30",
        "atp": "atp",
        "NewpH30": "NewpH30",
        "pH": "pH",
        "no": "no",
        "sampID": "sampID"
      }
    },
    "##eventHandlerType": "Export Data",
    "id": "6uhCsyvAk"
  }
]
```

</details>

### Back Button — onClick

Config path: `/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/sampling-tables; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tables"
    },
    "##eventHandlerType": "Navigate To",
    "id": "6olmG9ONh"
  }
]
```

</details>

### Export55 Button — onClick

Config path: `/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Export Data | type=csv |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "rows": "{{ literal [c511ca8e7cd5242cdb4303b7d8c5eb873].[selectedRows] }}",
      "type": "csv",
      "delimiter": ",",
      "tableComponentId": "c511ca8e7cd5242cdb4303b7d8c5eb873",
      "columns": [
        {
          "id": "KfdpnUgXX",
          "name": "sampID",
          "displayName": "sampID"
        },
        {
          "id": "BjXOJIylEi",
          "name": "no",
          "displayName": "no"
        },
        {
          "id": "ezHLTL-X2",
          "name": "ph",
          "displayName": "ph"
        },
        {
          "id": "aj8TQ_Q44",
          "name": "NewpH55",
          "displayName": "NewpH55"
        },
        {
          "id": "uU2ARlaJK",
          "name": "atp",
          "displayName": "atp"
        },
        {
          "id": "LsTr3wakS",
          "name": "NewATP55",
          "displayName": "NewATP55"
        }
      ],
      "customHeaders": {
        "NewATP55": "NewATP55",
        "atp": "atp",
        "NewpH55": "NewpH55",
        "ph": "ph",
        "no": "no",
        "sampID": "sampID"
      }
    },
    "##eventHandlerType": "Export Data",
    "id": "6uhCsyvAk"
  }
]
```

</details>

### New CSV Import — onImport

Config path: `/_children/1/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp30 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f"
    },
    "##eventHandlerType": "Execute Query",
    "id": "SA2ybL0Qq"
  }
]
```

</details>

### IMPORT BUTTON — onClick

Config path: `/_children/1/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UPDATE_IMPORT |
| 2 | Refresh Data Provider | componentId=Product_30 Tables |
| 3 | Show Notification | type=success; message=Update Sampling Successfully! |
| 4 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "data": "{{ [c52384d87aa2d43dfbbde41425b5c326a].[data] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_487feda73adb45319ad456b7af59684e",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "4RHGfCYv_"
  },
  {
    "parameters": {
      "componentId": "c9ded20f7500d491e8e3713439002d6f1"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "KZ_xHg-7n"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Update Sampling Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "6V0KkMlEx"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "BdlbeUZLO"
  }
]
```

</details>

### New CSV Import — onImport

Config path: `/_children/2/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp30 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f"
    },
    "##eventHandlerType": "Execute Query",
    "id": "SA2ybL0Qq"
  }
]
```

</details>

### IMPORT BUTTON — onClick

Config path: `/_children/2/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UPDATE_IMPORT55 |
| 2 | Refresh Data Provider | componentId=Product_55 Tables |
| 3 | Show Notification | type=success; message=Update Sampling Successfully! |
| 4 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "data": "{{ [c33656474dda54845a3b271051f83b144].[data] }}",
        "sampID": "{{ [c33656474dda54845a3b271051f83b144].[data] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2781257b4d244ec8a3bb96370cc22424",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "4RHGfCYv_"
  },
  {
    "parameters": {
      "componentId": "c511ca8e7cd5242cdb4303b7d8c5eb873"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "KZ_xHg-7n"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Update Sampling Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "VS97no7aW"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "BdlbeUZLO"
  }
]
```

</details>

## Data providers

Canonical query source อยู่ใน database/Query. สำเนา SQL ภายใน provider อาจเก่ากว่า query document; `embeddedSqlDiffersFromCurrentQuery` ระบุจุดที่ต้องตรวจ runtime resolution. Table providers ใช้ table ID โดยตรงและไม่มี query file.

<details><summary>Data source, filters, parameters</summary>

```json
[]
```

</details>

## Component bindings / conditions

รวมค่าที่คำนวณ state, JavaScript, visibility และ validation; ไม่รวม style/assets.

<details><summary>เปิดรายละเอียด bindings ของแต่ละ component</summary>

```json
[
  {
    "component": "Container",
    "id": "c7b242dbf380b4230b20e50efbd9f1b42",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "g_eKik6DL",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Import Button",
    "id": "c02389a0388c347bb9cf77a388d6aa920",
    "path": "/_children/0/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "inry08Edj",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Back Button",
    "id": "cfadd9a05b18c40ebb88a89ce57b74d7c",
    "path": "/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "inry08Edj",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Import55 Button",
    "id": "ccd4571a3605b4680bb1ff3dfc4844355",
    "path": "/_children/0/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "inry08Edj",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "Export Button",
    "id": "c2b7101d88e674d57b60b54bb100d8e72",
    "path": "/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "uy5COmJSG",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Back Button",
    "id": "caa6adbbfb90a4874b1658c898352c209",
    "path": "/_children/0/_children/4",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "inry08Edj",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "Export55 Button",
    "id": "c333400a4986a4dcba3d4d1fe337b663a",
    "path": "/_children/0/_children/5",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "uy5COmJSG",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "Temperature",
    "id": "cb8f27e4d7e0b435ba163b6009d4370b9",
    "path": "/_children/0/_children/6",
    "properties": {
      "customOptions": [
        {
          "id": "OD1RTSJlS",
          "label": "30°C",
          "value": "30"
        },
        {
          "id": "UZYDuV3UAj",
          "label": "55°C",
          "value": "55"
        }
      ]
    }
  },
  {
    "component": "Product_30 Tables",
    "id": "c9ded20f7500d491e8e3713439002d6f1",
    "path": "/_children/0/_children/7",
    "properties": {
      "table": {
        "label": "temperature_30",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30"
      },
      "columns": [
        {
          "label": "no",
          "field": "no",
          "active": true,
          "width": 80
        },
        {
          "label": "code",
          "field": "code",
          "active": true,
          "width": 140,
          "format": "\n[JavaScript binding]\nconst date = new Date($(\"[c9ded20f7500d491e8e3713439002d6f1].[code]\"));\n\nconst pad = n => String(n).padStart(2, \"0\");\n\nconst formatted =\n  `${pad(date.getUTCDate())}/${pad(date.getUTCMonth() + 1)}/${date.getUTCFullYear()} ` +\n  `${pad(date.getUTCHours())}:${pad(date.getUTCMinutes())}:${pad(date.getUTCSeconds())}`;\n\nreturn formatted;\n[/JavaScript binding]\n"
        },
        {
          "label": "pH",
          "field": "pH",
          "active": true,
          "width": 100
        },
        {
          "label": "ATP",
          "field": "atp",
          "active": true,
          "width": 100
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "group",
          "field": "group",
          "active": false
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false
        },
        {
          "label": "remark",
          "field": "remark",
          "active": false
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false
        },
        {
          "label": "temp_type",
          "field": "temp_type",
          "active": false
        },
        {
          "label": "id_no",
          "field": "id_no",
          "active": false
        },
        {
          "label": "Machine1",
          "field": "Machine1",
          "active": false
        },
        {
          "label": "sampID",
          "field": "sampID",
          "active": true
        },
        {
          "label": "NewpH",
          "field": "NewpH",
          "active": false
        },
        {
          "label": "NewATP",
          "field": "NewATP",
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
                "field": "sampID",
                "type": "string",
                "constraints": {
                  "presence": {
                    "allowEmpty": false
                  }
                },
                "externalType": "nvarchar",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [url].[sampid] }}"
              }
            ]
          }
        ]
      },
      "_conditions": [
        {
          "valueType": "string",
          "id": "DLTU8zM4l",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Product_55 Tables",
    "id": "c511ca8e7cd5242cdb4303b7d8c5eb873",
    "path": "/_children/0/_children/8",
    "properties": {
      "table": {
        "label": "temperature_55",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55"
      },
      "columns": [
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "no",
          "field": "no",
          "active": true,
          "width": 80
        },
        {
          "label": "code",
          "field": "code",
          "active": true,
          "format": "\n[JavaScript binding]\nconst date = new Date($(\"[c511ca8e7cd5242cdb4303b7d8c5eb873].[code]\"));\n\nconst pad = n => String(n).padStart(2, \"0\");\n\nconst formatted =\n  `${pad(date.getUTCDate())}/${pad(date.getUTCMonth() + 1)}/${date.getUTCFullYear()} ` +\n  `${pad(date.getUTCHours())}:${pad(date.getUTCMinutes())}:${pad(date.getUTCSeconds())}`;\n\nreturn formatted;\n[/JavaScript binding]\n"
        },
        {
          "label": "ph",
          "field": "ph",
          "active": true
        },
        {
          "label": "atp",
          "field": "atp",
          "active": true
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false
        },
        {
          "label": "group",
          "field": "group",
          "active": false
        },
        {
          "label": "temp_type",
          "field": "temp_type",
          "active": false
        },
        {
          "label": "id_no",
          "field": "id_no",
          "active": false
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "remark",
          "field": "remark",
          "active": false
        },
        {
          "label": "NewpH",
          "field": "NewpH",
          "active": false
        },
        {
          "label": "NewATP",
          "field": "NewATP",
          "active": false
        },
        {
          "label": "sampID",
          "field": "sampID",
          "active": true
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
                "field": "sampID",
                "type": "string",
                "constraints": {
                  "presence": {
                    "allowEmpty": false
                  }
                },
                "externalType": "nvarchar",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [url].[sampid] }}"
              }
            ]
          }
        ]
      },
      "_conditions": [
        {
          "valueType": "string",
          "id": "DLTU8zM4l",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cb8f27e4d7e0b435ba163b6009d4370b9].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "New CSV Import",
    "id": "c52384d87aa2d43dfbbde41425b5c326a",
    "path": "/_children/1/_children/0/_children/1",
    "properties": {
      "table": {
        "label": "temperature_30",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30"
      }
    }
  },
  {
    "component": "New CSV Import",
    "id": "c33656474dda54845a3b271051f83b144",
    "path": "/_children/2/_children/0/_children/1",
    "properties": {
      "table": {
        "label": "temperature_30",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30"
      }
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
