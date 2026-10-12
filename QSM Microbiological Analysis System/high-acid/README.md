# Screen: /high-acid

ค้น Sampling High แล้วทำฟอร์มส่ง/รับตัวอย่าง. Submitted Save ตรวจ Valid_Submit ก่อน Update_HighAcid_Submitted_Sampling; Recived Save ตรวจ Vaild_Received ก่อน Update_HighAcid_Recevied และล็อก Production. มีรายการ Brik ผ่าน CallBackTable และบันทึกวัน check_date/check_date2.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_b34eda9cf9a649d787d8107865a2016e`
- Route: `/high-acid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 113

## Query dependencies

- [CallBack Sampling_HighAcid](<../database/Query/CallBack Sampling_HighAcid.sql>)
- [CallBackTable](<../database/Query/CallBackTable.sql>)
- [Save CheckDate HighAcid](<../database/Query/Save CheckDate HighAcid.sql>)
- [Update_HighAcid_Recevied](<../database/Query/Update_HighAcid_Recevied.sql>)
- [Update_HighAcid_Submitted_Sampling](<../database/Query/Update_HighAcid_Submitted_Sampling.sql>)

## Components

| Type | Count |
|---|---|
| heading | 36 |
| text | 18 |
| booleanfield | 13 |
| container | 12 |
| button | 10 |
| stringfield | 8 |
| datetimefield | 4 |
| dataprovider | 2 |
| repeater | 2 |
| formstep | 2 |
| divider | 2 |
| form | 1 |
| buttongroup | 1 |
| modal | 1 |
| gridblock | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| SamplingID |  | Please input SamplingID | ไม่ได้กำหนด |
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| YMbox | Physical_T |  | ไม่ได้กำหนด |
| SubmitBy | Submit_by | Please input The EmpolyeeID | ไม่ได้กำหนด |
| Submit_date | Submit_date |  | ไม่ได้กำหนด |
| Sub_Remark | Submit_remark |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| Spec_Remark | Other_Spec |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| Result Complete | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| Result Complete | ab_spec |  | ไม่ได้กำหนด |
| Result De_Complete | De_Complete |  | ไม่ได้กำหนด |
| Result Packaging | Packaging |  | ไม่ได้กำหนด |
| incom_spec_re | incom_spec_re |  | ไม่ได้กำหนด |
| De_incom_spec_re | De_incom_spec_re |  | ไม่ได้กำหนด |
| ab_spec_re | ab_spec_re |  | ไม่ได้กำหนด |
| recieved_by | recieved_by | Please input the EmployeeID | ไม่ได้กำหนด |
| recieved_date | recieved_date |  | ไม่ได้กำหนด |
| Check date | check_date |  | ไม่ได้กำหนด |
| Check date2 | check_date2 |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Search — onClick

Config path: `/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c94709eafc9174906a5da26aee72dc31f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "kxnyxUVa7"
  }
]
```

</details>

### Submitted Save — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/21`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Valid_Submit; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Valid_Submit] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Valid_Submit] }} |
| 4 | Execute Query | queryId=Update_HighAcid_Submitted_Sampling |
| 5 | Show Notification | type=success; message=Submitted Successfully! |
| 6 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Valid_Submit",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst items = [\n  {name: 'Submit By', value: $(\"[caaf3be9377fb4e9793a3780afe841c57].[Submit_by]\")},\n  {name: 'Submit Date', value: $(\"[caaf3be9377fb4e9793a3780afe841c57].[Submit_date]\")}\n];\n\nfor(const i of items) {\n  if(!i.value) {\n    return \"Please input the \" + i.name;\n  }\n}\n\nconst submitBy = String($(\"[caaf3be9377fb4e9793a3780afe841c57].[Submit_by]\")).trim();\n\nif(!/^\\d{6}$/.test(submitBy)) {\n  return \"Submit By must be exactly 6 digits\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "AGLNDpIXH"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Valid_Submit] }}"
    },
    "##eventHandlerType": "Show Notification",
    "id": "6RmKUqzYl"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Valid_Submit] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "dJYgSoFKe"
  },
  {
    "parameters": {
      "queryParams": {
        "submit": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Submit_by] }}",
        "submit_date": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Submit_date] }}",
        "tpch": "{{ [caaf3be9377fb4e9793a3780afe841c57].[TPCH] }}",
        "Y_M": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Y_M] }}",
        "Physical": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Physical_T] }}",
        "R_Temp": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Room_Temp] }}",
        "Temp8": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Temp0_8] }}",
        "Fzer": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Feezer] }}",
        "OBox": "{{ [caaf3be9377fb4e9793a3780afe841c57].[OtherSpecBox] }}",
        "OT_Spec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Other_Spec] }}",
        "Sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "SubRemark": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Submit_remark] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "notificationOverride": true,
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_42105532df4943d6af6ae909cf8fb625",
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "x9fo0T-b0"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Submitted Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "WHVLnmca7"
  },
  {
    "parameters": {
      "componentId": "c94709eafc9174906a5da26aee72dc31f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "qEWbQit-G"
  }
]
```

</details>

### Recived — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/22`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=High-Acid Form; type=specific |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "type": "specific",
      "componentId": "caaf3be9377fb4e9793a3780afe841c57",
      "number": "2"
    },
    "##eventHandlerType": "Change Form Step",
    "id": "kYkVOyu8J"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/23`

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
      "url": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "ZQViZvLx8"
  }
]
```

</details>

### Recived Save — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/29`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Vaild_Received; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Vaild_Received] }} |
| 3 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaild_Received] }} |
| 4 | Execute Query | queryId=Update_HighAcid_Recevied |
| 5 | Clear Form | componentId=High-Acid Form |
| 6 | Show Notification | type=success; message=Received Successfully! |
| 7 | Refresh Data Provider | componentId=Sampling HighAcia |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Vaild_Received",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst items = [\n  {name: 'Received By', value: $(\"[caaf3be9377fb4e9793a3780afe841c57].[recieved_by]\")},\n  {name: 'Received Date', value: $(\"[caaf3be9377fb4e9793a3780afe841c57].[recieved_date]\")}\n];\n\nfor(const i of items) {\n  if(!i.value) {\n    return \"Please input the \" + i.name;\n  }\n}\n\nconst Receivedby = String($(\"[caaf3be9377fb4e9793a3780afe841c57].[recieved_by]\")).trim();\n\nif(!/^\\d{6}$/.test(Receivedby)) {\n  return \"Received by must be exactly 6 digits\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "ut7FRQewm"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "duration": "3000",
      "message": "{{ [state].[Vaild_Received] }}"
    },
    "##eventHandlerType": "Show Notification",
    "id": "-ZE_qrRGw"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "stop",
      "operator": "notEqual",
      "value": "{{ [state].[Vaild_Received] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "ofWaAxM4L"
  },
  {
    "parameters": {
      "queryParams": {
        "comp": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Complete] }}",
        "de_comp": "{{ [caaf3be9377fb4e9793a3780afe841c57].[De_Complete] }}",
        "package": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Packaging] }}",
        "inspec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[incom_spec] }}",
        "de_inspec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[De_incom_spec] }}",
        "abspec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[ab_spec] }}",
        "incomp_respec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[incom_spec_re] }}",
        "de_incomp_respec": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_incom_spec_re] }}",
        "ab_respec": "{{ [caaf3be9377fb4e9793a3780afe841c57].[ab_spec_re] }}",
        "recieved": "{{ [caaf3be9377fb4e9793a3780afe841c57].[recieved_by] }}",
        "recieved_time": "{{ [caaf3be9377fb4e9793a3780afe841c57].[recieved_date] }}",
        "Sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "notificationOverride": true,
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4fd1fdbfa78e4882bea7df06373aaec0",
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "jvZHnC6CQ"
  },
  {
    "parameters": {
      "componentId": "caaf3be9377fb4e9793a3780afe841c57"
    },
    "##eventHandlerType": "Clear Form",
    "id": "UjJ2GtiLl"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "duration": "3000",
      "message": "Received Successfully!"
    },
    "##eventHandlerType": "Show Notification",
    "id": "J-YY7h-jV"
  },
  {
    "parameters": {
      "componentId": "c94709eafc9174906a5da26aee72dc31f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "3fBWYB5lo"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/34`

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
      "url": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "ZQViZvLx8"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/37`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Save CheckDate HighAcid |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Sampling": "{{ [cbbec13d752884cf2a93f87508d0ab040].[value] }}",
        "Checkdate": "{{ [c99908efed68c4b6598f2b1d4bca73a8c].[value] }}",
        "Checkdate2": "{{ [c2bdfce6691194baaaf6713b1f0ccbfc1].[value] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ad226178894b462e813886865db5f001"
    },
    "##eventHandlerType": "Execute Query",
    "id": "SaCYfDo6W"
  }
]
```

</details>

### c30f25c26c53c4206adf37569f32e74c0 — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/1/_children/0/_children/8/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=showlist_page; type=set; value=1 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "showlist_page",
      "type": "set",
      "value": "1",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "hwTCDiqvS"
  }
]
```

</details>

### cefc96006927a4cb18e030b2ee473acb3 — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/1/_children/0/_children/8/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=showlist_page; type=set; value=2 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "showlist_page",
      "type": "set",
      "value": "2",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "z6G7FQ9dy"
  }
]
```

</details>

### Doucument Edit — onClick

Config path: `/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c4b86ab30306e4d26ab48120a41920a86"
    },
    "##eventHandlerType": "Open Modal",
    "id": "4yAlPK0BW"
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
    "component": "Sampling HighAcia",
    "path": "/_children/0/_children/2",
    "dataSource": {
      "label": "CallBack Sampling_HighAcid",
      "name": "CallBack Sampling_HighAcid",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_5b555ae892f4463397d709f40263d313",
      "type": "query",
      "queryParams": {
        "SamplingID": "\n[JavaScript binding]\nlet samp = $(\"[cbbec13d752884cf2a93f87508d0ab040].[value]\") || \"\"; return samp.split(\"|\")[0];\n// return \"QSM-20260725-0530-01\";\n[/JavaScript binding]\n"
      },
      "currentQueryName": "CallBack Sampling_HighAcid",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "High-Acid Form",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0",
    "dataSource": {
      "label": "Sampling high",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling%20high"
    }
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [cbbec13d752884cf2a93f87508d0ab040].[value] }}",
        "PageNo": "{{ [state].[showlist_page] }}"
      },
      "currentQueryName": "CallBackTable",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 50
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
    "id": "cf604bada2d3b4f40bfe0ca54d5bc8d5e",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "1k6oDIBVz",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "HighAcia Repeater",
    "id": "c904bfcb053894765a7d6a633f1b82011",
    "path": "/_children/0/_children/2/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c94709eafc9174906a5da26aee72dc31f] }}"
    }
  },
  {
    "component": "Mac_name",
    "id": "c1b7e2f44c5b4419fb8f792ce2e5fb24d",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[Machine_Name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "cab64fd4eb18e4f52bf630df53b64d2ca",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/5",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "c7f67d3a5b5b74be49ac1611ef395d1f5",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/10",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "cebca6defef0a4c64b728f4a4f26961bb",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/11",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Y_M] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "c0285d42b01704ca7b272137b2990c713",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/13",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Physical_T] }}"
    }
  },
  {
    "component": "Submit:",
    "id": "c45cd0c7694fa4cceb37aa86c9e552b35",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/14",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "SubmitBy",
    "id": "c077fb2221c9f4f07bf0b5c305fa9eb1f",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "U1nJ71FC5",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submit_date",
    "id": "c74e5f91c253e44c0a3c7140894c2607f",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/16",
    "properties": {
      "defaultValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Submit_date] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "U1NJUvHRB",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_date] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submit Result",
    "id": "c91cb758f31ea4b3d820136c171c69e92",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/17",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submit Result Date",
    "id": "c4f5be1d6335f441db3c9a065553eb1cd",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/18",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submitted Result Name",
    "id": "c9001d5aa6c574ecfa7819b5b608714bc",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/19",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[SubmitBy_Name] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "F6DSoZntS",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submitted Result Name",
    "id": "cf12ce45335dc4e4db2596517531ba421",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/20",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_Time] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "IWDF6IgK9",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submitted Save",
    "id": "cd6be80c99171494cb656ac5437fe7373",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/21",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Wv-4k3WfN",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recived",
    "id": "c4744cf09310346cdb2da8864f1250cfc",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/22",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Wv-4k3WfN",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Sub_Remark",
    "id": "cd50fe715731c4513b68072f2c0af0d87",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/25",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Submit_remark] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "ce1db5d30f6914ef0ac0e7dec6bc8c382",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1/_children/5",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Room_Temp] }}"
    }
  },
  {
    "component": "Temperature 0-8°C",
    "id": "c41e02b354f1c4525bda0217c9886186b",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1/_children/6",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Temp0_8] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "c22bd2085b39747de8688fa97a39bae41",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1/_children/7",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "ceeaf3a3df885471d906cd9ef54944af7",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1/_children/8",
    "properties": {
      "defaultValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Spec_Remark",
    "id": "cf30d439c48264b33abf50a54e29459c9",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1/_children/9",
    "properties": {
      "defaultValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[Other_Spec] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "x__L1RsFl",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[OtherSpecBox] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result Complete",
    "id": "c6fbca75937e143eba12753527db74086",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/13",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Complete] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "381rMkPAF",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Complete] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result Complete",
    "id": "c08f278af167e4939a5e832fdd6800723",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/14",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[incom_spec] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "381rMkPAF",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[incom_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "De_Complete",
    "id": "c72417d325bd145dab742168576363210",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[De_incom_spec] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "381rMkPAF",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_incom_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result Complete",
    "id": "c93cd00ed38b24f228d0922b3200c870d",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/16",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[ab_spec] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "381rMkPAF",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[ab_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result De_Complete",
    "id": "c85bfede8b3324ff09aad7ae4c8013b74",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/17",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_Complete] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "tl2i7NZp_",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_Complete] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result Packaging",
    "id": "c8108d8bb80524bcd846633dfd101acf2",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/18",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Packaging] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "QvyrlcOIz",
          "action": "update",
          "operator": "equal",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[Packaging] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Result Amount",
    "id": "c6217ef5ca2d64bbd94aa0d82f8693383",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/19",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[amount] }}"
    }
  },
  {
    "component": "incom_spec_re",
    "id": "c47116d685bbb45658d5022de64a52046",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/20",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_incom_spec_re] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "ZV96FhCbi",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[incom_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "De_incom_spec_re",
    "id": "c8ea2d935668a498b8f5ae1cc97b12629",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/21",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[De_incom_spec_re] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "ZV96FhCbi",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[De_incom_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "ab_spec_re",
    "id": "cd4cac09968174afc9fb62786a5caac3b",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/22",
    "properties": {
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[ab_spec_re] }}",
      "_conditions": [
        {
          "valueType": "boolean",
          "id": "ZV96FhCbi",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [caaf3be9377fb4e9793a3780afe841c57].[ab_spec] }}",
          "referenceValue": "True"
        }
      ]
    }
  },
  {
    "component": "Received By:",
    "id": "cbd8163d22d94413c8c36eda21dcd0e72",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/23",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Received By:",
    "id": "cdfc9127c18984943aa6c14bfa0a4d31f",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/24",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Check Date :",
    "id": "c53723b31b2fe42c18c94a89069978afa",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/25",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "-",
    "id": "cde1010e3b3fa415baa0ef4892c4f4318",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/26",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "recieved_by",
    "id": "c45581704ebeb4e2b9f371e44ee2bdc0f",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/27",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "8eeMu3jQt",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "recieved_date",
    "id": "caa8fdf9c019d42f6934f3ca5cb4b8ef1",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/28",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qOwyIsoMb",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_date] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recived Save",
    "id": "c6d3ca4e6d80e4302b1024732ee963e4b",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/29",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "YdCeVjRWz",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved Result",
    "id": "ca1f33809f8984514bc54052b17867447",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/30",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved Result",
    "id": "c8c980d064b004147b70158e15b42354a",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/31",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "hK9fDtrNA",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved Name Result",
    "id": "ca949408249654a3282ca10f293acf887",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/32",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[Recevie_Name] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "VKFzEaQyf",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved Date Result",
    "id": "c05cb3d033b684472aad1aaaa16336344",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/33",
    "properties": {
      "text": "{{ [c904bfcb053894765a7d6a633f1b82011].[Recieved_Time] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Jdi0JdAKO",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[recieved_by] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Check date",
    "id": "c99908efed68c4b6598f2b1d4bca73a8c",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/35",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[check_date] }}"
    }
  },
  {
    "component": "Check date2",
    "id": "c2bdfce6691194baaaf6713b1f0ccbfc1",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0/_children/36",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [c904bfcb053894765a7d6a633f1b82011].[check_date2] }}"
    }
  },
  {
    "component": "showlist_page",
    "id": "c614a0539b5b745f8b5d933ff43ac7070",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/0/_children/8",
    "properties": {
      "buttons": [
        {
          "_id": "cd614bb8aeeb6458c9f11973d70f037c6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c30f25c26c53c4206adf37569f32e74c0",
          "text": "Page 1",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "c614a0539b5b745f8b5d933ff43ac7070",
          "onClick": [
            {
              "parameters": {
                "key": "showlist_page",
                "type": "set",
                "value": "1",
                "persist": null
              },
              "##eventHandlerType": "Update State",
              "id": "hwTCDiqvS"
            }
          ]
        },
        {
          "_id": "c140653015af54b918a1fe9e5f51f8864",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cefc96006927a4cb18e030b2ee473acb3",
          "text": "Page 2",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c614a0539b5b745f8b5d933ff43ac7070",
          "onClick": [
            {
              "parameters": {
                "key": "showlist_page",
                "type": "set",
                "value": "2",
                "persist": null
              },
              "##eventHandlerType": "Update State",
              "id": "z6G7FQ9dy"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "c9541b71bd527477db709a6b34fc03793",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c3a6c43d997a4444480dccf5ffb710c0c] }}"
    }
  },
  {
    "component": "No",
    "id": "c104c5e766d754f048d86afcb42268ac3",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c9541b71bd527477db709a6b34fc03793].[No] }}"
    }
  },
  {
    "component": "Status",
    "id": "cfe461630a8c744a6ba5fd38fcafadb55",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [c9541b71bd527477db709a6b34fc03793].[status] }}"
    }
  },
  {
    "component": "Code",
    "id": "c98de0d0edca8406fa38a5497c7fc733e",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [c9541b71bd527477db709a6b34fc03793].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "cd4b4a7a6438649c2958f9f8bf1f6be94",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/3",
    "properties": {
      "text": "{{ [c9541b71bd527477db709a6b34fc03793].[Flavour] }}"
    }
  },
  {
    "component": "New Table",
    "id": "c39465bdbbb8843abab2f478a1880101c",
    "path": "/_children/0/_children/4/_children/0/_children/0",
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
          "label": "SampID",
          "field": "SampID",
          "active": false
        },
        {
          "label": "Code",
          "field": "Code",
          "active": true
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "TPC",
          "field": "TPC",
          "active": false
        },
        {
          "label": "Y_M",
          "field": "Y_M",
          "active": false
        },
        {
          "label": "Colour",
          "field": "Colour",
          "active": false
        },
        {
          "label": "Smell",
          "field": "Smell",
          "active": false
        },
        {
          "label": "Appearance",
          "field": "Appearance",
          "active": false
        },
        {
          "label": "Remark",
          "field": "Remark",
          "active": false
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": false
        },
        {
          "label": "Product",
          "field": "Product",
          "active": true
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
                "operator": "equal",
                "noValue": false,
                "value": "{{ [cbbec13d752884cf2a93f87508d0ab040].[value] }}"
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
