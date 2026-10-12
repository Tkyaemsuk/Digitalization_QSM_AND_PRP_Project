# Screen: /home/menu-selector/:userid

เมนูหลักแยก Low Acid/High Acid โดย state toggle_pages; มีทางไปหน้ารับตัวอย่าง ตรวจกล่อง ตารางงาน และ QC. ปุ่มแต่ละทางลง app_logs ก่อน Navigate; userid ใน route ไม่ใช่หลักฐานว่า server ตรวจสิทธิ์แล้ว.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_9f5feab566704641a39ae5204f033f23`
- Route: `/home/menu-selector/:userid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 21

## Query dependencies

- [app_logs](<../database/Query/app_logs.sql>)

## Components

| Type | Count |
|---|---|
| button | 11 |
| container | 6 |
| heading | 2 |
| image | 1 |
| divider | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Low Acid — onClick

Config path: `/_children/0/_children/1/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Update State | key=toggle_pages; type=set; value=low-acid |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "app": "QSM Microbiological Analysis System",
        "device": "tablet",
        "screen": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "createdby": "{{ [state].[CallbackDB_API].user }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "WfUgpCdcW"
  },
  {
    "parameters": {
      "key": "toggle_pages",
      "type": "set",
      "value": "low-acid",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "v3zWjiw1d"
  }
]
```

</details>

### High Acid — onClick

Config path: `/_children/0/_children/1/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Update State | key=toggle_pages; type=set; value=high-acid |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "bxZ3ekQHq"
  },
  {
    "parameters": {
      "key": "toggle_pages",
      "type": "set",
      "value": "high-acid",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "vQNnJvsag"
  }
]
```

</details>

### Low Acid — onClick

Config path: `/_children/0/_children/2/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=CallBack_Sampling; type=delete |
| 2 | Execute Query | queryId=app_logs |
| 3 | Navigate To | url=/low-acid; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "CallBack_Sampling",
      "type": "delete"
    },
    "##eventHandlerType": "Update State",
    "id": "Q5YIq-gdS"
  },
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "rows": "1",
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "screen": "/low-acid",
        "action": "read"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "5bYe-WqnU"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/low-acid",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "UaiUtMn3G"
  }
]
```

</details>

### Check Box — onClick

Config path: `/_children/0/_children/2/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/sampling-product-for-milk-box; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "device": "tablet",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/sampling-product-for-milk-box"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "excpFjNVY"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-product-for-milk-box",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "UaiUtMn3G"
  }
]
```

</details>

### Table Check — onClick

Config path: `/_children/0/_children/2/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/sampling-tables; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "app": "QSM Microbiological Analysis System",
        "screen": "/sampling-table",
        "action": "read"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "X0zMVxC3U"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tables",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "Jg5y4zQio"
  }
]
```

</details>

### Main Menu — onClick

Config path: `/_children/0/_children/2/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=toggle_pages; type=delete |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "toggle_pages",
      "type": "delete"
    },
    "##eventHandlerType": "Update State",
    "id": "Gp4IK4-kf"
  }
]
```

</details>

### High Acid — onClick

Config path: `/_children/0/_children/3/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/high-acid; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "screen": "/high-acid",
        "action": "read",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "tablet"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "wUjLseYUr"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "UaiUtMn3G"
  }
]
```

</details>

### High Acid - CheckBox — onClick

Config path: `/_children/0/_children/3/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/high-acid/choose-sampling; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "tablet",
        "action": "read",
        "app": "QSM Microbiological Analysis System",
        "screen": "/high-acid/choose-sampling"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "8PkmAYaz8"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/choose-sampling",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "UaiUtMn3G"
  }
]
```

</details>

### High Acid - Tables — onClick

Config path: `/_children/0/_children/3/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/high-acid-sampling-tables; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "screen": "/high-acid-sampling-tables",
        "action": "read",
        "rows": "1",
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "bueBL1XjT"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid-sampling-tables",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "Jg5y4zQio"
  }
]
```

</details>

### High Acid - Tables — onClick

Config path: `/_children/0/_children/3/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/high-acid/qulilty-control/choose-sampling; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "screen": "/high-acid/choose-sampling",
        "app": "QSM Microbiological Analysis System",
        "rows": "1",
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "dQLdJ8-xa"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/high-acid/qulilty-control/choose-sampling",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "Jg5y4zQio"
  }
]
```

</details>

### High Acid - Main — onClick

Config path: `/_children/0/_children/3/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=toggle_pages; type=delete |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "toggle_pages",
      "type": "delete"
    },
    "##eventHandlerType": "Update State",
    "id": "Gp4IK4-kf"
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
    "id": "c95293b5b9a6841b59a405f3fce386bcb",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Vj82AwVuN",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "noValue": false,
          "referenceValue": "qastaff"
        },
        {
          "valueType": "string",
          "id": "HavvAWuiA",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "noValue": false,
          "referenceValue": "qatech"
        },
        {
          "valueType": "string",
          "id": "otWxbboVea",
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
    "component": "New Headline",
    "id": "ca24cba3ae7194223a76098f6ea101fe8",
    "path": "/_children/0/_children/0/_children/2",
    "properties": {
      "text": "QSM Microbiological Analysis Management ( {{ [state].[CallbackDB_API].fullname }} )"
    }
  },
  {
    "component": "Select Pgaes",
    "id": "c683dcc0a55d74b97b3723f2f046dc987",
    "path": "/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "xJyefv6J2",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Low-Acid",
    "id": "cc2954a9df14842c0bed404ea8b1bfdbb",
    "path": "/_children/0/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "xwM4nASmO",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[toggle_pages] }}",
          "referenceValue": "low-acid"
        }
      ]
    }
  },
  {
    "component": "High-Acid",
    "id": "c775c362f33c64157b8a07d0396664b07",
    "path": "/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "xwM4nASmO",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[toggle_pages] }}",
          "referenceValue": "high-acid"
        }
      ]
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
