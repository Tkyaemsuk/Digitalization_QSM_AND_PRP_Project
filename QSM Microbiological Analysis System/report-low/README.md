# Screen: /report-low/:samp

รายงาน Low Acid จาก CallBack Sampling และ Report_List_Page พร้อมตาราง30/55 และปุ่มกลับรายการ. Config มี action Sup_Approve อยู่ใน modal ด้วย จึงไม่ใช่หน้าที่มีแต่ SELECT ทั้งหมด; การมองเห็นปุ่มขึ้นกับเงื่อนไข component.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_f8d4a7a884fc45eeae0a5da364ef782b`
- Route: `/report-low/:samp`
- Access: `PUBLIC`
- Home: `False`
- Width: `Medium`
- Components: 754

## Query dependencies

- [CallBack Sampling](<../database/Query/CallBack Sampling.sql>)
- [Report_List_Page](<../database/Query/Report_List_Page.sql>)
- [Sup_Approve](<../database/Query/Sup_Approve.sql>)

## Components

| Type | Count |
|---|---|
| text | 527 |
| booleanfield | 120 |
| container | 35 |
| divider | 20 |
| heading | 15 |
| dataprovider | 11 |
| repeater | 11 |
| image | 5 |
| modal | 2 |
| button | 2 |
| gridblock | 2 |
| form | 1 |
| stringfield | 1 |
| optionsfield | 1 |
| embed | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| SupCode | SupervisorBy |  | ไม่ได้กำหนด |
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |
| Colour55 |  |  | ไม่ได้กำหนด |
| Smell55 |  |  | ไม่ได้กำหนด |
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |
| Colour30 |  |  | ไม่ได้กำหนด |
| Smell30 |  |  | ไม่ได้กำหนด |
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |
| Colour30 |  |  | ไม่ได้กำหนด |
| Smell30 |  |  | ไม่ได้กำหนด |
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |
| Colour30 |  |  | ไม่ได้กำหนด |
| Smell30 |  |  | ไม่ได้กำหนด |
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |
| Colour30 |  |  | ไม่ได้กำหนด |
| Smell30 |  |  | ไม่ได้กำหนด |
| Temperature Table |  | Please Select The Temperature | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### New Button — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Show Notification | type=warning; message=JavaScript binding (ดูด้านล่าง) |
| 2 | Continue if / Stop if | type=continue; operator=notEqual; referenceValue=; value={{ [cde9ba99b4f6247d1bc0d6d4e35b609aa].[SupervisorBy] }} |
| 3 | Execute Query | queryId=Sup_Approve |
| 4 | Refresh Data Provider | componentId=c2e39514eb3964ea19a679ccffc77a331 |
| 5 | Show Notification | type=success; message=Supervisor Approve Successfully! |
| 6 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "\n[JavaScript binding]\nlet code = $(\"[cde9ba99b4f6247d1bc0d6d4e35b609aa].[SupervisorBy]\");\nif(!code) {\n  return \"Please input The Supervisor Empolyee Code\";\n} else {\n  return \"\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "lSu9filGO"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "notEqual",
      "value": "{{ [cde9ba99b4f6247d1bc0d6d4e35b609aa].[SupervisorBy] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "ecwcLLhHr"
  },
  {
    "parameters": {
      "queryParams": {
        "SupCode": "{{ [cde9ba99b4f6247d1bc0d6d4e35b609aa].[SupervisorBy] }}",
        "Supdate": "\n[JavaScript binding]\n// UTC date/time ตอนนี้\nconst now = new Date();\nreturn now;\n[/JavaScript binding]\n",
        "SampID": "{{ [url].[samp] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_99e27c384e094d4bb7a457f8bf645ce2",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "cq1n3rDCD"
  },
  {
    "parameters": {
      "componentId": "c2e39514eb3964ea19a679ccffc77a331"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "Fx3MhbXaU"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Supervisor Approve Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "0nNxvcmYx"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "mNm9Ebe4Z"
  }
]
```

</details>

### Back  — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=CallBack_Sampling; type=set; value={{ [url].[samp] }} |
| 2 | Navigate To | url=/sampling-tables; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "CallBack_Sampling",
      "type": "set",
      "persist": null,
      "value": "{{ [url].[samp] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "aqdF7OyDJ"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tables",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "5VYf6GcAj"
  }
]
```

</details>

### Temperature30 Table — onRowClick

Config path: `/_children/0/_children/0/_children/0/_children/6/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=c6b1a117bc51542eba272bbad53b7a048 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c6b1a117bc51542eba272bbad53b7a048"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "2M2uosX1W"
  }
]
```

</details>

### Temperature55 Table — onRowClick

Config path: `/_children/0/_children/0/_children/0/_children/6/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=c6b1a117bc51542eba272bbad53b7a048 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c6b1a117bc51542eba272bbad53b7a048"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "2M2uosX1W"
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
    "component": "Sampling Data",
    "path": "/_children/0",
    "dataSource": {
      "label": "CallBack Sampling",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "type": "query",
      "queryParams": {
        "SamplingID": "{{ [url].[samp] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "Supervisor",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Emp Data55",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "55Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5",
    "dataSource": {
      "label": "temperature_55",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55"
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
              "field": "sampID",
              "type": "string",
              "constraints": {
                "presence": false
              },
              "externalType": "nvarchar",
              "operator": "equal",
              "noValue": false,
              "value": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
            }
          ]
        }
      ]
    },
    "limit": 40
  },
  {
    "component": "Emp Data55",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "30Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3",
    "dataSource": {
      "label": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "name": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}",
        "PageNo": "1"
      },
      "currentQueryName": "Report_List_Page",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 40
  },
  {
    "component": "Emp Data55",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "30Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4",
    "dataSource": {
      "label": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "name": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}",
        "PageNo": "2"
      },
      "currentQueryName": "Report_List_Page",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 60
  },
  {
    "component": "Emp Data55",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "30Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4",
    "dataSource": {
      "label": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "name": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}",
        "PageNo": "3"
      },
      "currentQueryName": "Report_List_Page",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 40
  },
  {
    "component": "Emp Data55",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "30Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4",
    "dataSource": {
      "label": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "name": "ญศฯ็ณํอโะฌฺ๋ษ๋💔",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}",
        "PageNo": "4"
      },
      "currentQueryName": "Report_List_Page",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 40
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
    "component": "Sampling Data",
    "id": "c39f01c191d104cdda3238af623c61461",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "IjwdDX5WG",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Sampling Repeater",
    "id": "c7e91e25676434e4eb57c8dccc9a27243",
    "path": "/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c39f01c191d104cdda3238af623c61461] }}"
    }
  },
  {
    "component": "New Container 7",
    "id": "c1d3e1d94cec64e258eed807f3491e7f1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "u5xA-U72X",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Back ",
    "id": "ccf05834e79ba4375b73a5b75549c6352",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "BOmUdjVRk",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qastaff"
        }
      ]
    }
  },
  {
    "component": "Product",
    "id": "cca27b7712d5c4a53b6cf76ac7d916873",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c550016a5719b401d99a6da6cd7eecbd6",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c79c2f72a8e244f798ed7423123139978",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c36e479023e1e4aaab76516e7c6bbb127",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/8",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "c67981c2b82164057b40a5e861ebe701c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/13",
    "properties": {
      "text": "         {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "cbb95c1eb27ee4bd6b43c430c2a29e0c1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "c087b167b56664abaaed6def2fc8b8968",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c891faeeca3aa4dfea6f31d3f260a3fe8",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "c8c56b9bc9bd44b099aba45ef99558c28",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "ce9d59f4d0c0c417ab3ed34a1c71229a6",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c253e27e62bc44209b9df768be6a29e1f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c60c0bb71ac6d452c816b9715d6fba92a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "c753b17cfe29546f88356c05c22e9f28d",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "c846c384409924cfab63cc82d2c5b8304",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "caa93135e5a1942bd9ecae8e3af8abd09",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c0cff25299f3e4171810a0c29f87d9a49",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c6b45ce51f9e549d58e0855459a84bdbc",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "c768200d0da6b42fc854bdbcab197484c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/55",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "c57cd41b3be2546bca8c37124214f93e8",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/56",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "caf683cd00576437e91ce330dfe37838e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/57",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "c628b16a985854d798de4278320c874e4",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/58",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c7e33df608efb42cc8f53dfec26bc5aed",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "c0eb4991c52f94ce4b9fb0442c1915b83",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "cc7798150b5fd467c94797e1e766e4476",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/61",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c1d9e5e8bf33344d9b0e5350d82a0fe60",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/62",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "c447e0f55a4f749e3a8a81ae46b88f8b9",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/63",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "c582457156a854239917269d47e4c55f1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/64",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "c840dea51af574d08b7c9a3dfce0d3d06",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/65",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "cc0e6db4543b64ca69c98586e1fab993b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c81230b982a3a496c9e800c1378fc36e0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/67",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c6084a0c612ea43d5b143064cb6673865",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/70",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c5ce419f011794172a1d4ec5976bc3f03",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/73",
    "properties": {
      "text": "             {{ [c7e91e25676434e4eb57c8dccc9a27243].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c7b5f8b20235d4086b67bd7ed335e4364",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/74",
    "properties": {
      "text": "               {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "c287233e0055a4029b7666fd89ce49a0e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/75",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan55_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "cfff85bdfc5c2449f9fcb55e1fff31b94",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/76",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate55_Format] }}"
    }
  },
  {
    "component": "Remark_Submit",
    "id": "c84252836d2684cb497eedd0beb1513c1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/77",
    "properties": {
      "text": "* Remark * {{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "qZstaJ0RU",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Finised1",
    "id": "ced61a44fe31e44e8aa7f9b27b7c50a3e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature2] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished2] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "cfa0a7665df2c49ec8dcbb67b0f9221ca",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c6569d0f81c8542c6b6ee9481efe71a7f] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "c1e926e320a4749649a07b2cb47b96d88",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [cfa0a7665df2c49ec8dcbb67b0f9221ca].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cfbae3125e87946bfa670751544a65798",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[physical_date2] }}\n        {{ date [cfa0a7665df2c49ec8dcbb67b0f9221ca].[physical_date2]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c23531663ee9c4366b08069bb38738823",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [cfa0a7665df2c49ec8dcbb67b0f9221ca].[results_date2]}}\n        {{ date [cfa0a7665df2c49ec8dcbb67b0f9221ca].[results_date2]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c842385bee93045e893cffb993251b589",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [cfa0a7665df2c49ec8dcbb67b0f9221ca].[Supervisor_Date]}}\n              {{ date  [cfa0a7665df2c49ec8dcbb67b0f9221ca].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "cfee94f477e36423c9af5462c81ca4413",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [cfa0a7665df2c49ec8dcbb67b0f9221ca].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c46e4732353de437c93c344d11cf550b0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[submit_date] }}        {{ date [cfa0a7665df2c49ec8dcbb67b0f9221ca].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "c2543f3f1528e40a88e38e0b9dbf12176",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [cfa0a7665df2c49ec8dcbb67b0f9221ca].[physicals_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "cf9a427c753b74eccaee7d61b310e489f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [cfa0a7665df2c49ec8dcbb67b0f9221ca].[results_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "c0f32aa4e641c40d98e769422ee8fc2e4",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [cfa0a7665df2c49ec8dcbb67b0f9221ca].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c9be7b889e687483494378c6e38e30f95",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[Recieved_date] }}\n        {{ date [cfa0a7665df2c49ec8dcbb67b0f9221ca].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "ce9249e3023cf4054a0cd3798985f8528",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "cda929d4f6e2f43b4bbc47961e7546425",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "c106aea13fea34573bebe0c31a46b339f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  },
  {
    "component": "55Product Data",
    "id": "c31a9121eb82a4187be5f76e354237d8e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5",
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
                "field": "sampID",
                "type": "string",
                "constraints": {
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "55Product Reapter",
    "id": "c076624b3ffb1488498403d4dac01b9c0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c31a9121eb82a4187be5f76e354237d8e] }}"
    }
  },
  {
    "component": "List",
    "id": "c9e8a7773ae8043bc80c41769648a08df",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "X0Y_SMsGW",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[ph] }}"
        }
      ]
    }
  },
  {
    "component": "No.",
    "id": "c58b77a86f82c4af5881d3fe28bea6467",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c076624b3ffb1488498403d4dac01b9c0].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c03ff77086fe14abba02783d7188ee996",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[c076624b3ffb1488498403d4dac01b9c0].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "cb9c95dbbebf544c8b953e756d1739d3e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [c076624b3ffb1488498403d4dac01b9c0].[ph] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c728d0b8a6abb47b79758d4cc8dbd1dab",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/3",
    "properties": {
      "text": "{{ [c076624b3ffb1488498403d4dac01b9c0].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7d0a24a097394b919fa2653f34095d0b].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "cfb56a18db48b46dfa9475b50dc736be3",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/4",
    "properties": {
      "text": "{{ [c076624b3ffb1488498403d4dac01b9c0].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c47286e5fd99a46078e27cf247dd9271e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/5",
    "properties": {
      "text": "{{ [c7d0a24a097394b919fa2653f34095d0b].[NewATP55] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7d0a24a097394b919fa2653f34095d0b].[NewATP55] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour55",
    "id": "c1576887bb4c5472097a32236c3a0f47a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[colour] }}"
    }
  },
  {
    "component": "Smell55",
    "id": "c91fee02d88d74b41b8ca8ba1c1e35dd2",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c076624b3ffb1488498403d4dac01b9c0].[smell] }}"
    }
  },
  {
    "component": "TPC55",
    "id": "cdf69f864aa1d47dba6dfb8dad6b4f3fb",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/5/_children/0/_children/0/_children/8",
    "properties": {
      "text": "{{ [c076624b3ffb1488498403d4dac01b9c0].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "c20640d6511ac4c28a727b9de3039eac2",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c9a9b4acff2cd4619b494b7604546c867",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "cded12576cbcd4a1583a5aff23197ae0b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "cbdb2c77a6d194f6f964c863d0f771d8c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "ce5f18087ac9a421183bf5c6eeab24814",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/13",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "cf5edec2c724f4db2b65b7992a50d9567",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "cd4cd48a515104993981588e74d775524",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c141131a6591f4daa9b3fc41a8a416959",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "c377934c30c024bac910e5c6a86903efc",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "cfb1a383e03c546ad888c2443e4a738c4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "cf64a1c1d9f934ce7ab97b35b2c5cff1c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "cab0f8517374d404a9bd2ecbc37b9ad79",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cfb462b19da5a4db8bbcd08527de14316",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "cf01ddb0866d041179b21fc769b0c0e92",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "c6fadd7247fb1407da460957d05c9e7e6",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c000068776025405fb2babac4d01f75b4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c3797e5be7f724f3f88552f354215baa4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "cec327ead9e2f4e8bbe6972c1f23e008e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/55",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "cbbfeb8bcd89545efbb29539fbf4f86a6",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/56",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "c2ee751bc70384a3b952714a549b44c57",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/57",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "cd18ae727d60e46e6922e3ace0401657d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/58",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c198b7188ca894005a5d5068b27755284",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "cbc53faa1a93d4804885cd317ab1db82f",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "ca9de6b6a70e74b078c548cdf02944744",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c9fbe49f872fa49a2ba7f42c7de4ca06e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "cddc1b8c92743491297f3166a3e393afb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "c31773f2f09944502a10c7330cab609c0",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "cd6740d6ad5a0442ab45500cb35e47de7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/65",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c974f936197a241dd9e6edf929e935ae2",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "cf4e9e5d811fd41eca9cface9032b79cf",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/67",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c0918b21db8a840cdb0bfaad64be596df",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/70",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c9e1e505a5c7f4ac88331dc3c354e14bb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/73",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c519da28aecf546ad8349b29721e0080a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/74",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "ccd84412ac1eb462789e176c6fbca3b01",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "c767bd895f7074e23bd294c74b38cc7ea",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Remark_Submit",
    "id": "c07dafc9845b04620b9dedf5a380d27d7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/77",
    "properties": {
      "text": "* Remark * {{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "qZstaJ0RU",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Finised1",
    "id": "cfc42db341a3e45bb8ca34c01e7532a16",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "c4b4ee08d91f8440b92ebdda46c15a07a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ce64dd65375b54edb982546835217fbb7] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "cbc9f21af2bf44ebeb31d48be8d24dc5b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [c4b4ee08d91f8440b92ebdda46c15a07a].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c66a7f35f6ffc4ead90bbdfc9476cb231",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[physical_date] }}\n        {{ date [c4b4ee08d91f8440b92ebdda46c15a07a].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c723a0814c806404991cbfcbd45da6bfc",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [c4b4ee08d91f8440b92ebdda46c15a07a].[results_date]}}        {{ date [c4b4ee08d91f8440b92ebdda46c15a07a].[results_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c4ffa23b388a24fac854cdd1858ea4518",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [c4b4ee08d91f8440b92ebdda46c15a07a].[Supervisor_Date]}}\n              {{ date  [c4b4ee08d91f8440b92ebdda46c15a07a].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c245a7859c7474a39816a997cd870e757",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [c4b4ee08d91f8440b92ebdda46c15a07a].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c19f07b0c749744beb12ba9ac55dc5434",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[submit_date] }}        {{ date [c4b4ee08d91f8440b92ebdda46c15a07a].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "cd8bb26245b664495b948bd6bbf1cc6bb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [c4b4ee08d91f8440b92ebdda46c15a07a].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "c85c494f102ae46efa164574adbb1601f",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [c4b4ee08d91f8440b92ebdda46c15a07a].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "c2efeb08a80c34a7aa5ef00687d250cad",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [c4b4ee08d91f8440b92ebdda46c15a07a].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c9dd586f9376f4da4a32e95c0713f27d0",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[Recieved_date] }}\n        {{ date [c4b4ee08d91f8440b92ebdda46c15a07a].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "cdda43594abde4f558284f088aff184bb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "c56a4ad4c29774a33bc8242099c20e7fd",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "c5d9dab2c0cde421ca7dcf07e473029f4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "c6b9ec3603dbc4cc88649d757d0888a9d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c6254e4ce9e9540b6a77dd09a341e1ec5] }}"
    }
  },
  {
    "component": "No.",
    "id": "cbc364276a5fd4a3aa0c4460976275f90",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c6a906b90b3e9408eb329a45838f1fcc6",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[c6b9ec3603dbc4cc88649d757d0888a9d].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "c576406fa10624c2eb57d8cdfe31e3a68",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [c6b9ec3603dbc4cc88649d757d0888a9d].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c839dfae649b64379816531815e37c6fe",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c87f339580e7e4205937865752b105b14",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [c6b9ec3603dbc4cc88649d757d0888a9d].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "cb2abeb93d1c24ace9a6e73d803099cf8",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "c00536f9586d1409c966a1acd363fa3e7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "cc05337d0fbfc4feaa660a9c082a22164",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c6b9ec3603dbc4cc88649d757d0888a9d].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "cefa5b43802024202938f2a41005b2f18",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [c6b9ec3603dbc4cc88649d757d0888a9d].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "cedbc059bd8734c60b05a8aa1396e5c5f",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c8acf51afadb147bc90b255654b9a1bf9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "cb111b61767f749c7ac2e6b2555ad1471",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "cf2dd16e131a84888962ca40cc5d698dc",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "cf7559bea383e43d9b543212566a7ab77",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/13",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "c65a275d49e694d1cb0e990aedddc47dd",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "cc59eb1a54e13469583f36446fdcc2ef9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c2682f6a4544b414984c0bb9ac6a25321",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "cbfd1daf5051045c4a2bb66c9c9c3a5f3",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c1c3c0b9daad1496f8e749c1e02f2b194",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c2a70690d9e9349948d4b279bf9a0f25e",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "cae5c3bf4c84e48b88d3d661a344e2b27",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cc8dddd47f5a64101a39f233dd30282a6",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "c2ce5849f68644573b30d079a85366f8e",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "c8370f2b6e07842d1995fefae2990a896",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c81a2d49c47b04bb698079192491c587c",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c1de263546b1f46dabadb3017772f91e1",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "c454e694ba9404173ab4f153091451376",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/55",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "c0488c57b05c4487f9e9c92ab86bcd9a9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/56",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "c67fc7e9c55e14b7a9ab4e81c0fae3bd4",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/57",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "cb66ee0ec1d1f406b88f8c969ee5764b0",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/58",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "cf7c3758f6d5c4b6394eb41b3a530c8c9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "c5a5a0b19ce384ec8af55a910f72918e2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c1e744ef852184b1e819a1240ccadd027",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c580f823805d24a5191ddde2ac587e2c9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "c22b3455ff3174a5ea3180fffd1aa8325",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "cc6e63b590e9f49ed8aee01242ee69be6",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "cf365a40111974f778c4c10916f594903",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/65",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c598faf4267274f95afc449590be9e3f2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c88a3b6951a044120b4f85d33c6bba3fd",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/67",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c76a7618b9d1942409ad3130d9194edc4",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/70",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c46025d134e264a22a5bf6dcb8ca3d8ac",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/73",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c6c21b6c71b884b16b01e0494d49f7f06",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/74",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "c77752041318c47d5ae3b80243a5eda6f",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "cc5ae15c0778448adb86bea36684da80c",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Remark_Submit",
    "id": "c2aaf10fc34cb4bb6ac8b41038c1a2e5a",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/77",
    "properties": {
      "text": "* Remark * {{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "qZstaJ0RU",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Finised1",
    "id": "cda082c491fcd48ff837f3fe44825e560",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "cc0c3f7f495cb4b43bef5ffa587e701a9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cb888672e90c94eaabd4569b67e4a644b] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "ced171ab18e854e08845e0718c537044a",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [cc0c3f7f495cb4b43bef5ffa587e701a9].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cf31ab1a4941f4cab82be80ee85049bf1",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[physical_date] }}\n        {{ date [cc0c3f7f495cb4b43bef5ffa587e701a9].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "ce26a2e6f669e427da6b22ec18de46ce2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [cc0c3f7f495cb4b43bef5ffa587e701a9].[results_date]}}\n        {{ date [cc0c3f7f495cb4b43bef5ffa587e701a9].[results_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c7b99889c2cfb41248b59bc4c254f958d",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [cc0c3f7f495cb4b43bef5ffa587e701a9].[Supervisor_Date]}}\n              {{ date  [cc0c3f7f495cb4b43bef5ffa587e701a9].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c8883c137a4234d02b4b8226823ad203c",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [cc0c3f7f495cb4b43bef5ffa587e701a9].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "cc9cea9072b144370a39f3f87b1c1d687",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[submit_date] }}        {{ date [cc0c3f7f495cb4b43bef5ffa587e701a9].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "c6ff5a35141ce46b0b99590c899a7b6c1",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [cc0c3f7f495cb4b43bef5ffa587e701a9].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "cac949cc254164dffbc0425784b7075aa",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [cc0c3f7f495cb4b43bef5ffa587e701a9].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "c44f61f76a23a424280d8ccc3345752c6",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [cc0c3f7f495cb4b43bef5ffa587e701a9].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c31f2a2861a744d11b930033efd3d7225",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[Recieved_date] }}\n        {{ date [cc0c3f7f495cb4b43bef5ffa587e701a9].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "c50a0265da36647bca5c77e2bb0f6ca03",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "c4df98a22f4f94dd7890b8a2598c5bd1b",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "ce6e3b4a5721a4fa7a9043dc3bddb0daf",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "c0b23b71ebfd349dd88d79126b0250bd0",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c4b26b72171ab43b1aff27784b2b903ca] }}"
    }
  },
  {
    "component": "No.",
    "id": "cdbe3d6f994824bb1be07a89ffa5a2fe2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c29457db1ebf3478796811ed51e73c5f6",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[c0b23b71ebfd349dd88d79126b0250bd0].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "c56a0dd8594ff4259bec3424994752029",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [c0b23b71ebfd349dd88d79126b0250bd0].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c436e26df2d9b47348b9dee15abb9cab9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c9d0ea8ce97f745fc9e4531cdaf3b993f",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [c0b23b71ebfd349dd88d79126b0250bd0].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "c29121de7d4f54bbbaa2dc49a731660a9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "c11d830eea783450482858d0085185059",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "c2e32a84e38604e84a83d4b48a4debcfe",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c0b23b71ebfd349dd88d79126b0250bd0].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "cc54021f3efc041bb9fa7e27c4587fb8d",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [c0b23b71ebfd349dd88d79126b0250bd0].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "c339e53a404fe4433a9ce2b9e2f8dc628",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c7701e14de6e341809dc68be1cefbac78",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c9f83c0cd9b3e46c899da62495f19104f",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c1014244664b74ca89b2e6d395d0365e7",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "cfb7f175ad1eb44d0a234f8beefa6630e",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/13",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "c5e3c557db82b45e89badd7ed19b36611",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "c94574f83de574b23971058ed038e297c",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c85efb584b18749629f8b49f9a0cf4b72",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "cf99161dbc9b34926a1767a131fffbba4",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c8d54439dbfdb447c9fe66f6ef1e14dec",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c92e0018e66aa4209b88ede35fa358b6c",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c6c2179862ceb41388e0dd4f05c372914",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cbf9b841ba8fe4a1f890cc3c3093c4494",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "c1faf9dbc95c04fdbb62016257981c5af",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "c28e8bb844dec46c4aef9bd465c8e1b54",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c8f64ab8f088d4749a187733fc7cb59eb",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "cf4501ad44e7f45469b546d501b8fa73a",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "c4986953191b74c2293dd1bbb609ad5ab",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/55",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "cdb1fe0b421ed43c3acaef49460cb5803",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/56",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "c896224d6c5314d1fac907b03c253b785",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/57",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "ca3bd8dfac92f49fe88aece8914c822f2",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/58",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c541a176081be4afbbc052c723665665a",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "cfa3004170178468b8011e87c468bddec",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c167911ebbc384e3ea22a8017c074ede6",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "cf89d59808fb74107b027072f1e08d5e5",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "c11c4159c51424a0a8131b8c9c8918261",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "c8096d83a21af4851a040d31c003801c9",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "ce315667728024593b4296492fbe54096",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/65",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c17978058216540bfaae7154861b06f80",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "ccf705d233d6547fcb16c594f799e450d",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/67",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c8b1808e5442e4943bbd5ab0ce0b088a9",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/70",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c91d5fb3fca154faaac8af14de5564106",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/73",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c43f78d5b097b4a7cb76682159ddb7cd9",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/74",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "ce1b2a7ba26574d6cba33715481c9ef6f",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "cbcd098f84c6e48868bbf5702ff75a9d6",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Remark_Submit",
    "id": "c13ea87f840fe4ada9f6d4ef0cf1c793b",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/1/_children/77",
    "properties": {
      "text": "* Remark * {{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "qZstaJ0RU",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Finised1",
    "id": "c6dd79c84db214882adaa995e4f638a48",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "c06a445dfb717433e89ecf7564a8bad9b",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c72767357414548f6b53d2807ebd9585a] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "c63a9958594b9412ba0ebd76f1bbd4ccf",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [c06a445dfb717433e89ecf7564a8bad9b].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c5c120c632dac4ad19ed1b37918aeadd2",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[physical_date] }}\n        {{ date [c06a445dfb717433e89ecf7564a8bad9b].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c9e67c379dd8548589da49d0c3574696d",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [c06a445dfb717433e89ecf7564a8bad9b].[results_date]}}\n        {{ date [c06a445dfb717433e89ecf7564a8bad9b].[results_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cb3d726c2cf7a4071b12d3b261a767999",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [c06a445dfb717433e89ecf7564a8bad9b].[Supervisor_Date]}}\n              {{ date  [c06a445dfb717433e89ecf7564a8bad9b].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c698f3882906744a9a30cfffc748e2a7f",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [c06a445dfb717433e89ecf7564a8bad9b].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c4a803d7c7fcd43b6b217ce2c068cb1f0",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[submit_date] }}        {{ date [c06a445dfb717433e89ecf7564a8bad9b].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "c9c126f8128c04b8b9335de9c34bc1ab6",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [c06a445dfb717433e89ecf7564a8bad9b].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "c0a8fb317fc5b44979d1ad29c6d04a528",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [c06a445dfb717433e89ecf7564a8bad9b].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "ce850cd0cb5eb465cb1469f8c5c4b379f",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [c06a445dfb717433e89ecf7564a8bad9b].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "ca99cfaf909344e36ab06388dc84de26c",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[Recieved_date] }}\n        {{ date [c06a445dfb717433e89ecf7564a8bad9b].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "c7ac4b7737bc44cc7bbae66ca46d53eab",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "c80266a11034946439258ddf40ce31f2b",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "c92d3fe0ce3d046f093077df66a97a089",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/3/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "c8c879d5a632447378fdd1c01552fb6c9",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c8dda5676e6634e6ba0b7cc69df7ff189] }}"
    }
  },
  {
    "component": "No.",
    "id": "c6ef19ab3a75a4c57a8044606a2ff03bb",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "cc6dd9d3d64644239a875a50523609269",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[c8c879d5a632447378fdd1c01552fb6c9].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "c2232fd447d974dc9a6b40cf9e663e931",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [c8c879d5a632447378fdd1c01552fb6c9].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "ccb59b3f92a604b8084c8ae90ea5f3a99",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [c8c879d5a632447378fdd1c01552fb6c9].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c9425d201301043c59165278adb56123a",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [c8c879d5a632447378fdd1c01552fb6c9].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "cd076403b64a944e9a54ca2c67899cb3d",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [c8c879d5a632447378fdd1c01552fb6c9].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "c72dd59b6c3bb48868037006800eb923f",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "cc737882a53204fe68cdcc19b2053b8df",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c8c879d5a632447378fdd1c01552fb6c9].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "c1a990355369e4a02a0e4d088747fc267",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/4/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [c8c879d5a632447378fdd1c01552fb6c9].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "c181c4ecbc2384109a9a015e6dc115b91",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c79294bb99b27416f853d7e570709ee7c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c03e9f4d4db80412798e8aa785c83edd7",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c8c38889d78f440a3aa2b19328768215a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "c369c5177c1fd4414918f780dcec1d985",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/13",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "ca97a7eae48264ac89cef099041d4cf86",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "c0b6200fa4207474791e36979c45756fb",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c127abf8fe01747e1a88c56f4d6ada1ac",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "cefde917575564e60befa706303de08d8",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c62dbac1df9ee4018b2223587cdbe8b4d",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c8a249acfc235409f9cd8653ce49380cb",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c146f219428594632b01d1b3a013b2fee",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cd33a129584684c8cb367eb78461496e7",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "c5532a800a475453e92695e21a336c02c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "cf413f2f1315a4d1d8c253098c4040fbc",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c39c470c64d09470aafd1066ebf6f712c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c8ad03a91c48a4a88b101d41fc17aa5d5",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "c40b55d5bcb934644b719efceee5cc650",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/55",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "cc2a33f9e0076429c86a2c439848ff3a1",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/56",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "c03ea94637a124cb99d77014c12872b2a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/57",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "cb073ec96e1024a278de458794dae401c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/58",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c2068dc47d93349919703f95ae3eeb64a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "cefeb1c32837844e696c089f465923299",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c6ae52a73d10f4329b7871a6577db2353",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c28a554febb9f499aa2d772b9952f5012",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "c7b9b9315a3e548528681d1dac96d30af",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "c730175b5f772446eb3e535c518e82880",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "c690d8b994729475ea313eae24f7db379",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/65",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c2530e6fee06e4e2495cf111faa312703",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c93b5059638b14858956cb52a5eae780e",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/67",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c13157ee60e044d9eab5a579c53e24b49",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/70",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "ca48f44076f7046e59dee0c81660cde3b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/73",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c3aed7d953b7648c79a610173fb20b1c0",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/74",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "c4e6aeb53d8344d38a0dcb5c14bc892ff",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "c9a89bb0dd2424124af9dd5e24b21eefd",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Remark_Submit",
    "id": "ce44222ddc18e4a159de1aa5c0c477695",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/1/_children/77",
    "properties": {
      "text": "* Remark * {{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "qZstaJ0RU",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Submit_Remark] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Finised1",
    "id": "c59ade19c1b9f42cc8881d9d534863911",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "c0d21d271682c4302a4a2339809588ced",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ccb96548ec9444ded965e0572ab802b89] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "c28d8faaf0dfb473da5b5ae0ab216dcb6",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [c0d21d271682c4302a4a2339809588ced].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cccc7e0414d9b45f2aec2fc9dcee1d04c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[physical_date] }}\n        {{ date [c0d21d271682c4302a4a2339809588ced].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cdb38e69efd184571934de9612735fe1c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [c0d21d271682c4302a4a2339809588ced].[results_date]}}\n        {{ date [c0d21d271682c4302a4a2339809588ced].[results_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c596cc9921b83450eb2bc6aebd8fda790",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [c0d21d271682c4302a4a2339809588ced].[Supervisor_Date]}}\n              {{ date  [c0d21d271682c4302a4a2339809588ced].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c2a7193f168794a208d74f457a3d75f13",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [c0d21d271682c4302a4a2339809588ced].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "ce8755dabbdd149b0a545ef538e4bf144",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[submit_date] }}        {{ date [c0d21d271682c4302a4a2339809588ced].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "ccaf921697ba749b79917cab98ba8e827",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [c0d21d271682c4302a4a2339809588ced].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "cb53cae6dbcb640bf822fe505c222804a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [c0d21d271682c4302a4a2339809588ced].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "ccc7b3e5982a64ed6a3a159bd82c4681b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [c0d21d271682c4302a4a2339809588ced].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c92c44eafa1a14e9d99be800100cd76d3",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c7e91e25676434e4eb57c8dccc9a27243].[Recieved_date] }}\n        {{ date [c0d21d271682c4302a4a2339809588ced].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "c468e359c7ce24856918243fd78d358fa",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "c958e5488c2c34e518ce530fd4e9d0e88",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "c8c5f76aaf3af42e3847dea8d82093982",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/3/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "cb3671dbfe7ef4550b3371be2938ea272",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c0f1bc9bd7b384fc59eea1b87a39b6ebb] }}"
    }
  },
  {
    "component": "No.",
    "id": "ccfe469040c3c474e8c57467089bcac3b",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c3adcf141b181474c8df0425028c410f9",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[cb3671dbfe7ef4550b3371be2938ea272].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "cf9a8775b7b974af3a0b0f965d1eab7aa",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [cb3671dbfe7ef4550b3371be2938ea272].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "cf676e688a37d4bb6ac85e38d9e10a3b2",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [cb3671dbfe7ef4550b3371be2938ea272].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c4651c38524c5451eb641166af16a0e71",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [cb3671dbfe7ef4550b3371be2938ea272].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "tXev9tLCY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-red-600)",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "c31184f05933a47f79339bf40cab17cc7",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [cb3671dbfe7ef4550b3371be2938ea272].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "c21deaf0cbb304bc98089c5b193a8448c",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "cd5f5ce10030541008e1f7fc03b41ec9e",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [cb3671dbfe7ef4550b3371be2938ea272].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "cc519eecce8674cdba06360575e03363a",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/4/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [cb3671dbfe7ef4550b3371be2938ea272].[tpc] }}"
    }
  },
  {
    "component": "Temperature Table",
    "id": "c5cc5e37e55f745d09e700c098fc44604",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c31a9121eb82a4187be5f76e354237d8e] }}",
      "customOptions": [
        {
          "id": "r0GUtofgc",
          "label": "30°C",
          "value": "30"
        },
        {
          "id": "1mT56g_IWU",
          "label": "55°C",
          "value": "55"
        }
      ]
    }
  },
  {
    "component": "Temperature30 Table",
    "id": "c8a6f7e7485d74072bb295cc9bc5740ac",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/0/_children/1",
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
          "label": "status",
          "field": "status",
          "active": true,
          "width": 100
        },
        {
          "label": "code",
          "field": "code",
          "active": true,
          "width": 120,
          "format": null
        },
        {
          "label": "pH",
          "field": "pH",
          "active": false,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": false,
          "width": 80
        },
        {
          "label": "Machine1",
          "field": "Machine1",
          "active": false
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "remark",
          "field": "remark",
          "active": false,
          "width": 150
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
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "id_no",
          "field": "id_no",
          "active": false
        },
        {
          "label": "no",
          "field": "no",
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
                "value": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
              }
            ]
          }
        ]
      },
      "_conditions": [
        {
          "valueType": "string",
          "id": "vWfyAfzEU",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c5cc5e37e55f745d09e700c098fc44604].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Temperature55 Table",
    "id": "c017ca6f95c714883a776a641abe51b72",
    "path": "/_children/0/_children/0/_children/0/_children/6/_children/0/_children/2",
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
          "label": "status",
          "field": "status",
          "active": true,
          "width": 100,
          "format": ""
        },
        {
          "label": "code",
          "field": "code",
          "active": true
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "ph",
          "field": "ph",
          "active": false,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": false,
          "width": 80
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
          "label": "no",
          "field": "no",
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
                "value": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[SamplingID] }}"
              }
            ]
          }
        ]
      },
      "_conditions": [
        {
          "valueType": "string",
          "id": "vWfyAfzEU",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c5cc5e37e55f745d09e700c098fc44604].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
