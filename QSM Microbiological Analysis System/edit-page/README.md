# Screen: /edit-page/:sampid

หน้าปรับข้อมูล High Acid ใช้ Call_Edit_Page และ CallBackTable. ปุ่ม Edit เรียก Sup_Edit_PART เพื่อแก้ส่วน submit/receive/วันผลิต/วันตรวจและตั้ง lock=1 แล้ว refresh. state showlist_page ควบคุมรายการ Brik หลายหน้า.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_a89c1e34202c43548cce505d6aa30f5c`
- Route: `/edit-page/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 101

## Query dependencies

- [Call_Edit_Page](<../database/Query/Call_Edit_Page.sql>)
- [CallBackTable](<../database/Query/CallBackTable.sql>)
- [Sup_Edit_PART](<../database/Query/Sup_Edit_PART.sql>)

## Components

| Type | Count |
|---|---|
| heading | 31 |
| text | 16 |
| booleanfield | 13 |
| container | 11 |
| button | 8 |
| stringfield | 7 |
| datetimefield | 6 |
| dataprovider | 2 |
| repeater | 2 |
| divider | 2 |
| buttongroup | 1 |
| modal | 1 |
| gridblock | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| TPCbox | TPCH |  | ไม่ได้กำหนด |
| YMbox | Y_M |  | ไม่ได้กำหนด |
| Physical_T | Physical_T |  | ไม่ได้กำหนด |
| SubmitBy | Submit_by | Please input The EmpolyeeID | ไม่ได้กำหนด |
| Submit_date | Submit_date |  | ไม่ได้กำหนด |
| Sub_Remark | Submit_remark |  | ไม่ได้กำหนด |
| MFG Date |  |  | ไม่ได้กำหนด |
| EXP Date |  |  | ไม่ได้กำหนด |
| Room_Temp | Room_Temp |  | ไม่ได้กำหนด |
| Temperature 0-8°C | Temp0_8 |  | ไม่ได้กำหนด |
| Freezer | Feezer |  | ไม่ได้กำหนด |
| OtherSpecBox | OtherSpecBox |  | ไม่ได้กำหนด |
| Spec_Remark | Other_Spec |  | ไม่ได้กำหนด |
| Result Complete | Complete |  | ไม่ได้กำหนด |
| incom_spec | incom_spec |  | ไม่ได้กำหนด |
| De_Complete | De_incom_spec |  | ไม่ได้กำหนด |
| ab_spec | ab_spec |  | ไม่ได้กำหนด |
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

### Recived — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0/_children/0/_children/17`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=caaf3be9377fb4e9793a3780afe841c57; type=specific |

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

### Edit — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/0/_children/28`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Sup_Edit_PART |
| 2 | Refresh Data Provider | componentId=Edit |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "tpch": "{{ [c4125e6aa2a694412b9dea81f40737f5f].[value] }}",
        "Y_M": "{{ [cca940934ff8c488bab1d48e5b40c0f4e].[value] }}",
        "Physical": "{{ [c57cfb8fbead344f1bf2132e4c3e4b1f3].[value] }}",
        "R_Temp": "{{ [c74c9a877b5244ecd8cdbf1eb3f4ca9d8].[value] }}",
        "Temp8": "{{ [c87834ee0e3324457b14b973e5eb8be93].[value] }}",
        "Fzer": "{{ [cf7b23d37c0f44918831e611684ef1a54].[value] }}",
        "OBox": "{{ [cfca103d6801943cfb96359d68e4dc89a].[value] }}",
        "OT_Spec": "{{ [c6b0d2edab9684c5f95cb4b4889a970c8].[value] }}",
        "MFGcode": "{{ [cfb1749a6a812402197f1f6e6aa13580e].[value] }}",
        "EXPcode": "{{ [c98b874779f764dce86cdbfc0c9020d97].[value] }}",
        "Check1": "{{ [cd7b18fe4a1834f499e64c0033249d845].[value] }}",
        "Check2": "{{ [c0df08916a9dc4834be67fbd8fab43f54].[value] }}",
        "recieved": "{{ [c2e8864bd8bf647a9b49a6a17347259b1].[value] }}",
        "recieved_time": "{{ [c6554707e0a5846deb4d2d772c98ad9bb].[value] }}",
        "submit": "{{ [c2f79417b308a4b618383be176615e3c3].[value] }}",
        "submit_date": "{{ [c3384b151c99942c2bf820600e32e0740].[value] }}",
        "SubRemark": "{{ [cec24fa3b30f84f4f834c269dc642e844].[value] }}",
        "comp": "{{ [c96aab032b29c4589b5fc1280bab0e587].[value] }}",
        "de_comp": "{{ [c195d6892be624a8e8ca7deae36843ee7].[value] }}",
        "package": "{{ [c584034fdcd0c4d3bbd7e76a97979a650].[value] }}",
        "inspec": "{{ [cb9d983fa851a45a8bdc9572db1250ea0].[value] }}",
        "de_inspec": "{{ [ca40650c75bd64b5080543261baeceb6c].[value] }}",
        "abspec": "{{ [cdafa2eb8d1b84e959861da64c0796e59].[value] }}",
        "incomp_respec": "{{ [c5741c86c568e4d0cade56076ae86ef60].[value] }}",
        "de_incomp_respec": "{{ [c0ee791b31fe341ae8f4820ada85976ea].[value] }}",
        "ab_respec": "{{ [cddf857e9b03744598ecf52a321425543].[value] }}",
        "Sampling": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[SamplingIDH] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_101f00f790404b30bdc2e034ba4eaf26",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "dZSmRILBy"
  },
  {
    "parameters": {
      "componentId": "c5b5d19ab0d8b489d965ffdde40342b49"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "GeNo_J40h"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/0/_children/29`

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
    "id": "ZQViZvLx8"
  }
]
```

</details>

### c30f25c26c53c4206adf37569f32e74c0 — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2/buttons/0`

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

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2/buttons/1`

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

### c4f7354b97fe74042b2f12fbe6dd4e9b2 — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=showlist_page; type=set; value=3 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "showlist_page",
      "type": "set",
      "value": "3"
    },
    "##eventHandlerType": "Update State",
    "id": "8Ko49n2Yz"
  }
]
```

</details>

### c87a9d2d2da9546a0b0ab65220cb82854 — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2/buttons/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=showlist_page; type=set; value=4 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "showlist_page",
      "type": "set",
      "value": "4"
    },
    "##eventHandlerType": "Update State",
    "id": "kWSqG49K6"
  }
]
```

</details>

### c693f2ece84f74055895c3f117356bb4a — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2/buttons/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cc37747d42e0446fda576f862930830cb"
    },
    "##eventHandlerType": "Open Modal",
    "id": "wvclHCUOa"
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
    "component": "Edit",
    "path": "/_children/0/_children/0",
    "dataSource": {
      "label": "Call_Edit_Page",
      "name": "Call_Edit_Page",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_85e1570168e34e1db0a29eea593189ba",
      "type": "query",
      "queryParams": {
        "Sampling": "{{ [url].[sampid] }}"
      },
      "currentQueryName": "Call_Edit_Page",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "List Product",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1",
    "dataSource": {
      "label": "CallBackTable",
      "name": "CallBackTable",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626",
      "type": "query",
      "queryParams": {
        "sampling": "{{ [c904bfcb053894765a7d6a633f1b82011].[SamplingIDH] }}",
        "FillingDate": "",
        "sampID": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[SamplingIDH] }}",
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
    "component": "Edit Repeater",
    "id": "c924a80baf8b64be2a1f86fc289e511e3",
    "path": "/_children/0/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c5b5d19ab0d8b489d965ffdde40342b49] }}"
    }
  },
  {
    "component": "Mac_name",
    "id": "cf176bcacf5ff4a52a93f58114be9a68f",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "text": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[machine_name] }}"
    }
  },
  {
    "component": "Amount",
    "id": "c466faa575a984208a70bf0ce49515228",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/5",
    "properties": {
      "text": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[amount] }}"
    }
  },
  {
    "component": "TPCbox",
    "id": "c4125e6aa2a694412b9dea81f40737f5f",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/10",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[TPCH] }}"
    }
  },
  {
    "component": "YMbox",
    "id": "cca940934ff8c488bab1d48e5b40c0f4e",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/11",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Y_M] }}"
    }
  },
  {
    "component": "Physical_T",
    "id": "c57cfb8fbead344f1bf2132e4c3e4b1f3",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/13",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Physical_T] }}"
    }
  },
  {
    "component": "Submit:",
    "id": "c73d3ca50384042cc8c5e22a86e54d4d3",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/14",
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
    "id": "c2f79417b308a4b618383be176615e3c3",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Submit_by] }}",
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
    "id": "c3384b151c99942c2bf820600e32e0740",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/16",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Submit_date] }}",
      "_conditions": []
    }
  },
  {
    "component": "Recived",
    "id": "c454b323c12b24961a386be0682a6a51f",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/17",
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
    "id": "cec24fa3b30f84f4f834c269dc642e844",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/19",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Submit_remark] }}"
    }
  },
  {
    "component": "MFG Date",
    "id": "cfb1749a6a812402197f1f6e6aa13580e",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/21",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[MFG_code] }}"
    }
  },
  {
    "component": "EXP Date",
    "id": "c98b874779f764dce86cdbfc0c9020d97",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/23",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[EXP_code] }}"
    }
  },
  {
    "component": "Room_Temp",
    "id": "c74c9a877b5244ecd8cdbf1eb3f4ca9d8",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/24/_children/5",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Room_Temp] }}"
    }
  },
  {
    "component": "Freezer",
    "id": "cf7b23d37c0f44918831e611684ef1a54",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/24/_children/7",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Feezer] }}"
    }
  },
  {
    "component": "OtherSpecBox",
    "id": "cfca103d6801943cfb96359d68e4dc89a",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/24/_children/8",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[OtherSpecBox] }}"
    }
  },
  {
    "component": "Spec_Remark",
    "id": "c6b0d2edab9684c5f95cb4b4889a970c8",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/24/_children/9",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Other_Spec] }}",
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
    "id": "c96aab032b29c4589b5fc1280bab0e587",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/13",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Complete] }}",
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
    "component": "incom_spec",
    "id": "cb9d983fa851a45a8bdc9572db1250ea0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/14",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[incom_spec] }}",
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
    "id": "ca40650c75bd64b5080543261baeceb6c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[De_incom_spec] }}",
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
    "component": "ab_spec",
    "id": "cdafa2eb8d1b84e959861da64c0796e59",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/16",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[ab_spec] }}",
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
    "id": "c195d6892be624a8e8ca7deae36843ee7",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/17",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[De_Complete] }}",
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
    "id": "c584034fdcd0c4d3bbd7e76a97979a650",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/18",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[Packaging] }}",
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
    "id": "c748e738a1f1f462fb8d468e9f2a1d7bf",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/19",
    "properties": {
      "text": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[amount] }}"
    }
  },
  {
    "component": "incom_spec_re",
    "id": "c5741c86c568e4d0cade56076ae86ef60",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/20",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[incom_spec_re] }}",
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
    "id": "c0ee791b31fe341ae8f4820ada85976ea",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/21",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[De_incom_spec_re] }}",
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
    "id": "cddf857e9b03744598ecf52a321425543",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/22",
    "properties": {
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[ab_spec_re] }}",
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
    "id": "ce1c34eb6b3ff4a31b562974b8e901221",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/23",
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
    "id": "c7e11f196b28848e3bf60f654e1fdbb12",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/24",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "-",
    "id": "c7caa09e1119e4e2587ce1194d2c6dfb0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/25",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "recieved_by",
    "id": "c2e8864bd8bf647a9b49a6a17347259b1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/26",
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
      ],
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[recieved_by] }}"
    }
  },
  {
    "component": "recieved_date",
    "id": "c6554707e0a5846deb4d2d772c98ad9bb",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/27",
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
      ],
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[recieved_date] }}"
    }
  },
  {
    "component": "Edit",
    "id": "cb747f59ae73c424fa7a91d18b89847ec",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/28",
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
    "component": "Check date",
    "id": "cd7b18fe4a1834f499e64c0033249d845",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/30",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[check_date] }}"
    }
  },
  {
    "component": "Check date2",
    "id": "c0df08916a9dc4834be67fbd8fab43f54",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/31",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[check_date2] }}"
    }
  },
  {
    "component": "ProductList Repeater",
    "id": "cb8f94ac8fe3249468ffa19dbf77ce34e",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c532cb994f4b6461b8d138bd65616f2da] }}"
    }
  },
  {
    "component": "No",
    "id": "c2c508d15212d405790e6fa3ac09d09a1",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [cb8f94ac8fe3249468ffa19dbf77ce34e].[No] }}"
    }
  },
  {
    "component": "Status",
    "id": "ce4d4309ea25d4e2895e40d072da8b73b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1/_children/0/_children/0/_children/1",
    "properties": {
      "text": "{{ [cb8f94ac8fe3249468ffa19dbf77ce34e].[status] }}"
    }
  },
  {
    "component": "Code",
    "id": "c6a11e51f1a204607ba6e0c05efa46f3b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1/_children/0/_children/0/_children/2",
    "properties": {
      "text": "{{ [cb8f94ac8fe3249468ffa19dbf77ce34e].[Time] }}"
    }
  },
  {
    "component": "Flavour",
    "id": "ce1407b8622be499cb2d5d8e9fc88fac0",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/1/_children/0/_children/0/_children/3",
    "properties": {
      "text": "{{ [cb8f94ac8fe3249468ffa19dbf77ce34e].[Flavour] }}"
    }
  },
  {
    "component": "showlist_page",
    "id": "c338d216d8cef47cf8b295ab284bd3b19",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2",
    "properties": {
      "buttons": [
        {
          "_id": "cd614bb8aeeb6458c9f11973d70f037c6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c30f25c26c53c4206adf37569f32e74c0",
          "text": "Page 1",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c338d216d8cef47cf8b295ab284bd3b19",
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
          "_rootId": "c338d216d8cef47cf8b295ab284bd3b19",
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
        },
        {
          "_id": "cb24db4fc5cb54a2fbff170d7122677dc",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c4f7354b97fe74042b2f12fbe6dd4e9b2",
          "text": "Page 3",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c338d216d8cef47cf8b295ab284bd3b19",
          "onClick": [
            {
              "parameters": {
                "key": "showlist_page",
                "type": "set",
                "value": "3"
              },
              "##eventHandlerType": "Update State",
              "id": "8Ko49n2Yz"
            }
          ]
        },
        {
          "_id": "c0e9991eec5ab4e6cb8826053c9f64415",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c87a9d2d2da9546a0b0ab65220cb82854",
          "text": "Page 4",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c338d216d8cef47cf8b295ab284bd3b19",
          "onClick": [
            {
              "parameters": {
                "key": "showlist_page",
                "type": "set",
                "value": "4"
              },
              "##eventHandlerType": "Update State",
              "id": "kWSqG49K6"
            }
          ]
        },
        {
          "_id": "c547e10393c2c41e484c9c1f96e9c8a45",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c693f2ece84f74055895c3f117356bb4a",
          "text": "Document",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c338d216d8cef47cf8b295ab284bd3b19",
          "onClick": [
            {
              "parameters": {
                "id": "cc37747d42e0446fda576f862930830cb"
              },
              "##eventHandlerType": "Open Modal",
              "id": "wvclHCUOa"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "New Table",
    "id": "cfc543b093c84457db30477a18a3c159b",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/3/_children/0/_children/0",
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
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "Code",
          "field": "Code",
          "active": true,
          "width": 110
        },
        {
          "label": "Product",
          "field": "Product",
          "active": true,
          "width": 90
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 90
        },
        {
          "label": "status",
          "field": "status",
          "active": true,
          "width": 80
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
          "width": 90
        },
        {
          "label": "Smell",
          "field": "Smell",
          "active": true,
          "width": 90
        },
        {
          "label": "Appearance",
          "field": "Appearance",
          "active": true,
          "width": 120
        },
        {
          "label": "Remark",
          "field": "Remark",
          "active": true
        },
        {
          "label": "ColourCode",
          "field": "ColourCode",
          "active": false
        },
        {
          "label": "sampling_ref_id",
          "field": "sampling_ref_id",
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
                "operator": "equal",
                "noValue": false,
                "value": "{{ [c924a80baf8b64be2a1f86fc289e511e3].[SamplingIDH] }}"
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
