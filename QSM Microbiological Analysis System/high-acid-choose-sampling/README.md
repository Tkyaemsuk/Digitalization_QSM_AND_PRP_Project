# Screen: /high-acid/choose-sampling

เลือก High Acid จาก CheckList Sampling หรือเครื่องสแกน. เก็บรายการใน state Samplings_highacid แล้วไป high-acid/bottom-shrink; Options/Scaner สลับด้วย choose_togger_pages.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_8d1a80de51214979b1c484dd23c07563`
- Route: `/high-acid/choose-sampling`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 37

## Query dependencies

- [CheckList Sampling](<../database/Query/CheckList Sampling.sql>)

## Components

| Type | Count |
|---|---|
| container | 7 |
| optionsfield | 7 |
| stringfield | 6 |
| button | 5 |
| divider | 3 |
| heading | 3 |
| dataprovider | 2 |
| text | 2 |
| image | 1 |
| datetimefield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| Choose Machine |  | Please Choose Machine Group The Sampling | ไม่ได้กำหนด |
| Choose Date |  | Choose Date The Sampling | ไม่ได้กำหนด |
| Choose1 |  |  | ไม่ได้กำหนด |
| Choose2 |  |  | ไม่ได้กำหนด |
| Choose3 |  |  | ไม่ได้กำหนด |
| Choose4 |  |  | ไม่ได้กำหนด |
| Choose5 |  |  | ไม่ได้กำหนด |
| Choose6 |  |  | ไม่ได้กำหนด |
| Scaner_1 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |
| Scaner_2 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |
| Scaner_3 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |
| Scaner_4 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |
| Scaner_5 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |
| Scaner_6 |  | Please Scaner The Qrcode | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Done Select — onClick

Config path: `/_children/2/_children/1/_children/1/_children/8`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Samplings_highacid; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Navigate To | url=/high-acid/bottom-shrink; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst samplings = [\n  {name: 'Choose1', value: $(\"[c3d5414a920204f1e808f81ded7673fe1].[value]\")},\n  {name: 'Choose2', value: $(\"[c8147b43e01de4cc09eeb61dd9434d3b8].[value]\")},\n  {name: 'Choose3', value: $(\"[cd1e5fee5c6384a55b0a33a81c25fbe00].[value]\")},\n  {name: 'Choose4', value: $(\"[c09b71cdc7abd48a987dc3c3a657b12d6].[value]\")},\n  {name: 'Choose5', value: $(\"[c91f09b66c3f14a36b58787a28edb1d83].[value]\")},\n  {name: 'Choose6', value: $(\"[c5a620925162b4c12bee055ba0f4cf7e3].[value]\")}\n];\n\nconst values = samplings\n  .map(x => x.value)\n  .filter(v => v)\n  .map(v => v.split(\"|\")[0]);\n\nconsole.log(values);\nreturn values;\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "s7xfgPOof"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/bottom-shrink"
    },
    "##eventHandlerType": "Navigate To",
    "id": "Hw6JbCGSS"
  }
]
```

</details>

### Done Select — onClick

Config path: `/_children/2/_children/1/_children/2/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Samplings_highacid; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Navigate To | url=/high-acid/bottom-shrink; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst samplings = [\n  {name: 'Scaner', value: $(\"[c79de25cb1d0349febb7e4abbaa421642].[value]\")},\n  {name: 'Scaner2', value: $(\"[c9ea65439720044f080d418770bffe00e].[value]\")},\n  {name: 'Scaner3', value: $(\"[c90480813d61b4301897e86e12b571ddb].[value]\")},\n  {name: 'Scaner4', value: $(\"[c92d799ec18564218a3fb655d78089147].[value]\")},\n  {name: 'Scaner5', value: $(\"[c25244d99c33148cbae3064ce31e6968a].[value]\")},\n  {name: 'Scaner6', value: $(\"[c173ae97c63ef4a9eae1213e1f5163f49].[value]\")}\n];\n\nconst values = samplings\n.map(x => x.value)\n  .filter(v => v)\n  .map(v => v.split(\"|\")[0]);\n// console.log(values);\nreturn values.join(\",\");\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "s7xfgPOof"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/bottom-shrink"
    },
    "##eventHandlerType": "Navigate To",
    "id": "I5eMnwLK_"
  }
]
```

</details>

### Options — onClick

Config path: `/_children/2/_children/1/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=choose_togger_pages; type=set; value=options |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "choose_togger_pages",
      "type": "set",
      "value": "options"
    },
    "##eventHandlerType": "Update State",
    "id": "mdI2keR81"
  }
]
```

</details>

### Scaner — onClick

Config path: `/_children/2/_children/1/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=choose_togger_pages; type=set; value=scaner |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "choose_togger_pages",
      "type": "set",
      "value": "scaner"
    },
    "##eventHandlerType": "Update State",
    "id": "k5BVu8P2B"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/2/_children/1/_children/5`

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
    "id": "-f45nbYLg"
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
    "component": "List Sampling Data",
    "path": "/_children/0",
    "dataSource": {
      "label": "CheckList Sampling",
      "name": "CheckList Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3a40ea9291744f6d8b2dd122fb9483a7",
      "type": "query",
      "queryParams": {
        "machine": "{{ [c149261b289ad462986c4d638190b3738].[value] }}",
        "FillingDate": "{{ [cbfb30113a2f24841852155aac6bfb221].[value] }}"
      },
      "currentQueryName": "CheckList Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 50
  },
  {
    "component": "List Machine",
    "path": "/_children/1",
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
    "id": "c64da90252ea84c90beb4fa36bf1dfe8a",
    "path": "/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "6yYXXQAZe",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Milk Check",
    "id": "cab3aabbf6d894291a47bfdea27f52da0",
    "path": "/_children/2/_children/1/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "AN4T8t_CD",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [state].[choose_togger_pages] }}",
          "referenceValue": null,
          "noValue": true
        },
        {
          "valueType": "string",
          "id": "OJGDoeiR2",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[choose_togger_pages] }}",
          "referenceValue": "options",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "Choose Machine",
    "id": "c149261b289ad462986c4d638190b3738",
    "path": "/_children/2/_children/1/_children/0/_children/1",
    "properties": {
      "dataProvider": "{{ literal [cd94c6ec33d0e47c98063cdbbc1045ff2] }}"
    }
  },
  {
    "component": "Milk Choose Container",
    "id": "c56082ed2b14249e0b1717afa58808359",
    "path": "/_children/2/_children/1/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "5SLuVaIhf",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [state].[choose_togger_pages] }}",
          "referenceValue": null,
          "noValue": true
        },
        {
          "valueType": "string",
          "id": "79eAEyE19",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[choose_togger_pages] }}",
          "referenceValue": "options",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "Choose1",
    "id": "c3d5414a920204f1e808f81ded7673fe1",
    "path": "/_children/2/_children/1/_children/1/_children/2",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Choose2",
    "id": "c8147b43e01de4cc09eeb61dd9434d3b8",
    "path": "/_children/2/_children/1/_children/1/_children/3",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Choose3",
    "id": "cd1e5fee5c6384a55b0a33a81c25fbe00",
    "path": "/_children/2/_children/1/_children/1/_children/4",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Choose4",
    "id": "c09b71cdc7abd48a987dc3c3a657b12d6",
    "path": "/_children/2/_children/1/_children/1/_children/5",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Choose5",
    "id": "c91f09b66c3f14a36b58787a28edb1d83",
    "path": "/_children/2/_children/1/_children/1/_children/6",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Choose6",
    "id": "c5a620925162b4c12bee055ba0f4cf7e3",
    "path": "/_children/2/_children/1/_children/1/_children/7",
    "properties": {
      "dataProvider": "{{ literal [c813d08cb7f124c95a5e8a1299f331a7d] }}"
    }
  },
  {
    "component": "Milk Scaner Container",
    "id": "cfae961361f974cb6a11d2a367412951c",
    "path": "/_children/2/_children/1/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "79eAEyE19",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[choose_togger_pages] }}",
          "referenceValue": "scaner",
          "noValue": false
        }
      ]
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
