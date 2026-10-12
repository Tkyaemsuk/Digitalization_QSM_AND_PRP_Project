# Screen: /supervisor-report/:samp

รายงาน Low Acid พร้อมข้อมูลหัว/ราย Brik และ modal อนุมัติผ่าน Sup_Approve. ปุ่ม Approve มี Show Notification และ Continue/Stop ก่อน query; มีทั้งชุดรายงาน30/55 และ document modal. ต้องเทียบ provider ของแต่ละส่วนเพราะ Report_List_Page อ่านเฉพาะ30°C.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_452518ec72734c5aaae06cfe2ec44110`
- Route: `/supervisor-report/:samp`
- Access: `PUBLIC`
- Home: `False`
- Width: `Medium`
- Components: 464

## Query dependencies

- [CallBack Sampling](<../database/Query/CallBack Sampling.sql>)
- [Report_List_Page](<../database/Query/Report_List_Page.sql>)
- [Sup_Approve](<../database/Query/Sup_Approve.sql>)

## Components

| Type | Count |
|---|---|
| text | 316 |
| booleanfield | 72 |
| container | 23 |
| divider | 12 |
| heading | 9 |
| dataprovider | 7 |
| repeater | 7 |
| button | 4 |
| modal | 3 |
| image | 3 |
| form | 2 |
| stringfield | 2 |
| gridblock | 2 |
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
| Temperature Table |  | Please Select The Temperature | ไม่ได้กำหนด |
| SupCode | SupervisorBy |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### New Button — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Show Notification | type=warning; message=JavaScript binding (ดูด้านล่าง) |
| 2 | Continue if / Stop if | type=continue; operator=notEqual; referenceValue=; value={{ [c0825c1619c3d4b6faf05bf2d80ee88df].[SupervisorBy] }} |
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
      "message": "\n[JavaScript binding]\nlet code = $(\"[c0825c1619c3d4b6faf05bf2d80ee88df].[SupervisorBy]\");\nif(!code) {\n  return \"Please input The Supervisor Empolyee Code\";\n} else {\n  return \"\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
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
      "value": "{{ [c0825c1619c3d4b6faf05bf2d80ee88df].[SupervisorBy] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "ecwcLLhHr"
  },
  {
    "parameters": {
      "queryParams": {
        "SupCode": "{{ [c0825c1619c3d4b6faf05bf2d80ee88df].[SupervisorBy] }}",
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

### Temperature30 Table — onRowClick

Config path: `/_children/0/_children/0/_children/0/_children/4/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=c7abc9a4bcef44a3b8a3cb786311a8f66 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c7abc9a4bcef44a3b8a3cb786311a8f66"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "2M2uosX1W"
  }
]
```

</details>

### Temperature55 Table — onRowClick

Config path: `/_children/0/_children/0/_children/0/_children/4/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=c7abc9a4bcef44a3b8a3cb786311a8f66 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c7abc9a4bcef44a3b8a3cb786311a8f66"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "2M2uosX1W"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/0/_children/0/_children/0/_children/5/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Show Notification | type=warning; message=JavaScript binding (ดูด้านล่าง) |
| 2 | Continue if / Stop if | type=continue; operator=notEqual; referenceValue=; value={{ [c52c9cb63578f4aaf8eb57b445afbc815].[SupervisorBy] }} |
| 3 | Execute Query | queryId=Sup_Approve |
| 4 | Refresh Data Provider | componentId=c23ad76816ea34918baf8e630df0f44f3 |
| 5 | Show Notification | type=success; message=Supervisor Approve Successfully! |
| 6 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "\n[JavaScript binding]\nlet code = $(\"[c52c9cb63578f4aaf8eb57b445afbc815].[SupervisorBy]\");\nif(!code) {\n  return \"Please input The Supervisor Empolyee Code\";\n} else {\n  return \"\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
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
      "value": "{{ [c52c9cb63578f4aaf8eb57b445afbc815].[SupervisorBy] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "ecwcLLhHr"
  },
  {
    "parameters": {
      "queryParams": {
        "SupCode": "{{ [c52c9cb63578f4aaf8eb57b445afbc815].[SupervisorBy] }}",
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
      "componentId": "c23ad76816ea34918baf8e630df0f44f3"
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

### Approve — onClick

Config path: `/_children/0/_children/0/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c4620032bd9df4b68986c11de29f00278"
    },
    "##eventHandlerType": "Open Modal",
    "id": "mFPcUVE6H"
  }
]
```

</details>

### Doucument — onClick

Config path: `/_children/0/_children/0/_children/0/_children/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c3da8098c0e8847a8995810ff876865ce"
    },
    "##eventHandlerType": "Open Modal",
    "id": "UGJYhazkR"
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
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3",
    "dataSource": {
      "label": "CallBack Sampling",
      "type": "query",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "queryParams": {
        "SamplingID": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "55Product Data",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4",
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
              "value": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}"
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
        "SamplingID": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}"
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
        "sampID": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}",
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
        "SamplingID": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}"
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
        "sampID": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}",
        "PageNo": "2"
      },
      "currentQueryName": "Report_List_Page",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 40
  },
  {
    "component": "Supervisor",
    "path": "/_children/0/_children/0/_children/0/_children/5/_children/0",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
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
    "component": "Sampling Data",
    "id": "c55f19ab254d14c0e83bee6b70afb44a5",
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
    "id": "c19fa7e99a34f4b3f925eb07407e243a8",
    "path": "/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c55f19ab254d14c0e83bee6b70afb44a5] }}"
    }
  },
  {
    "component": "Product",
    "id": "c4830ce0d331e418dac76f08f6086c22f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c7bec57dc4b5a4e1eac749e8c0019144a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c9821b4c8e9484558b788438df600a071",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c86d03c1a80854e0093b955e014f086f9",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/8",
    "properties": {
      "text": "    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "cdd493f3d773f4b869ff1f85a4872c064",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/13",
    "properties": {
      "text": "         {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "cc5f376d636464ca98399ce66f61c9f0d",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "cc4bbd54e3b2e452896c049e3070cad80",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c817c19b7525047f4b26c68e08591dc10",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "c24a630a7be24499eb23938955f64030c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c7203155e288945cb8912e10f17346ef4",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c034d5cdf92f546b0902e8388c9bfe80c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "cd008f629676646f082c5c62da1287118",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cd66fd801a748436baae18c4ec3325be2",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "cbb6704b3eab9417e8c027dec12dbfed9",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "cfabc80c85d1449a0827da5b42e56765e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "cff1c17bcad1b43729b34f95107406381",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c2f508fa899a64c8bbeede09cdc5ace25",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "cdfbf00b4c9b64cbe9c01ad27691b67c2",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/55",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "cc059b61fe6c4412595868f0a9bdaa4cb",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/56",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "c4b276aa1c1824050af9dc592013d94f8",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/57",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "c7d411f2f88d148a8af3a8b500637509a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/58",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c761c340fc17242cbadc62a83cd65582a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "ceba82c686faf48d090ff9072cecfaed6",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c30fd3bbe5ad84713bb474c1b24b6f741",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "cd9ba1ef8cf024386a28e7c98005ddc6f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "cfdcd2bf883644568a1f1e80019c8ec8c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "ce84202ac116c4c2c8b015e6d300f1ef5",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "cc8f6fcbae8884a71801bdbc12fd76856",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/65",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c410bcbdec80c461bac4996fa714d040e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/66",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c5be75d52be4d498daf3147494a1851a8",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/67",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c9f1ca3ac659647ddbe06e5b68f8aabe1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/70",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c2f4048308fab42d39efaf64828291d0c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/73",
    "properties": {
      "text": "             {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c9dd0955aaf2145c5892e3f69f467157a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/74",
    "properties": {
      "text": "               {{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "c32fedfa337cf40a88b67927c7f7ecfb0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Plan55_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "c64ab311e74cc4ad08b588dcbe67f1a07",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Actual_CheckDate55_Format] }}"
    }
  },
  {
    "component": "Finised1",
    "id": "c578ae9e1afc34e278da137441fc48eaa",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Temperature2] }}    °C    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[dayFinished2] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "c71e96715804d4c11adfb84a1be19914f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cb7790f9306954aa6b8357cd53c874303] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "cc2a09f8b3ff84b068c58c56377f721c3",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [c71e96715804d4c11adfb84a1be19914f].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c49547eacd42d4e7d91291fc9ef886513",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[physical_date2] }}\n        {{ date [c71e96715804d4c11adfb84a1be19914f].[physical_date2]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c7067fcaa2b544ec0b8f6a297a771be10",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [c71e96715804d4c11adfb84a1be19914f].[results_date2]}}\n        {{ date [c71e96715804d4c11adfb84a1be19914f].[results_date2]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c1783f0a610e444ebbc583a2aeb041646",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [c71e96715804d4c11adfb84a1be19914f].[Supervisor_Date]}}\n              {{ date  [c71e96715804d4c11adfb84a1be19914f].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c3c494f5eeb8748b6bd3b6e884e39f428",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [c71e96715804d4c11adfb84a1be19914f].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c078a6e99695a45c7a38f98bcbac0ddac",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[submit_date] }}        {{ date [c71e96715804d4c11adfb84a1be19914f].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "caf9b6ec04af94835acb8a6ba984f85b9",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [c71e96715804d4c11adfb84a1be19914f].[physicals_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "c03024005c28b41c68b799f56ea25141c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [c71e96715804d4c11adfb84a1be19914f].[results_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "cb2b96387ee9747ccbd2a84af7cf8a940",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [c71e96715804d4c11adfb84a1be19914f].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c5c421debab4741849d337959c0ce3223",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[Recieved_date] }}\n        {{ date [c71e96715804d4c11adfb84a1be19914f].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "cf5b7a62781414e938fed64293e9606e6",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "c99304963f8694189acb381bb6972e61f",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "cd207849b29ee4a579f6cb3648d2047c0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_remark] }}"
    }
  },
  {
    "component": "55Product Data",
    "id": "c21c45600e850499084444d015f9e657b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4",
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
                "value": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[SamplingID] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "55Product Reapter",
    "id": "c7cf98645ef5748d9914c8b0904e0d37c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c21c45600e850499084444d015f9e657b] }}"
    }
  },
  {
    "component": "List",
    "id": "cac9baf3dec3a48a4bde1d15b84eaba4b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "X0Y_SMsGW",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[ph] }}"
        }
      ]
    }
  },
  {
    "component": "No.",
    "id": "c32ade6d8cb4b404bb51ede052bdba7c1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c8f7d6a94121c4169a522d6377e8fd459",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[c7cf98645ef5748d9914c8b0904e0d37c].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "cfa28f67a345d4625ae39701ab6942abe",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[ph] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[NewpH] }}",
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
          "newValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "caee80511fa104d4f9fddb54cc1bf466c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/3",
    "properties": {
      "text": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[NewpH] }}",
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
    "id": "c0fe7fd77251446e7aa0bc9e4cf1bbf42",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/4",
    "properties": {
      "text": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[NewATP] }}",
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
          "newValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c91a771e8fcef4989b4c66470e36fceee",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/5",
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
    "id": "c79d39c07de644f52935ed6284669bd87",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[colour] }}"
    }
  },
  {
    "component": "Smell55",
    "id": "cf87ab30cdc6449528558c1f9eff92cc4",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[smell] }}"
    }
  },
  {
    "component": "TPC55",
    "id": "c816a87fbbce240cc97ee4b03e50021ea",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/4/_children/0/_children/0/_children/8",
    "properties": {
      "text": "{{ [c7cf98645ef5748d9914c8b0904e0d37c].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "cfe0d00a9ad5c4b95841da4d7818f2c4b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "c8b1332e80de147d8892a156717d28f40",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "ca33090b37cfa4f1c943b2e9044cb8a29",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c001a3deb84f943a4a45ab41f92c8cd49",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "caee4c6b708704678ad9e3aac662cfd20",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/13",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "cdc5f5c60edba4179ac2e40950978c21c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "c8044b3f71c0f42a585458e469d0b2f5e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "ccc6fb385759c412caa97f9b35d2d2684",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "ca97dd4d63da64d87b60112bfc243d435",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "cbea973186c4a474a86c929e51aee56c1",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c3a10c29759b74126b1b0f999ccadcc72",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c8215ffa6379f4fbaad8a4cb79fe85a02",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "c67578260768648aabf5692ef1e5b50db",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "cc5f1d8761cd44c34a90cc3ef3bb9fa4d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "cc85e5b13300e488f9bd6d348fc17db67",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c9319a1c62c4b4a4cb3a7a6b57bb465ab",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "c6da57cf302d2488d8cd34f1e47d5d8eb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "cdf8b3622eb9247df8fbeceb24ba0af0d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/55",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "c7849c9e229ab45ce827459705b9d6dc7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/56",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "cc41fcde68e7a486e8cc54cfac95b2367",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/57",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "cb98186f93b004fa5b7cf39c0ddbd5607",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/58",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "cc07e567faeb0436e9f698f4f21d4123a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "c6235eaed975d44729fb54c848500122f",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c767a58bec89f4d77be44a6084834b84b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c8675033fa68347da985bd5c2a99b4d71",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "ce3fb097030f04060ba90d485d8987521",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "cb7998a629e3d4a18bea774b2befd133b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "c6cb9df2131d54b4f93da58b40b5c5181",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/65",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c8d03c5e51e054fceb88825fe3ab6ce7c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/66",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "cb7d394ab9c614ce1b688493ae90b95bc",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/67",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c373b83645f574218a96683301571bdc9",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/70",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "c4b8b707432d34e4db8e8dcaeeb53b85e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/73",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "caafd0833cc42440ea6727e88e51dc4ff",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/74",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "caf96b232843849088e2e0701a5a0b131",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "ccd8d4085526f41feb35827fa9f303dc7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Finised1",
    "id": "c740235fed4b64436ab8644e821f8e2a0",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Temperature] }}    °C    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "c81763b98d8d3473da12db923b782e003",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c909d990462894cb4afa0ecabe5efbefc] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "c13d7af6b772c44f2ac34d934fe7f75fa",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [c81763b98d8d3473da12db923b782e003].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "ce238e272ee844157a5e8acff221b5ea4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[physical_date] }}\n        {{ date [c81763b98d8d3473da12db923b782e003].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cf26a6c293364415b835702f802af6960",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [c81763b98d8d3473da12db923b782e003].[results_date]}}\n        {{ date [c81763b98d8d3473da12db923b782e003].[results_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cb1dd3beaed0c4f07aa776445c596d225",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [c81763b98d8d3473da12db923b782e003].[Supervisor_Date]}}\n              {{ date  [c81763b98d8d3473da12db923b782e003].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c5390e23f551b4eafb284799874c933ce",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [c81763b98d8d3473da12db923b782e003].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c13a27082674b4636bd5c994a97ace245",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[submit_date] }}        {{ date [c81763b98d8d3473da12db923b782e003].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "c5b3507fd8b3944088c04a96f40e701d7",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [c81763b98d8d3473da12db923b782e003].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "cfa147c83f9264155bd1346cc9b93c10d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [c81763b98d8d3473da12db923b782e003].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "c0bcf4f29afd14f3fbb97a163322ea656",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [c81763b98d8d3473da12db923b782e003].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "cbf712e67accf443fb7a4bc7d99e7933d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[Recieved_date] }}\n        {{ date [c81763b98d8d3473da12db923b782e003].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "c3c8194bfc6384391b2c86b615a9ee08e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "ce457a68fa21f403b89448cb70fdb6772",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "cc566d82a3283408fb0284499f134feff",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/19/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "cb59eb55aee004f2fb09ceedabcb30c98",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ca72cfd3ba14c4732b9d41a92fe6aa444] }}"
    }
  },
  {
    "component": "No.",
    "id": "c3edc4fe9fd7443efbbe41a4a46ecedcb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c707450d4b3554902bb7cc1ffc8bae3f9",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[cb59eb55aee004f2fb09ceedabcb30c98].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "c1023c435973f400c9b114a297e85f504",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [cb59eb55aee004f2fb09ceedabcb30c98].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewpH] }}",
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
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c31a9be32d2d8456eb4f3a098d2bb0557",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "cd53b18cc826048d79323b30ad3c827b5",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [cb59eb55aee004f2fb09ceedabcb30c98].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewATP] }}",
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
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "c1c254bcd4eca44c4ae6385d4ad0fa037",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "cc297d37b97c2412c94e66d01230f48c8",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "c73eabc1ca4ae40cdaad3ea1f3ae05bf4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [cb59eb55aee004f2fb09ceedabcb30c98].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "c1eff51084d2b45ceb6426e2c3f7d7ec8",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [cb59eb55aee004f2fb09ceedabcb30c98].[tpc] }}"
    }
  },
  {
    "component": "Product",
    "id": "cde2abff3609d42c58718618c2fb376fc",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "cb97a2ad34b3149ad9cd21d07115354bd",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c857bc5b2497d403d8beed606b78d2345",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c09b0d0199c484a0b9e2beaa0bf028c20",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "cd04fbd957dd54813b3bbd4c0dadc0149",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/13",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "c3ea5b606f5de419c932273cc875aad10",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "ca8a6ac933e49479bbcd159cf4b3b1404",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "ca9d8fec8bc174ef5be02cfdb3a2fb24a",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "ce0f21e50fec94b6f94046adc280b6e89",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c74a65c6f83fa4befae99f24daf6bb49c",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c51ad9fb6ff464019a879b6743e206507",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c0937f5ccc2df495c94cb0504ce5d139e",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cb211ed48a9eb43988279fe74782fdd9d",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "c7d38b65b9d9d4f94a9acd9edf338f73e",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "c3313d0dd61fc4614add908d46937b5fb",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c63f37d4c881c4022b774198c2cefb92e",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "cbb57b2bf085944b58c5af5f3650c2105",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[check55] }}"
    }
  },
  {
    "component": "Amount 1",
    "id": "ccef0caeb96784cdc88b23b1081421166",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/55",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity] }}"
    }
  },
  {
    "component": "Machine 1",
    "id": "cfb024e20f3c14ee5aa9d57658b362877",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/56",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Machine 2",
    "id": "cc3bdf5726e7549599cc1587084430d08",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/57",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount 2",
    "id": "c1bb547bc609d4e7c8278b1a9d7c1cf33",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/58",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Quanity2] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "ccc0e9e8cfec64b02854e65c7c3c8ffef",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "c1aae6ac016e6426c94a2c1f475f82873",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c18c136355fd34371b24b5372fd3e1797",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/61",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "cdac401d672d7477e9ff06d746e3550b2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/62",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "cd3289b015a884831b081637d0b12de33",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/63",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "cf1dec461adb440b6847f1f0e74e4422a",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/64",
    "properties": {
      "defaultValue": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Normal] }}"
    }
  },
  {
    "component": "Incomplete Specify",
    "id": "c4a8acaa39ba14e38b96cd84d015302c5",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/65",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Incomplete] }}"
    }
  },
  {
    "component": "Detail Complete Specify",
    "id": "c7c78a100e8fe4b95b0bb429ff574b460",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/66",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Detail_incomplete] }}"
    }
  },
  {
    "component": "Abnormal Specify",
    "id": "c66765aa98b9b4198984752bea1e70ad5",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/67",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Abnormal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "ceced82191ae74fa29e658e10cf360efb",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/70",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Amount_Samples] }}"
    }
  },
  {
    "component": "Size",
    "id": "cc10df9c2058f4a6c9b609fc597d8cfcd",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/73",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[Size] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "cbb739c4d15db47d38be83491267faeca",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/74",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before] }} - {{ [c19fa7e99a34f4b3f925eb07407e243a8].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "c0ee1bfc7bea24654a8c435a1da6b8692",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/75",
    "properties": {
      "text": "            {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "c18ee8d49a72c4e62a9661c29a61ff398",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/1/_children/76",
    "properties": {
      "text": "                   {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Finised1",
    "id": "c66754960834a4ca48f633ce129355ac3",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c19fa7e99a34f4b3f925eb07407e243a8].[Temperature] }}    °C    {{ [c19fa7e99a34f4b3f925eb07407e243a8].[dayFinished] }}   days"
    }
  },
  {
    "component": "Emp55 Repeater",
    "id": "cc0eb065ced80451c9c4e587440f62037",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ccc1fcbe6252645eaa7801d6f5b06d181] }}"
    }
  },
  {
    "component": "Supervisor",
    "id": "c13f2296a7440417087e158a96d3b48ee",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/5",
    "properties": {
      "text": "      {{ [cc0eb065ced80451c9c4e587440f62037].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c746a7e617333478290f1c8e9c0ea1a26",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/9",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[physical_date] }}\n        {{ date [cc0eb065ced80451c9c4e587440f62037].[physical_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cc1b5980f5bba418c854f5ef4243a5ca9",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/10",
    "properties": {
      "text": "      {{#if [cc0eb065ced80451c9c4e587440f62037].[results_date]}}\n        {{ date [cc0eb065ced80451c9c4e587440f62037].[results_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c59987eb68f7849029b21a2ef56c2af91",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/11",
    "properties": {
      "text": "             {{#if [cc0eb065ced80451c9c4e587440f62037].[Supervisor_Date]}}\n              {{ date  [cc0eb065ced80451c9c4e587440f62037].[Supervisor_Date]   \"DD/MM/YYYY\" }}\n            {{else}}\n            {{/if}}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c191f66aafee84acd9f2a1081676d6186",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/15",
    "properties": {
      "text": "{{ [cc0eb065ced80451c9c4e587440f62037].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c52c7357f013c4f5fa545653b68c1bccc",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/16",
    "properties": {
      "text": "       {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[submit_date] }}        {{ date [cc0eb065ced80451c9c4e587440f62037].[submit_date]  \"DD/MM/YYYY\" }}      {{else}}      {{/if}}"
    }
  },
  {
    "component": "PhysicalName",
    "id": "cc948af937ae94dd284f46cc0f5676009",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/17",
    "properties": {
      "text": "  {{ [cc0eb065ced80451c9c4e587440f62037].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "c100984f76abb41d2bd799230bc5088ec",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/18",
    "properties": {
      "text": " {{ [cc0eb065ced80451c9c4e587440f62037].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "c85bb7f002d6a4961a21c9f8d76742457",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/19",
    "properties": {
      "text": "    {{ [cc0eb065ced80451c9c4e587440f62037].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "cd3b2535540454ff9bc6474ba58ca0aa6",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/20",
    "properties": {
      "text": "    {{#if  [c19fa7e99a34f4b3f925eb07407e243a8].[Recieved_date] }}\n        {{ date [cc0eb065ced80451c9c4e587440f62037].[Recieved_date]  \"DD/MM/YYYY\" }}\n      {{else}}\n      {{/if}}"
    }
  },
  {
    "component": "re1",
    "id": "c7aa6d7e2526243cc9add4777509b7689",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/22",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "cd964a82ba8c94be2aeb0c80bb1647978",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "cfae9e79293184775a1587fa7f9bbcfb7",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/3/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_no] }}.{{ [c19fa7e99a34f4b3f925eb07407e243a8].[temp30_3_remark] }}"
    }
  },
  {
    "component": "30Product Repeater",
    "id": "cbeb530d52ebd44b99b97ed010279b4ca",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c1cc15747315a4eebb6f31b7fe82633f0] }}"
    }
  },
  {
    "component": "No.",
    "id": "c599bc1725b534126ac803fac91b5742c",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[no] }}"
    }
  },
  {
    "component": "Time",
    "id": "c8827558f808c472f9529352d62654763",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet d = new Date($(\"[cbeb530d52ebd44b99b97ed010279b4ca].[code]\"));\n\nreturn String(d.getHours()).padStart(2,'0') + \":\" +\n       String(d.getMinutes()).padStart(2,'0') + \":\" +\n       String(d.getSeconds()).padStart(2,'0');\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "pH",
    "id": "c27e1511767a6412dbd4dc7b42eceec71",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/2",
    "properties": {
      "text": "  {{ [cbeb530d52ebd44b99b97ed010279b4ca].[pH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewpH] }}",
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
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c9992ca73c474478f8a7fad418ab8ee54",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/3",
    "properties": {
      "text": "   {{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewpH] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewpH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atp",
    "id": "c06f69c8f89764d51af24b7591b352fc2",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/4",
    "properties": {
      "text": "        {{ [cbeb530d52ebd44b99b97ed010279b4ca].[atp] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "iR5skwNso",
          "action": "update",
          "operator": "empty",
          "setting": "color",
          "settingValue": "var(--spectrum-global-color-blue-400)",
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewATP] }}",
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
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "atpN",
    "id": "c74943ab9d64f4fa1b26541bf7a623742",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/5",
    "properties": {
      "text": "   {{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewATP] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[NewATP] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Colour30",
    "id": "c265d2f623f5f45939a664ae266a323a8",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/6",
    "properties": {
      "defaultValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[colour] }}"
    }
  },
  {
    "component": "Smell30",
    "id": "c28272dbd50404631a54d5052b28f4fd0",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [cbeb530d52ebd44b99b97ed010279b4ca].[smell] }}"
    }
  },
  {
    "component": "TPC30",
    "id": "cc14af5b6dc5842b990158366dc8a1c25",
    "path": "/_children/0/_children/0/_children/0/_children/3/_children/4/_children/0/_children/0/_children/8",
    "properties": {
      "text": "        {{ [cbeb530d52ebd44b99b97ed010279b4ca].[tpc] }}"
    }
  },
  {
    "component": "Temperature Table",
    "id": "c57656716430a4e29920b1582319b1544",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/0/_children/0",
    "properties": {
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
      ],
      "dataProvider": "{{ literal [c55f19ab254d14c0e83bee6b70afb44a5] }}"
    }
  },
  {
    "component": "Temperature30 Table",
    "id": "c43bd4bc0615d4599b8db98f46bc86a75",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/0/_children/1",
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
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": true,
          "width": 80
        },
        {
          "label": "code",
          "field": "code",
          "active": true,
          "width": 120
        },
        {
          "label": "pH",
          "field": "pH",
          "active": true,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": true,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": true,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": true,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": true,
          "width": 80
        },
        {
          "label": "remark",
          "field": "remark",
          "active": true,
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
          "label": "Machine1",
          "field": "Machine1",
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
                "value": "{{ [url].[samp] }}"
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
          "newValue": "{{ [c57656716430a4e29920b1582319b1544].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Temperature55 Table",
    "id": "ca78ae659b27d40ba8d6cc9f1f02be24a",
    "path": "/_children/0/_children/0/_children/0/_children/4/_children/0/_children/2",
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
          "label": "status",
          "field": "status",
          "active": true,
          "width": 80
        },
        {
          "label": "code",
          "field": "code",
          "active": true,
          "width": 120
        },
        {
          "label": "ph",
          "field": "ph",
          "active": true,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": true,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": true,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": true,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": true,
          "width": 80
        },
        {
          "label": "remark",
          "field": "remark",
          "active": true
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
                "value": "{{ [url].[samp] }}"
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
          "newValue": "{{ [c57656716430a4e29920b1582319b1544].[value] }}",
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
