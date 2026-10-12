# Screen: /high-acid/qulilty-control/choose-sampling

เลือกหรือสแกน sampling สำหรับ QC ผ่าน CheckList Sampling แล้วเก็บ state Samplings_highacid_batch และไปหน้าบันทึก QC. ชื่อ route สะกด qulilty ตาม source.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_ef56462a52584e369f0cdb0f7ee165bb`
- Route: `/high-acid/qulilty-control/choose-sampling`
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
| Choose Machine |  | Please Choose Machine Group | ไม่ได้กำหนด |
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
| 1 | Update State | key=Samplings_highacid_batch; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Navigate To | url=/high-acid/quanity-control/add; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid_batch",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst samplings = [\n  {name: 'Choose1', value: $(\"[caadce903fab042408a3941c5f0f44246].[value]\")},\n  {name: 'Choose2', value: $(\"[c319f15bb4d434856b765f2926f4aa28c].[value]\")},\n  {name: 'Choose3', value: $(\"[ccda7e05ac7404020b0bc996a40188445].[value]\")},\n  {name: 'Choose4', value: $(\"[c7b9a0b1b16e1409383a439c26d369201].[value]\")},\n  {name: 'Choose5', value: $(\"[cd75cbfead83d41468adb398e2abfd60d].[value]\")},\n  {name: 'Choose6', value: $(\"[ccdef2cc4f9754d11b22f17f6cf7f271c].[value]\")}\n];\n\nconst values = samplings\n  .map(x => x.value)\n  .filter(v => v)\n  .map(v => v.split(\"|\")[0]);\n\nconsole.log(values);\nreturn values;\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "s7xfgPOof"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/quanity-control/add",
      "peek": null
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
| 1 | Update State | key=Samplings_highacid_batch; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Navigate To | url=/high-acid/quanity-control/add; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Samplings_highacid_batch",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst samplings = [\n  {name: 'Scaner', value: $(\"[c6d525584becb4f57b0bdca74622cd91f].[value]\")},\n  {name: 'Scaner2', value: $(\"[c2bf65d8a12024a7da101f54dc5061572].[value]\")},\n  {name: 'Scaner3', value: $(\"[ccf5cdbe065f1469686e312b7b9f55883].[value]\")},\n  {name: 'Scaner4', value: $(\"[c299b9af4503d480a8d0315deea0b4a94].[value]\")},\n  {name: 'Scaner5', value: $(\"[cc1a8f8a4e2c646b58d6fa26dd2b448ef].[value]\")},\n  {name: 'Scaner6', value: $(\"[ce26bacd5dca64dba902ae82d596d61aa].[value]\")}\n];\n\nconst values = samplings\n.map(x => x.value)\n  .filter(v => v)\n  .map(v => v.split(\"|\")[0]);\n// console.log(values);\nreturn values.join(\",\");\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "s7xfgPOof"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/quanity-control/add",
      "peek": null
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
        "machine": "{{ [c57df6dd9bf08490a83f18b8b9618bd23].[value] }}",
        "FillingDate": "{{ [c513b6c4035184f59abff3ec41a474745].[value] }}"
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
    "id": "c20531482bc2e4c0bacdf4a2a7e45ed9e",
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
    "id": "c470bdbb7ff014f9999913dda7ad18b1f",
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
    "id": "c57df6dd9bf08490a83f18b8b9618bd23",
    "path": "/_children/2/_children/1/_children/0/_children/1",
    "properties": {
      "dataProvider": "{{ literal [cf56da597fb45457da3110dd0679b1a37] }}"
    }
  },
  {
    "component": "Milk Choose Container",
    "id": "c73c02f65504d4d529f8dcba15210af72",
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
    "id": "caadce903fab042408a3941c5f0f44246",
    "path": "/_children/2/_children/1/_children/1/_children/2",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Choose2",
    "id": "c319f15bb4d434856b765f2926f4aa28c",
    "path": "/_children/2/_children/1/_children/1/_children/3",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Choose3",
    "id": "ccda7e05ac7404020b0bc996a40188445",
    "path": "/_children/2/_children/1/_children/1/_children/4",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Choose4",
    "id": "c7b9a0b1b16e1409383a439c26d369201",
    "path": "/_children/2/_children/1/_children/1/_children/5",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Choose5",
    "id": "cd75cbfead83d41468adb398e2abfd60d",
    "path": "/_children/2/_children/1/_children/1/_children/6",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Choose6",
    "id": "ccdef2cc4f9754d11b22f17f6cf7f271c",
    "path": "/_children/2/_children/1/_children/1/_children/7",
    "properties": {
      "dataProvider": "{{ literal [cca20ed2dc4554486ba6116e13e89d825] }}"
    }
  },
  {
    "component": "Milk Scaner Container",
    "id": "c50f2c60142324d29b4a2bfbe2f8f9c07",
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
