# Screen: /high-acid-sampling-tables

รายการ High Acid จาก HighAcid_Tables พร้อมตัวกรองวันผลิต/วันตรวจ/เครื่อง/SamplingID. ไปหน้า report, edit และ batch QC; เลือก sampling เก็บใน Samplings_highacid_batch. Modal unlock ใช้ UnlockSamp_HighAcid_Production หลังตรวจ state ผู้ใช้.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_21c695fbdde84d9c8bebc266b6dcc303`
- Route: `/high-acid-sampling-tables`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 37

## Query dependencies

- [HighAcid_Tables](<../database/Query/HighAcid_Tables.sql>)
- [UnlockSamp_HighAcid_Production](<../database/Query/UnlockSamp_HighAcid_Production.sql>)

## Components

| Type | Count |
|---|---|
| button | 9 |
| container | 6 |
| text | 5 |
| optionsfield | 4 |
| stringfield | 3 |
| datetimefield | 3 |
| gridblock | 2 |
| dataprovider | 1 |
| image | 1 |
| heading | 1 |
| divider | 1 |
| modal | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| SamplingHigh_Staff |  | ค้นหา SamplingID | ไม่ได้กำหนด |
| MachineHigh_Staff |  | Machine | ไม่ได้กำหนด |
| MachineHigh_Group_Staff |  | Group | ไม่ได้กำหนด |
| DayTimeHigh_Staff |  |  | ไม่ได้กำหนด |
| QSM_Supervisor_EMP |  | Input The Employee Code To Unlocked | ไม่ได้กำหนด |
| SamplingHigh_Staff |  | ค้นหา SamplingID | ไม่ได้กำหนด |
| MachineHigh_Staff |  | Machine | ไม่ได้กำหนด |
| MachineHigh_Group_Staff |  | Group | ไม่ได้กำหนด |
| DayTimeHigh_Sup |  |  | ไม่ได้กำหนด |
| Check Date Picker |  |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### DayTimeHigh_Staff — onChange

Config path: `/_children/1/_children/1/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=SelectDate Table; type=set; value={{ [eventContext].[value] }} |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "SelectDate Table",
      "type": "set",
      "value": "{{ [eventContext].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "P6fHE3MiU"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/1/_children/1/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/home/menu-selector/{{ [state].[CallbackDB_API].user }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "GjPpZiCoy"
  }
]
```

</details>

### c6b4d363a714343dc8002307d00de358b — onClick

Config path: `/_children/1/_children/1/_children/5/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Samplings_highacid_batch; type=set; value={{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }} |
| 2 | Navigate To | url=/high-acid/quanity-control/add; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid_batch",
      "type": "set",
      "persist": null,
      "value": "{{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "t9kaGIPSN"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/quanity-control/add",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "gc7kyNEgP"
  }
]
```

</details>

### c9df5484d57fd4972aed4d6389cf382e2 — onClick

Config path: `/_children/1/_children/1/_children/5/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/high-acid-report/{{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid-report/{{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "F9oMy1W1P"
  }
]
```

</details>

### New Button 2 — onClick

Config path: `/_children/1/_children/2/_children/0/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Vaildate_Login; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=error; message={{ [state].[Vaildate_Login] }} |
| 3 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaildate_Login] }} |
| 4 | Execute Query | queryId=UnlockSamp_HighAcid_Production |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_Login",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst empcode = $(\"[cb0d7433ef3a041c790e32ac9222feb1f].[value]\");\n\nif(!empcode) {\n  return \"Please Input The Empolyee Code To Unlocked!\";\n}\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "kEPdZ52TA"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "error",
      "message": "{{ [state].[Vaildate_Login] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "aepmw2R_Z"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "stop",
      "operator": "notEqual",
      "value": "{{ [state].[Vaildate_Login] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "HzEjcjHFb"
  },
  {
    "parameters": {
      "queryParams": {
        "Userid": "{{ [cb0d7433ef3a041c790e32ac9222feb1f].[value] }}",
        "SampID": "{{ [state].[SamplingID_Table] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d773cad0cd87473fbc538bc04d61ad2b",
      "confirm": true,
      "notificationOverride": null,
      "customTitleText": "Are you sure you want to unlock the selected Sampling ID?",
      "confirmText": "SamplingID: {{ [state].[SamplingID_Table] }}",
      "confirmButtonText": "Sure",
      "cancelButtonText": "Cancel"
    },
    "##eventHandlerType": "Execute Query",
    "id": "3CBXpbkPM"
  }
]
```

</details>

### DayTimeHigh_Sup — onChange

Config path: `/_children/1/_children/2/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=SelectDate Table; type=set; value={{ [eventContext].[value] }} |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "SelectDate Table",
      "type": "set",
      "value": "{{ [eventContext].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "iElN6sVzV"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/1/_children/2/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/home/menu-selector/{{ [state].[CallbackDB_API].user }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "GjPpZiCoy"
  }
]
```

</details>

### cf612f479dc114d098fc5c2b17e5e6e7c — onClick

Config path: `/_children/1/_children/2/_children/6/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/edit-page/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/edit-page/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "RGUFE8M60"
  }
]
```

</details>

### c6b4d363a714343dc8002307d00de358b — onClick

Config path: `/_children/1/_children/2/_children/6/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Samplings_highacid_batch; type=set; value={{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }} |
| 2 | Navigate To | url=/high-acid/quanity-control/add; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid_batch",
      "type": "set",
      "persist": null,
      "value": "{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "t9kaGIPSN"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/quanity-control/add",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "gc7kyNEgP"
  }
]
```

</details>

### c9df5484d57fd4972aed4d6389cf382e2 — onClick

Config path: `/_children/1/_children/2/_children/6/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/high-acid-report/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid-report/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "F9oMy1W1P"
  }
]
```

</details>

### c953a287b991f4477b69539b6cc855856 — onClick

Config path: `/_children/1/_children/2/_children/6/buttons/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=SamplingID_Table; type=set; value={{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "SamplingID_Table",
      "type": "set",
      "persist": null,
      "value": "{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "P_zUSEKKR"
  },
  {
    "parameters": {
      "id": "cf6bec3e7ea0840928ba54083cbfb3c80"
    },
    "##eventHandlerType": "Open Modal",
    "id": "0k7gau64W"
  }
]
```

</details>

### Check Date Picker — onChange

Config path: `/_children/1/_children/2/_children/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=SelectDate Table1; type=set; value={{ [eventContext].[value] }} |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "SelectDate Table1",
      "type": "set",
      "value": "{{ [eventContext].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "akGEZ6LcQ"
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
    "component": "Machine Data",
    "path": "/_children/0",
    "dataSource": {
      "label": "machine",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__machine",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__machine"
    },
    "filter": null,
    "limit": 100
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
    "id": "ccdedb044c88d4781a054f17b09cb5697",
    "path": "/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "UpagXTWD_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "Container_StaffTech",
    "id": "c066d8d717ce245729a13ec16b25a0545",
    "path": "/_children/1/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "l7gEUuezQ",
          "action": "show",
          "operator": "oneOf",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "noValue": false,
          "referenceValue": "qastaff,qatech"
        }
      ]
    }
  },
  {
    "component": "MachineHigh_Staff",
    "id": "cdbea9b8133914f55a71dd8137031d783",
    "path": "/_children/1/_children/1/_children/1",
    "properties": {
      "dataProvider": "{{ literal [cd516696961b64bee97b78edad7788459] }}"
    }
  },
  {
    "component": "MachineHigh_Group_Staff",
    "id": "c63a50dcb1903421f82e2186aeb0127b0",
    "path": "/_children/1/_children/1/_children/2",
    "properties": {
      "dataProvider": "{{ literal [cd516696961b64bee97b78edad7788459] }}"
    }
  },
  {
    "component": "DayTimeHigh_Staff",
    "id": "cacd5d406482e47c3bfb818ad5b61acaf",
    "path": "/_children/1/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "High-Acid_TableStaff",
    "id": "c0a269985af52418cba74c6d9811a9c8c",
    "path": "/_children/1/_children/1/_children/5",
    "properties": {
      "table": {
        "label": "HighAcid_Tables",
        "name": "HighAcid_Tables",
        "transformer": "return data",
        "schema": {
          "SamplingID": {
            "type": "string",
            "name": "SamplingID"
          },
          "Amount": {
            "type": "string",
            "name": "Amount"
          },
          "Machine": {
            "type": "string",
            "name": "Machine"
          },
          "MFG_Code": {
            "type": "string",
            "name": "MFG_Code"
          },
          "EXP_Code": {
            "type": "string",
            "name": "EXP_Code"
          }
        },
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "sampid",
            "default": ""
          },
          {
            "name": "MFG",
            "default": ""
          },
          {
            "name": "mac",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n    h.SamplingIDH as SamplingID,\n\t\th.amount as Amount,\n    m.machine as Machine,\n\t\tCONVERT(VARCHAR(10), h.MFG_code, 103) AS MFG_Code,\n    CONVERT(VARCHAR(10), h.EXP_code, 103) AS EXP_Code\nFROM [Sampling high] h\nLEFT JOIN machine m\n    ON h.machine = m.no\nWHERE\n    ('{{sampid}}' = '' OR h.SamplingIDH = '{{sampid}}')\n    AND ('{{MFG}}' = '' OR CAST(h.MFG_CODE AS DATE) = CAST('{{MFG}}' AS DATE))\n    AND ('{{mac}}' = '' OR m.no = '{{mac}}');"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7bb97b95d99e40fb983cfbd919117c90",
        "nullDefaultSupport": true,
        "createdAt": "2026-06-26T00:17:34.335Z",
        "updatedAt": "2026-06-26T00:17:34.335Z",
        "_rev": "1-4ac56aba14d10f2861cce97765b301cf",
        "type": "query",
        "queryParams": {
          "MFG": "{{ [cacd5d406482e47c3bfb818ad5b61acaf].[value] }}",
          "sampid": "{{ [c8aec582346c4482ca048ce82eae9b124].[value] }}",
          "mac": "{{ [cdbea9b8133914f55a71dd8137031d783].[value] }}"
        }
      },
      "columns": [
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": true,
          "width": 200
        },
        {
          "label": "MFG_Code",
          "field": "MFG_Code",
          "active": true,
          "width": 130
        },
        {
          "label": "EXP_Code",
          "field": "EXP_Code",
          "active": true,
          "width": 130
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": true,
          "width": 120
        },
        {
          "label": "Amount",
          "field": "Amount",
          "active": true,
          "width": 120
        },
        {
          "label": "status",
          "field": "status",
          "active": false,
          "conditions": [
            {
              "id": "_LfhjEpGk",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-orange-100)",
              "referenceValue": "pending"
            },
            {
              "id": "OMFeazUf3",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "referenceValue": "success",
              "metadataValue": "var(--spectrum-global-color-green-100)"
            }
          ]
        },
        {
          "label": "Group",
          "field": "Group",
          "active": false
        }
      ],
      "buttons": [
        {
          "_id": "cb2a9817df89844b2b37f995e1d4d2110",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c6b4d363a714343dc8002307d00de358b",
          "text": "Batch",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c0a269985af52418cba74c6d9811a9c8c",
          "onClick": [
            {
              "parameters": {
                "key": "Samplings_highacid_batch",
                "type": "set",
                "persist": null,
                "value": "{{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "t9kaGIPSN"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/high-acid/quanity-control/add",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "gc7kyNEgP"
            }
          ]
        },
        {
          "_id": "c51004e893f12401293208a73692183cd",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c9df5484d57fd4972aed4d6389cf382e2",
          "text": "Report",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c0a269985af52418cba74c6d9811a9c8c",
          "onClick": [
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/high-acid-report/{{ [c0a269985af52418cba74c6d9811a9c8c].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "F9oMy1W1P"
            }
          ]
        }
      ],
      "initialFilter": {
        "logicalOperator": "all",
        "onEmptyFilter": "all",
        "groups": [
          {
            "logicalOperator": "any",
            "filters": [
              {
                "valueType": "Binding",
                "field": "Group",
                "type": "string",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [c63a50dcb1903421f82e2186aeb0127b0].[value] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Container_Sup",
    "id": "c9665ba778aaa4698a876cea8e1787dd5",
    "path": "/_children/1/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "l7gEUuezQ",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "noValue": false,
          "referenceValue": "qasup"
        }
      ]
    }
  },
  {
    "component": "QSM_Supervisor_EMP",
    "id": "cb0d7433ef3a041c790e32ac9222feb1f",
    "path": "/_children/1/_children/2/_children/0/_children/0/_children/0",
    "properties": {
      "validation": [
        {
          "valueType": "Binding",
          "type": "string",
          "id": "bUWWoJlXS",
          "value": null,
          "constraint": "required",
          "error": "Please input The Empolyee Code To Unlocked | กรุณาใส่รหัสพนักงานเพื่อทำการปลดล็อก SamplingID"
        }
      ]
    }
  },
  {
    "component": "MachineHigh_Staff",
    "id": "c4678ff625adc49f48fe445b8502427d8",
    "path": "/_children/1/_children/2/_children/2",
    "properties": {
      "dataProvider": "{{ literal [cd516696961b64bee97b78edad7788459] }}"
    }
  },
  {
    "component": "MachineHigh_Group_Staff",
    "id": "cec260da067f24ef899032d8c02fff7c7",
    "path": "/_children/1/_children/2/_children/3",
    "properties": {
      "dataProvider": "{{ literal [cd516696961b64bee97b78edad7788459] }}"
    }
  },
  {
    "component": "DayTimeHigh_Sup",
    "id": "c0e69bee5c9ef4e32bcebe947d9e9fddf",
    "path": "/_children/1/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "High-Acid_TableStaff",
    "id": "cefee5f48c21c4e65b55acf7db664e22d",
    "path": "/_children/1/_children/2/_children/6",
    "properties": {
      "table": {
        "label": "HighAcid_Tables",
        "name": "HighAcid_Tables",
        "transformer": "return data",
        "schema": {
          "SamplingID": {
            "type": "string",
            "name": "SamplingID"
          },
          "Amount": {
            "type": "string",
            "name": "Amount"
          },
          "Machine": {
            "type": "string",
            "name": "Machine"
          },
          "MFG_Code": {
            "type": "string",
            "name": "MFG_Code"
          },
          "EXP_Code": {
            "type": "string",
            "name": "EXP_Code"
          }
        },
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "sampid",
            "default": ""
          },
          {
            "name": "MFG",
            "default": ""
          },
          {
            "name": "mac",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n    h.SamplingIDH as SamplingID,\n\t\th.amount as Amount,\n    m.machine as Machine,\n\t\tCONVERT(VARCHAR(10), h.MFG_code, 103) AS MFG_Code,\n    CONVERT(VARCHAR(10), h.EXP_code, 103) AS EXP_Code\nFROM [Sampling high] h\nLEFT JOIN machine m\n    ON h.machine = m.no\nWHERE\n    ('{{sampid}}' = '' OR h.SamplingIDH = '{{sampid}}')\n    AND ('{{MFG}}' = '' OR CAST(h.MFG_CODE AS DATE) = CAST('{{MFG}}' AS DATE))\n    AND ('{{mac}}' = '' OR m.no = '{{mac}}');"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7bb97b95d99e40fb983cfbd919117c90",
        "nullDefaultSupport": true,
        "createdAt": "2026-06-26T00:17:34.335Z",
        "updatedAt": "2026-06-26T00:17:34.335Z",
        "_rev": "1-4ac56aba14d10f2861cce97765b301cf",
        "type": "query",
        "queryParams": {
          "MFG": "{{ [c0e69bee5c9ef4e32bcebe947d9e9fddf].[value] }}",
          "sampid": "{{ [c0cb4d93e2a0846da86ea6606cf5c55fe].[value] }}",
          "mac": "{{ [c4678ff625adc49f48fe445b8502427d8].[value] }}",
          "Actual": "{{ [c9d9d6f035b7640c7a6e52624944ecdbb].[value] }}",
          "ActualDate": "{{ [c9d9d6f035b7640c7a6e52624944ecdbb].[value] }}"
        }
      },
      "columns": [
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": true
        },
        {
          "label": "MFG Code",
          "field": "MFG_Code",
          "active": true,
          "width": 110
        },
        {
          "label": "EXP Code",
          "field": "EXP_Code",
          "active": true,
          "width": 110
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": true,
          "width": 100
        },
        {
          "label": "status",
          "field": "status",
          "active": false,
          "conditions": [
            {
              "id": "iw5a4GOm5",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-orange-100)",
              "referenceValue": "pending"
            },
            {
              "id": "2BHahdqmc",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-green-100)",
              "referenceValue": "success"
            }
          ]
        },
        {
          "label": "Group",
          "field": "Group",
          "active": false
        },
        {
          "label": "Actual Date",
          "field": "check_date",
          "active": true,
          "width": 110,
          "format": "{{#if [cefee5f48c21c4e65b55acf7db664e22d].[check_date]}}\n  {{date [cefee5f48c21c4e65b55acf7db664e22d].[check_date] \"DD/MM/YYYY\"}}\n{{else}}\n  \n{{/if}}"
        },
        {
          "label": "Amount",
          "field": "Amount",
          "active": true,
          "width": 100
        }
      ],
      "buttons": [
        {
          "_id": "c12a13e8a4e854f6485f351186367bb11",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cf612f479dc114d098fc5c2b17e5e6e7c",
          "text": "Edit Page",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cefee5f48c21c4e65b55acf7db664e22d",
          "onClick": [
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/edit-page/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "RGUFE8M60"
            }
          ]
        },
        {
          "_id": "cb2a9817df89844b2b37f995e1d4d2110",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c6b4d363a714343dc8002307d00de358b",
          "text": "Batch",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cefee5f48c21c4e65b55acf7db664e22d",
          "onClick": [
            {
              "parameters": {
                "key": "Samplings_highacid_batch",
                "type": "set",
                "persist": null,
                "value": "{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "t9kaGIPSN"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/high-acid/quanity-control/add",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "gc7kyNEgP"
            }
          ]
        },
        {
          "_id": "c51004e893f12401293208a73692183cd",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c9df5484d57fd4972aed4d6389cf382e2",
          "text": "Report",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cefee5f48c21c4e65b55acf7db664e22d",
          "onClick": [
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/high-acid-report/{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "F9oMy1W1P"
            }
          ]
        },
        {
          "_id": "c94d364c165e04a63b4fd9fc28427392f",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c953a287b991f4477b69539b6cc855856",
          "text": "Unlocked Sampling",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cefee5f48c21c4e65b55acf7db664e22d",
          "onClick": [
            {
              "parameters": {
                "key": "SamplingID_Table",
                "type": "set",
                "persist": null,
                "value": "{{ [cefee5f48c21c4e65b55acf7db664e22d].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "P_zUSEKKR"
            },
            {
              "parameters": {
                "id": "cf6bec3e7ea0840928ba54083cbfb3c80"
              },
              "##eventHandlerType": "Open Modal",
              "id": "0k7gau64W"
            }
          ]
        }
      ],
      "initialFilter": {
        "logicalOperator": "all",
        "onEmptyFilter": "all",
        "groups": [
          {
            "logicalOperator": "any",
            "filters": [
              {
                "valueType": "Binding",
                "field": "Group",
                "type": "string",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [cec260da067f24ef899032d8c02fff7c7].[value] }}"
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
