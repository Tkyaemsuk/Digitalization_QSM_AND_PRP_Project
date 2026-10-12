# Screen: /sampling-tables

ศูนย์รวมงาน Low Acid: กรองวันที่/เครื่อง/SamplingID และแสดงสถานะจาก SamplingTable. ปุ่มนำไปตรวจ30/55, CSV, รายงาน, tracker และหน้ารับ; มี Update30/55 แก้วันที่จริง และ modal ปลดล็อก Production. บางกลุ่ม UI แยกตาม role/state; event logger บันทึกก่อนหลายทางนำทาง.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_79e9699ca1ae46deaad3550ca9730661`
- Route: `/sampling-tables`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 74

## Query dependencies

- [app_logs](<../database/Query/app_logs.sql>)
- [EditActurl30&55](<../database/Query/EditActurl30&55.sql>)
- [SamplingTable](<../database/Query/SamplingTable.sql>)
- [Table_30](<../database/Query/Table_30.sql>)
- [UnlockSamp_Production](<../database/Query/UnlockSamp_Production.sql>)

## Components

| Type | Count |
|---|---|
| button | 21 |
| container | 13 |
| text | 7 |
| datetimefield | 6 |
| optionsfield | 6 |
| stringfield | 4 |
| image | 3 |
| heading | 3 |
| divider | 3 |
| gridblock | 3 |
| modal | 3 |
| dataprovider | 2 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| Sampling_Staff |  | ค้นหา SamplingID | ไม่ได้กำหนด |
| DayTime_qa | DayTime_qa |  | ไม่ได้กำหนด |
| Machine_qa |  | Machine | ไม่ได้กำหนด |
| Machine_Group_Staff |  | Group | ไม่ได้กำหนด |
| DayTime_inspect |  |  | ไม่ได้กำหนด |
| Machine_inspect |  | Machine | ไม่ได้กำหนด |
| Machine_Group_inspect |  | Group | ไม่ได้กำหนด |
| Sampling_inspect |  | ค้นหา SamplingID | ไม่ได้กำหนด |
| Acturl Date 30 |  |  | ไม่ได้กำหนด |
| Acturl Date 55 |  |  | ไม่ได้กำหนด |
| QSM_Supervisor_EMP |  | Input The Employee Code To Unlocked | ไม่ได้กำหนด |
| DayTime_sup |  |  | ไม่ได้กำหนด |
| Actual Date |  |  | ไม่ได้กำหนด |
| Machine_sup |  | Machine | ไม่ได้กำหนด |
| Machine_Group_sup |  | Group | ไม่ได้กำหนด |
| Sampling_sup |  | ค้นหา SamplingID | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### DayTime_qa — onChange

Config path: `/_children/1/_children/1/_children/1`

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
      "persist": true,
      "value": "{{ [eventContext].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "Xx-z2b5dC"
  }
]
```

</details>

### cb58836ccfb9446259bb19d77ba778109 — onClick

Config path: `/_children/1/_children/1/_children/4/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/table-time-check-30-55/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "screen": "/sampling-table",
        "action": "read",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "Tablet",
        "rows": "1"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "PAYnZ5706"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/table-time-check-30-55/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "1uP4Odghp"
  }
]
```

</details>

### c996f4319f2444f4c9d36ebec2ba75637 — onClick

Config path: `/_children/1/_children/1/_children/4/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/report-low/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "Tablet",
        "action": "read",
        "screen": "/report",
        "app": "QSM Microbiological Anaysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "YYv7RWQcZ"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report-low/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "P3GBRGdye"
  }
]
```

</details>

### c25f38f823ee64f8cb5c1dba00bc2018b — onClick

Config path: `/_children/1/_children/1/_children/4/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/sampling-tracker/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "rows": "1",
        "device": "Tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/sampling-tracker",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "E9dDkmJzI"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tracker/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "kU4WIDGMe"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/1/_children/1/_children/5`

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

### c1ccf1034dca442748daa77591f4e9ca1 — onClick

Config path: `/_children/2/_children/1/_children/0/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/in-out-csv/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "device": "Tablet",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/in-out-csv",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "CMF-rXZWL"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "peek": null,
      "url": "/in-out-csv/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "RD-CTdOzT"
  }
]
```

</details>

### cb6cfa5d9e57c456e974926f13bbe4bc3 — onClick

Config path: `/_children/2/_children/1/_children/0/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/table-time-check-30-55/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "device": "Tablet",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/table-time-check-30-55",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "c6qxZ2bRw"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/table-time-check-30-55/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "P0ukSACwr"
  }
]
```

</details>

### c98f96b3f99514638b5fcdb329afb8ae5 — onClick

Config path: `/_children/2/_children/1/_children/0/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/report-low/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "device": "Tablet",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/report-low",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "2Sph9tMuJ"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report-low/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "g0DFYe2ud"
  }
]
```

</details>

### DayTime_inspect — onChange

Config path: `/_children/2/_children/1/_children/1`

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
      "persist": true,
      "value": "{{ [eventContext].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "cXe-hSXFF"
  }
]
```

</details>

### New Button — onClick

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
    "id": "GjPpZiCoy"
  }
]
```

</details>

### Update 30 — onClick

Config path: `/_children/3/_children/1/_children/0/_children/0/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=EditActurl30&55 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "CheckType": "30",
        "CheckDate": "{{ [c7b06a58b66e1440799e345cfdc0b3a34].[value] }}",
        "samplingID": "{{ [state].[CallBack_Sampling] }}",
        "CheckDate30": "{{ [c7b06a58b66e1440799e345cfdc0b3a34].[value] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9bf319f443d24ba091306917bc15170f",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "rxxbjNxww"
  }
]
```

</details>

### Update 55 — onClick

Config path: `/_children/3/_children/1/_children/1/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=EditActurl30&55 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "CheckType": "55",
        "CheckDate": "{{ [c24d7bc828ca746979fbda57f4c4ee5ed].[value] }}",
        "samplingID": "{{ [state].[CallBack_Sampling] }}",
        "CheckDate30": "{{ [c24d7bc828ca746979fbda57f4c4ee5ed].[value] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9bf319f443d24ba091306917bc15170f",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "MdnivMj2E"
  }
]
```

</details>

### New Button 2 — onClick

Config path: `/_children/3/_children/1/_children/2/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Vaildate_Login; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=error; message={{ [state].[Vaildate_Login] }} |
| 3 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaildate_Login] }} |
| 4 | Execute Query | queryId=UnlockSamp_Production |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_Login",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst empcode = $(\"[ca4da2752f86a4cdaa8be1f0bc85a590f].[value]\");\n\nif(!empcode) {\n  return \"Please Input The Empolyee Code To Unlocked!\";\n}\n[/JavaScript binding]\n"
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
        "Userid": "{{ [ca4da2752f86a4cdaa8be1f0bc85a590f].[value] }}",
        "SampID": "{{ [state].[SamplingID_Table] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_369a06f4ea384cf1a20b3807afed55fb",
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

### c73be4437237443c49fe807b15fc7f7ad — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=CallBack_Sampling; type=set; value={{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }} |
| 2 | Execute Query | queryId=app_logs |
| 3 | Navigate To | url=/low-acid; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "CallBack_Sampling",
      "type": "set",
      "persist": null,
      "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "7m09njbo0"
  },
  {
    "parameters": {
      "queryParams": {
        "device": "Tablet",
        "rows": "1",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/low-acid",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "673EXlo7a"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/low-acid",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "jKz30OInB"
  }
]
```

</details>

### c8ecbe78c8d144c178805005aeeb6e910 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/in-out-csv/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "rows": "1",
        "device": "Tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/in-out-csv"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "oKTVqT8i8"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/in-out-csv/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "hL9z0LY3l"
  }
]
```

</details>

### c0269d50114314223a7b935dc25aa5657 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/table-time-check-30-55/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "rows": "1",
        "device": "Tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/table-time-check-30-55"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "confirm": null,
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "XVAFHUR2l"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/table-time-check-30-55/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "2PEYZT-Mj"
  }
]
```

</details>

### cb58836ccfb9446259bb19d77ba778109 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/supervisor-report/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "rows": "1",
        "device": "Tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "action": "read",
        "screen": "/supervisor-report"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "_xj51WSE0"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/supervisor-report/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "1uP4Odghp"
  }
]
```

</details>

### c996f4319f2444f4c9d36ebec2ba75637 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/report-low/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "screen": "/report-low",
        "action": "read",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "Tablet",
        "rows": "1",
        "app": "QSM Microbiological Analysis System"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "DCkeuNdze"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/report-low/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "P3GBRGdye"
  }
]
```

</details>

### c6e00e5af51b74e8cad2469955d554928 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=app_logs |
| 2 | Navigate To | url=/sampling-tracker/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "app": "QSM Microbiological Analysis System",
        "screen": "/sampling-tracker",
        "action": "read",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "device": "Tablet",
        "rows": "1"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "zEW_ZtbIp"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-tracker/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "Ssdgk5ynt"
  }
]
```

</details>

### c2dbb7f63578748bdbfce85bbd77cddf4 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=CallBack_Sampling; type=set; value={{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "CallBack_Sampling",
      "type": "set",
      "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "j8slIvDAL"
  },
  {
    "parameters": {
      "id": "c851e1754a3154640a7caa8d303311242"
    },
    "##eventHandlerType": "Open Modal",
    "id": "vSzRYJN9K"
  }
]
```

</details>

### c38442dae07f04c48b64b5aaa3364c133 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=CallBack_Sampling; type=set; value={{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "CallBack_Sampling",
      "type": "set",
      "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "jo5bCUrEY"
  },
  {
    "parameters": {
      "id": "c54a30390dcac470d8cb9db201cce848c"
    },
    "##eventHandlerType": "Open Modal",
    "id": "4Z4r9fmmJ"
  }
]
```

</details>

### cf536aaaabde94921b678265d56915bd1 — onClick

Config path: `/_children/3/_children/1/_children/3/buttons/8`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=SamplingID_Table; type=set; value={{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "SamplingID_Table",
      "type": "set",
      "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "EG56R8ci6"
  },
  {
    "parameters": {
      "id": "ce1793f45eecc4a5eacbcff3fc9aaf472"
    },
    "##eventHandlerType": "Open Modal",
    "id": "EHTerF64Z"
  }
]
```

</details>

### DayTime_sup — onChange

Config path: `/_children/3/_children/1/_children/4`

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
    "id": "G5gqmNeZH"
  }
]
```

</details>

### Actual Date — onChange

Config path: `/_children/3/_children/1/_children/5`

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
    "id": "G5gqmNeZH"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/3/_children/1/_children/9`

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
    "id": "fnG8X9YC9"
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
  },
  {
    "component": "New Data Provider",
    "path": "/_children/3/_children/1/_children/0/_children/0",
    "dataSource": {
      "label": "Table_30",
      "name": "Table_30",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3be9cf5f48fb41fcab0320568bd7d59b",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [state].[CallBack_Sampling] }}"
      },
      "currentQueryName": "Table_30",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 1
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
    "id": "c61040100e6144f8490dab0d9e7d61c94",
    "path": "/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "CiaoZ0D4c",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qastaff"
        }
      ]
    }
  },
  {
    "component": "New Headline",
    "id": "c9613fd41d0994107a67cdb0fb1baff0c",
    "path": "/_children/1/_children/0/_children/1",
    "properties": {
      "text": "Dairy Plus Co,. Ltd\nQUALITY SYSTEM MANAGEMENT ( {{ [state].[CallbackDB_API].fullname }} )"
    }
  },
  {
    "component": "Container",
    "id": "cafd25bdd87b84fba9c1f0910560c675a",
    "path": "/_children/1/_children/1",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "DayTime_qa",
    "id": "c8ac31fec4f034952b593953ccb3da647",
    "path": "/_children/1/_children/1/_children/1",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "Machine_qa",
    "id": "c7fff91133105499f9120a5f7b14ceed0",
    "path": "/_children/1/_children/1/_children/2",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  },
  {
    "component": "Machine_Group_Staff",
    "id": "c672fc1fc40b64b438db56eb177ae0e18",
    "path": "/_children/1/_children/1/_children/3",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  },
  {
    "component": "Sampling Table",
    "id": "cc9f2738c6aff484fadaaed5ba939a22b",
    "path": "/_children/1/_children/1/_children/4",
    "properties": {
      "table": {
        "label": "SamplingTable",
        "name": "SamplingTable",
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef417db2fbf44754bd6a28c849b67a09",
        "_rev": "11-71df0197fd07633596b83987f29b132c",
        "transformer": "return data",
        "schema": {
          "SamplingID": {
            "type": "string",
            "name": "SamplingID"
          },
          "Department": {
            "type": "string",
            "name": "Department"
          },
          "FillingDate": {
            "type": "string",
            "name": "FillingDate"
          },
          "machine": {
            "type": "string",
            "name": "machine"
          },
          "Product": {
            "type": "string",
            "name": "Product"
          },
          "Flavour": {
            "type": "string",
            "name": "Flavour"
          },
          "Machine": {
            "type": "string",
            "name": "Machine"
          },
          "id": {
            "type": "number",
            "name": "id"
          },
          "Size": {
            "type": "string",
            "name": "Size"
          },
          "ExpiredDate": {
            "type": "string",
            "name": "ExpiredDate"
          },
          "Plan_CheckDate": {
            "type": "string",
            "name": "Plan_CheckDate"
          },
          "Actual_CheckDate": {
            "type": "string",
            "name": "Actual_CheckDate"
          },
          "PH_Before": {
            "type": "string",
            "name": "PH_Before"
          },
          "Spec_Actual": {
            "type": "number",
            "name": "Spec_Actual"
          },
          "MFG_Date": {
            "type": "string",
            "name": "MFG_Date"
          },
          "Temperature": {
            "type": "string",
            "name": "Temperature"
          },
          "Temperature2": {
            "type": "string",
            "name": "Temperature2"
          },
          "Quanity": {
            "type": "string",
            "name": "Quanity"
          },
          "Quanity2": {
            "type": "string",
            "name": "Quanity2"
          },
          "SendBY": {
            "type": "string",
            "name": "SendBY"
          },
          "RecevieBy": {
            "type": "string",
            "name": "RecevieBy"
          },
          "SupervisorBy": {
            "type": "string",
            "name": "SupervisorBy"
          },
          "Supervisor_Date": {
            "type": "string",
            "name": "Supervisor_Date"
          },
          "CreatedBY": {
            "type": "string",
            "name": "CreatedBY"
          },
          "Products": {
            "type": "string",
            "name": "Products"
          },
          "PH": {
            "type": "string",
            "name": "PH"
          },
          "Colour": {
            "type": "boolean",
            "name": "Colour"
          },
          "Smell": {
            "type": "boolean",
            "name": "Smell"
          },
          "Atp": {
            "type": "string",
            "name": "Atp"
          },
          "PH2": {
            "type": "string",
            "name": "PH2"
          },
          "Tpc2": {
            "type": "string",
            "name": "Tpc2"
          },
          "Atp2": {
            "type": "string",
            "name": "Atp2"
          },
          "Tpc": {
            "type": "string",
            "name": "Tpc"
          },
          "Colour2": {
            "type": "boolean",
            "name": "Colour2"
          },
          "Smell2": {
            "type": "boolean",
            "name": "Smell2"
          },
          "EditBy": {
            "type": "string",
            "name": "EditBy"
          },
          "UpdateAt": {
            "type": "string",
            "name": "UpdateAt"
          },
          "Plan_CheckDate55": {
            "type": "string",
            "name": "Plan_CheckDate55"
          },
          "Actual_CheckDate55": {
            "type": "string",
            "name": "Actual_CheckDate55"
          },
          "dayFinished": {
            "type": "string",
            "name": "dayFinished"
          },
          "dayFinished2": {
            "type": "string",
            "name": "dayFinished2"
          },
          "Recieved_date": {
            "type": "string",
            "name": "Recieved_date"
          },
          "Amount_Samples": {
            "type": "string",
            "name": "Amount_Samples"
          },
          "Example": {
            "type": "string",
            "name": "Example"
          },
          "Indication": {
            "type": "string",
            "name": "Indication"
          },
          "packaging": {
            "type": "string",
            "name": "packaging"
          },
          "complete": {
            "type": "string",
            "name": "complete"
          },
          "Detail_Complete": {
            "type": "string",
            "name": "Detail_Complete"
          },
          "Normal": {
            "type": "string",
            "name": "Normal"
          },
          "Incomplete": {
            "type": "string",
            "name": "Incomplete"
          },
          "Detail_incomplete": {
            "type": "string",
            "name": "Detail_incomplete"
          },
          "Abnormal": {
            "type": "string",
            "name": "Abnormal"
          },
          "group": {
            "type": "string",
            "name": "group"
          },
          "PH_Before2": {
            "type": "string",
            "name": "PH_Before2"
          },
          "Spec_Actual2": {
            "type": "number",
            "name": "Spec_Actual2"
          },
          "physical_by": {
            "type": "string",
            "name": "physical_by"
          },
          "results_by": {
            "type": "string",
            "name": "results_by"
          },
          "physical_date": {
            "type": "string",
            "name": "physical_date"
          },
          "results_date": {
            "type": "string",
            "name": "results_date"
          },
          "submitBy": {
            "type": "string",
            "name": "submitBy"
          },
          "submit_date": {
            "type": "string",
            "name": "submit_date"
          },
          "check30": {
            "type": "boolean",
            "name": "check30"
          },
          "check55": {
            "type": "boolean",
            "name": "check55"
          },
          "physical_by2": {
            "type": "string",
            "name": "physical_by2"
          },
          "physical_date2": {
            "type": "string",
            "name": "physical_date2"
          },
          "results_by2": {
            "type": "string",
            "name": "results_by2"
          },
          "results_date2": {
            "type": "string",
            "name": "results_date2"
          },
          "SendBY2": {
            "type": "string",
            "name": "SendBY2"
          },
          "SendBY3": {
            "type": "string",
            "name": "SendBY3"
          },
          "ReportBY": {
            "type": "string",
            "name": "ReportBY"
          },
          "Report_Date": {
            "type": "string",
            "name": "Report_Date"
          }
        },
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "FillingDate",
            "default": ""
          },
          {
            "name": "sampid",
            "default": ""
          },
          {
            "name": "mac",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n\t\ts.SamplingID as SamplingID,\n\t\tm.dep as Department,\n\t\tCONVERT(VARCHAR(10), s.FillingDate, 103) AS FillingDate,\n\t\tm.machine as machine,\n\t\ts.Product as Product,\n\t\ts.Flavour as Flavour\nFROM Sampling s\nLEFT JOIN machine m\n    ON s.machine = m.no\nWHERE\n    ('{{sampid}}' = '' OR s.SamplingID = '{{sampid}}')\n    AND ('{{FillingDate}}' = '' OR CAST(s.FillingDate AS DATE) = CAST('{{FillingDate}}' AS DATE))\n    AND ('{{mac}}' = '' OR m.no = '{{mac}}');"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "nullDefaultSupport": true,
        "createdAt": "2026-05-30T03:48:57.150Z",
        "updatedAt": "2026-06-25T01:04:53.934Z",
        "readable": true,
        "type": "query",
        "queryParams": {
          "FillingDate": "{{ [c8ac31fec4f034952b593953ccb3da647].[value] }}",
          "sampid": "{{ [ccbd3c0a1c0c644139cd2b855083dd728].[value] }}",
          "mac": "{{ [c7fff91133105499f9120a5f7b14ceed0].[value] }}"
        }
      },
      "columns": [
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": true,
          "width": 180
        },
        {
          "label": "Department",
          "field": "Department",
          "active": true,
          "width": 150
        },
        {
          "label": "FillingDate",
          "field": "FillingDate",
          "active": true,
          "width": 150
        },
        {
          "label": "machine",
          "field": "machine",
          "active": true,
          "width": 120
        },
        {
          "label": "Product",
          "field": "Product",
          "active": true,
          "width": 150
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 150
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": false
        },
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "Size",
          "field": "Size",
          "active": false
        },
        {
          "label": "ExpiredDate",
          "field": "ExpiredDate",
          "active": false
        },
        {
          "label": "Plan_CheckDate",
          "field": "Plan_CheckDate",
          "active": false
        },
        {
          "label": "Actual_CheckDate",
          "field": "Actual_CheckDate",
          "active": false
        },
        {
          "label": "PH_Before",
          "field": "PH_Before",
          "active": false
        },
        {
          "label": "Spec_Actual",
          "field": "Spec_Actual",
          "active": false
        },
        {
          "label": "MFG_Date",
          "field": "MFG_Date",
          "active": false
        },
        {
          "label": "Temperature",
          "field": "Temperature",
          "active": false
        },
        {
          "label": "Temperature2",
          "field": "Temperature2",
          "active": false
        },
        {
          "label": "Quanity",
          "field": "Quanity",
          "active": false
        },
        {
          "label": "Quanity2",
          "field": "Quanity2",
          "active": false
        },
        {
          "label": "SendBY",
          "field": "SendBY",
          "active": false
        },
        {
          "label": "RecevieBy",
          "field": "RecevieBy",
          "active": false,
          "conditions": []
        },
        {
          "label": "SupervisorBy",
          "field": "SupervisorBy",
          "active": false
        },
        {
          "label": "Supervisor_Date",
          "field": "Supervisor_Date",
          "active": false
        },
        {
          "label": "CreatedBY",
          "field": "CreatedBY",
          "active": false
        },
        {
          "label": "Products",
          "field": "Products",
          "active": false
        },
        {
          "label": "PH",
          "field": "PH",
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
          "label": "Atp",
          "field": "Atp",
          "active": false
        },
        {
          "label": "PH2",
          "field": "PH2",
          "active": false
        },
        {
          "label": "Tpc2",
          "field": "Tpc2",
          "active": false
        },
        {
          "label": "Atp2",
          "field": "Atp2",
          "active": false
        },
        {
          "label": "Tpc",
          "field": "Tpc",
          "active": false
        },
        {
          "label": "Colour2",
          "field": "Colour2",
          "active": false
        },
        {
          "label": "Smell2",
          "field": "Smell2",
          "active": false
        },
        {
          "label": "EditBy",
          "field": "EditBy",
          "active": false
        },
        {
          "label": "UpdateAt",
          "field": "UpdateAt",
          "active": false
        },
        {
          "label": "Plan_CheckDate55",
          "field": "Plan_CheckDate55",
          "active": false
        },
        {
          "label": "Actual_CheckDate55",
          "field": "Actual_CheckDate55",
          "active": false
        },
        {
          "label": "dayFinished",
          "field": "dayFinished",
          "active": false
        },
        {
          "label": "dayFinished2",
          "field": "dayFinished2",
          "active": false
        },
        {
          "label": "Recieved_date",
          "field": "Recieved_date",
          "active": false
        },
        {
          "label": "Amount_Samples",
          "field": "Amount_Samples",
          "active": false
        },
        {
          "label": "Example",
          "field": "Example",
          "active": false
        },
        {
          "label": "Indication",
          "field": "Indication",
          "active": false
        },
        {
          "label": "packaging",
          "field": "packaging",
          "active": false
        },
        {
          "label": "complete",
          "field": "complete",
          "active": false
        },
        {
          "label": "Detail_Complete",
          "field": "Detail_Complete",
          "active": false
        },
        {
          "label": "Normal",
          "field": "Normal",
          "active": false
        },
        {
          "label": "Incomplete",
          "field": "Incomplete",
          "active": false
        },
        {
          "label": "Detail_incomplete",
          "field": "Detail_incomplete",
          "active": false
        },
        {
          "label": "Abnormal",
          "field": "Abnormal",
          "active": false
        },
        {
          "label": "group",
          "field": "group",
          "active": false
        },
        {
          "label": "PH_Before2",
          "field": "PH_Before2",
          "active": false
        },
        {
          "label": "Spec_Actual2",
          "field": "Spec_Actual2",
          "active": false
        },
        {
          "label": "physical_by",
          "field": "physical_by",
          "active": false
        },
        {
          "label": "results_by",
          "field": "results_by",
          "active": false
        },
        {
          "label": "physical_date",
          "field": "physical_date",
          "active": false
        },
        {
          "label": "results_date",
          "field": "results_date",
          "active": false
        },
        {
          "label": "submitBy",
          "field": "submitBy",
          "active": false,
          "conditions": []
        },
        {
          "label": "submit_date",
          "field": "submit_date",
          "active": false
        },
        {
          "label": "check30",
          "field": "check30",
          "active": false
        },
        {
          "label": "check55",
          "field": "check55",
          "active": false
        },
        {
          "label": "physical_by2",
          "field": "physical_by2",
          "active": false
        },
        {
          "label": "physical_date2",
          "field": "physical_date2",
          "active": false
        },
        {
          "label": "results_by2",
          "field": "results_by2",
          "active": false
        },
        {
          "label": "results_date2",
          "field": "results_date2",
          "active": false
        },
        {
          "label": "SendBY2",
          "field": "SendBY2",
          "active": false
        },
        {
          "label": "SendBY3",
          "field": "SendBY3",
          "active": false
        },
        {
          "label": "ReportBY",
          "field": "ReportBY",
          "active": false
        },
        {
          "label": "Report_Date",
          "field": "Report_Date",
          "active": false
        },
        {
          "label": "SupervisorID",
          "field": "SupervisorID",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": false,
          "conditions": [
            {
              "id": "FUayF6O5n",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-gray-75)",
              "referenceValue": "waiting"
            },
            {
              "id": "PKWHaquN4",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-orange-100)",
              "referenceValue": "pending"
            },
            {
              "id": "hFeavw83_",
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
                "value": "{{ [c672fc1fc40b64b438db56eb177ae0e18].[value] }}"
              }
            ]
          }
        ]
      },
      "buttons": [
        {
          "_id": "c45bfca1e37b64821ba36b9266948d1fe",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cb58836ccfb9446259bb19d77ba778109",
          "text": " 1.Finished product",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc9f2738c6aff484fadaaed5ba939a22b",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "app": "QSM Microbiological Analysis System",
                  "screen": "/sampling-table",
                  "action": "read",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "device": "Tablet",
                  "rows": "1"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "PAYnZ5706"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/table-time-check-30-55/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "1uP4Odghp"
            }
          ]
        },
        {
          "_id": "cd2fc9ce2483e425eb49437a770ffce89",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c996f4319f2444f4c9d36ebec2ba75637",
          "text": "2.Report",
          "type": "secondary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc9f2738c6aff484fadaaed5ba939a22b",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "rows": "1",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "device": "Tablet",
                  "action": "read",
                  "screen": "/report",
                  "app": "QSM Microbiological Anaysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "YYv7RWQcZ"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/report-low/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "P3GBRGdye"
            }
          ]
        },
        {
          "_id": "c3e1a45510ee04efbb325dfcdfb3dccde",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c25f38f823ee64f8cb5c1dba00bc2018b",
          "text": "Status",
          "type": "warning",
          "size": "M",
          "gap": "M",
          "_rootId": "cc9f2738c6aff484fadaaed5ba939a22b",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "rows": "1",
                  "device": "Tablet",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/sampling-tracker",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "confirm": null,
                "notificationOverride": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "E9dDkmJzI"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/sampling-tracker/{{ [cc9f2738c6aff484fadaaed5ba939a22b].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "kU4WIDGMe"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Container Inspect",
    "id": "c1e79b8b1aa264881bf374583ffe9178b",
    "path": "/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "6fWJlU83Y",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech"
        }
      ]
    }
  },
  {
    "component": "Sampling Table",
    "id": "c8d16a6e37def479a8cc74b2995087a7c",
    "path": "/_children/2/_children/1/_children/0",
    "properties": {
      "table": {
        "label": "SamplingTable",
        "name": "SamplingTable",
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef417db2fbf44754bd6a28c849b67a09",
        "_rev": "8-68868ab7f5cb50b9f2ea838694c4b65a",
        "transformer": "return data",
        "schema": {
          "id": {
            "type": "number",
            "name": "id"
          },
          "SamplingID": {
            "type": "string",
            "name": "SamplingID"
          },
          "Product": {
            "type": "string",
            "name": "Product"
          },
          "Flavour": {
            "type": "string",
            "name": "Flavour"
          },
          "Size": {
            "type": "string",
            "name": "Size"
          },
          "FillingDate": {
            "type": "string",
            "name": "FillingDate"
          },
          "ExpiredDate": {
            "type": "string",
            "name": "ExpiredDate"
          },
          "Department": {
            "type": "string",
            "name": "Department"
          },
          "Machine": {
            "type": "string",
            "name": "Machine"
          },
          "Plan_CheckDate": {
            "type": "string",
            "name": "Plan_CheckDate"
          },
          "Actual_CheckDate": {
            "type": "string",
            "name": "Actual_CheckDate"
          },
          "PH_Before": {
            "type": "string",
            "name": "PH_Before"
          },
          "Spec_Actual": {
            "type": "number",
            "name": "Spec_Actual"
          },
          "MFG_Date": {
            "type": "string",
            "name": "MFG_Date"
          },
          "Temperature": {
            "type": "string",
            "name": "Temperature"
          },
          "Temperature2": {
            "type": "string",
            "name": "Temperature2"
          },
          "Quanity": {
            "type": "string",
            "name": "Quanity"
          },
          "Quanity2": {
            "type": "string",
            "name": "Quanity2"
          },
          "SendBY": {
            "type": "string",
            "name": "SendBY"
          },
          "RecevieBy": {
            "type": "string",
            "name": "RecevieBy"
          },
          "SupervisorBy": {
            "type": "string",
            "name": "SupervisorBy"
          },
          "Supervisor_Date": {
            "type": "string",
            "name": "Supervisor_Date"
          },
          "CreatedBY": {
            "type": "string",
            "name": "CreatedBY"
          },
          "Products": {
            "type": "string",
            "name": "Products"
          },
          "PH": {
            "type": "string",
            "name": "PH"
          },
          "Colour": {
            "type": "boolean",
            "name": "Colour"
          },
          "Smell": {
            "type": "boolean",
            "name": "Smell"
          },
          "Atp": {
            "type": "string",
            "name": "Atp"
          },
          "PH2": {
            "type": "string",
            "name": "PH2"
          },
          "Tpc2": {
            "type": "string",
            "name": "Tpc2"
          },
          "Atp2": {
            "type": "string",
            "name": "Atp2"
          },
          "Tpc": {
            "type": "string",
            "name": "Tpc"
          },
          "Colour2": {
            "type": "boolean",
            "name": "Colour2"
          },
          "Smell2": {
            "type": "boolean",
            "name": "Smell2"
          },
          "EditBy": {
            "type": "string",
            "name": "EditBy"
          },
          "UpdateAt": {
            "type": "string",
            "name": "UpdateAt"
          },
          "Plan_CheckDate55": {
            "type": "string",
            "name": "Plan_CheckDate55"
          },
          "Actual_CheckDate55": {
            "type": "string",
            "name": "Actual_CheckDate55"
          },
          "dayFinished": {
            "type": "string",
            "name": "dayFinished"
          },
          "dayFinished2": {
            "type": "string",
            "name": "dayFinished2"
          },
          "Recieved_date": {
            "type": "string",
            "name": "Recieved_date"
          },
          "Amount_Samples": {
            "type": "string",
            "name": "Amount_Samples"
          },
          "Example": {
            "type": "string",
            "name": "Example"
          },
          "Indication": {
            "type": "string",
            "name": "Indication"
          },
          "packaging": {
            "type": "string",
            "name": "packaging"
          },
          "complete": {
            "type": "string",
            "name": "complete"
          },
          "Detail_Complete": {
            "type": "string",
            "name": "Detail_Complete"
          },
          "Normal": {
            "type": "string",
            "name": "Normal"
          },
          "Incomplete": {
            "type": "string",
            "name": "Incomplete"
          },
          "Detail_incomplete": {
            "type": "string",
            "name": "Detail_incomplete"
          },
          "Abnormal": {
            "type": "string",
            "name": "Abnormal"
          },
          "group": {
            "type": "string",
            "name": "group"
          },
          "PH_Before2": {
            "type": "string",
            "name": "PH_Before2"
          },
          "Spec_Actual2": {
            "type": "number",
            "name": "Spec_Actual2"
          },
          "physical_by": {
            "type": "string",
            "name": "physical_by"
          },
          "results_by": {
            "type": "string",
            "name": "results_by"
          },
          "physical_date": {
            "type": "string",
            "name": "physical_date"
          },
          "results_date": {
            "type": "string",
            "name": "results_date"
          },
          "submitBy": {
            "type": "string",
            "name": "submitBy"
          },
          "submit_date": {
            "type": "string",
            "name": "submit_date"
          },
          "check30": {
            "type": "boolean",
            "name": "check30"
          },
          "check55": {
            "type": "boolean",
            "name": "check55"
          },
          "physical_by2": {
            "type": "string",
            "name": "physical_by2"
          },
          "physical_date2": {
            "type": "string",
            "name": "physical_date2"
          },
          "results_by2": {
            "type": "string",
            "name": "results_by2"
          },
          "results_date2": {
            "type": "string",
            "name": "results_date2"
          },
          "SendBY2": {
            "type": "string",
            "name": "SendBY2"
          },
          "SendBY3": {
            "type": "string",
            "name": "SendBY3"
          },
          "machine": {
            "type": "string",
            "name": "machine"
          },
          "ReportBY": {
            "type": "string",
            "name": "ReportBY"
          },
          "Report_Date": {
            "type": "string",
            "name": "Report_Date"
          }
        },
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "FillingDate",
            "default": ""
          },
          {
            "name": "sampid",
            "default": ""
          },
          {
            "name": "mac",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n    s.*,\n    m.machine\nFROM Sampling s\nLEFT JOIN machine m\n    ON s.machine = m.no\nWHERE\n    ('{{sampid}}' = '' OR s.SamplingID = '{{sampid}}')\n    AND ('{{FillingDate}}' = '' OR CAST(s.FillingDate AS DATE) = CAST('{{FillingDate}}' AS DATE))\n    AND ('{{mac}}' = '' OR m.no = '{{mac}}');"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "nullDefaultSupport": true,
        "createdAt": "2026-05-30T03:48:57.150Z",
        "updatedAt": "2026-06-09T02:47:59.597Z",
        "readable": true,
        "type": "query",
        "queryParams": {
          "FillingDate": "{{ [c1eba80802b2a4cf8965c58b886f9777d].[value] }}",
          "sampid": "{{ [c83708888708e44f99f34ce980be5b702].[value] }}",
          "mac": "{{ [c0b7294b0833140f1a777a6b7092d6508].[value] }}"
        }
      },
      "columns": [
        {
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": true
        },
        {
          "label": "Department",
          "field": "Department",
          "active": true,
          "width": 120,
          "format": null
        },
        {
          "label": "FillingDate",
          "field": "FillingDate",
          "active": true,
          "width": 120,
          "format": null
        },
        {
          "label": "machine",
          "field": "machine",
          "active": true,
          "width": 100
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": false
        },
        {
          "label": "Product",
          "field": "Product",
          "active": true,
          "width": 120
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 120
        },
        {
          "label": "Size",
          "field": "Size",
          "active": false
        },
        {
          "label": "ExpiredDate",
          "field": "ExpiredDate",
          "active": false
        },
        {
          "label": "Plan_CheckDate",
          "field": "Plan_CheckDate",
          "active": false
        },
        {
          "label": "Actual_CheckDate",
          "field": "Actual_CheckDate",
          "active": false
        },
        {
          "label": "PH_Before",
          "field": "PH_Before",
          "active": false
        },
        {
          "label": "Spec_Actual",
          "field": "Spec_Actual",
          "active": false
        },
        {
          "label": "MFG_Date",
          "field": "MFG_Date",
          "active": false
        },
        {
          "label": "Temperature",
          "field": "Temperature",
          "active": false
        },
        {
          "label": "Temperature2",
          "field": "Temperature2",
          "active": false
        },
        {
          "label": "Quanity",
          "field": "Quanity",
          "active": false
        },
        {
          "label": "Quanity2",
          "field": "Quanity2",
          "active": false
        },
        {
          "label": "SendBY",
          "field": "SendBY",
          "active": false
        },
        {
          "label": "RecevieBy",
          "field": "RecevieBy",
          "active": false
        },
        {
          "label": "SupervisorBy",
          "field": "SupervisorBy",
          "active": false
        },
        {
          "label": "Supervisor_Date",
          "field": "Supervisor_Date",
          "active": false
        },
        {
          "label": "CreatedBY",
          "field": "CreatedBY",
          "active": false
        },
        {
          "label": "Products",
          "field": "Products",
          "active": false
        },
        {
          "label": "PH",
          "field": "PH",
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
          "label": "Atp",
          "field": "Atp",
          "active": false
        },
        {
          "label": "PH2",
          "field": "PH2",
          "active": false
        },
        {
          "label": "Tpc2",
          "field": "Tpc2",
          "active": false
        },
        {
          "label": "Atp2",
          "field": "Atp2",
          "active": false
        },
        {
          "label": "Tpc",
          "field": "Tpc",
          "active": false
        },
        {
          "label": "Colour2",
          "field": "Colour2",
          "active": false
        },
        {
          "label": "Smell2",
          "field": "Smell2",
          "active": false
        },
        {
          "label": "EditBy",
          "field": "EditBy",
          "active": false
        },
        {
          "label": "UpdateAt",
          "field": "UpdateAt",
          "active": false
        },
        {
          "label": "Plan_CheckDate55",
          "field": "Plan_CheckDate55",
          "active": false
        },
        {
          "label": "Actual_CheckDate55",
          "field": "Actual_CheckDate55",
          "active": false
        },
        {
          "label": "dayFinished",
          "field": "dayFinished",
          "active": false
        },
        {
          "label": "dayFinished2",
          "field": "dayFinished2",
          "active": false
        },
        {
          "label": "Recieved_date",
          "field": "Recieved_date",
          "active": false
        },
        {
          "label": "Amount_Samples",
          "field": "Amount_Samples",
          "active": false
        },
        {
          "label": "Example",
          "field": "Example",
          "active": false
        },
        {
          "label": "Indication",
          "field": "Indication",
          "active": false
        },
        {
          "label": "packaging",
          "field": "packaging",
          "active": false
        },
        {
          "label": "complete",
          "field": "complete",
          "active": false
        },
        {
          "label": "Detail_Complete",
          "field": "Detail_Complete",
          "active": false
        },
        {
          "label": "Normal",
          "field": "Normal",
          "active": false
        },
        {
          "label": "Incomplete",
          "field": "Incomplete",
          "active": false
        },
        {
          "label": "Detail_incomplete",
          "field": "Detail_incomplete",
          "active": false
        },
        {
          "label": "Abnormal",
          "field": "Abnormal",
          "active": false
        },
        {
          "label": "group",
          "field": "group",
          "active": false
        },
        {
          "label": "PH_Before2",
          "field": "PH_Before2",
          "active": false
        },
        {
          "label": "Spec_Actual2",
          "field": "Spec_Actual2",
          "active": false
        },
        {
          "label": "physical_by",
          "field": "physical_by",
          "active": false
        },
        {
          "label": "results_by",
          "field": "results_by",
          "active": false
        },
        {
          "label": "physical_date",
          "field": "physical_date",
          "active": false
        },
        {
          "label": "results_date",
          "field": "results_date",
          "active": false
        },
        {
          "label": "submitBy",
          "field": "submitBy",
          "active": false
        },
        {
          "label": "submit_date",
          "field": "submit_date",
          "active": false
        },
        {
          "label": "check30",
          "field": "check30",
          "active": false
        },
        {
          "label": "check55",
          "field": "check55",
          "active": false
        },
        {
          "label": "physical_by2",
          "field": "physical_by2",
          "active": false
        },
        {
          "label": "physical_date2",
          "field": "physical_date2",
          "active": false
        },
        {
          "label": "results_by2",
          "field": "results_by2",
          "active": false
        },
        {
          "label": "results_date2",
          "field": "results_date2",
          "active": false
        },
        {
          "label": "SendBY2",
          "field": "SendBY2",
          "active": false
        },
        {
          "label": "SendBY3",
          "field": "SendBY3",
          "active": false
        },
        {
          "label": "ReportBY",
          "field": "ReportBY",
          "active": false
        },
        {
          "label": "Report_Date",
          "field": "Report_Date",
          "active": false
        },
        {
          "label": "SupervisorID",
          "field": "SupervisorID",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": false,
          "conditions": [
            {
              "id": "rO2IDJpBt",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-gray-200)",
              "referenceValue": "waiting"
            },
            {
              "id": "MuEvxb1IV",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-orange-100)",
              "referenceValue": "pending"
            },
            {
              "id": "2qceL51mu",
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
        }
      ],
      "initialFilter": {
        "logicalOperator": "all",
        "onEmptyFilter": "all",
        "groups": [
          {
            "logicalOperator": "all",
            "filters": [
              {
                "valueType": "Binding",
                "field": "Group",
                "type": "string",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [c9f52eb76bd8e4f009eca37409113c5e7].[value] }}"
              }
            ]
          }
        ]
      },
      "buttons": [
        {
          "_id": "cdd4c7153a73541969600ccd6ad72ae08",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c1ccf1034dca442748daa77591f4e9ca1",
          "text": "1.CSV EXPORT",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8d16a6e37def479a8cc74b2995087a7c",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "device": "Tablet",
                  "rows": "1",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/in-out-csv",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "CMF-rXZWL"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "peek": null,
                "url": "/in-out-csv/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}"
              },
              "##eventHandlerType": "Navigate To",
              "id": "RD-CTdOzT"
            }
          ]
        },
        {
          "_id": "c318a8a029f6f4d5bbc7407af2b677bd3",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cb6cfa5d9e57c456e974926f13bbe4bc3",
          "text": "2.Finished Product",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8d16a6e37def479a8cc74b2995087a7c",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "device": "Tablet",
                  "rows": "1",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/table-time-check-30-55",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "c6qxZ2bRw"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/table-time-check-30-55/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "P0ukSACwr"
            }
          ]
        },
        {
          "_id": "cecaa1789bdd444e5bcfad455440d6302",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c98f96b3f99514638b5fcdb329afb8ae5",
          "text": "3.Report",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8d16a6e37def479a8cc74b2995087a7c",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "device": "Tablet",
                  "rows": "1",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/report-low",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "2Sph9tMuJ"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/report-low/{{ [c8d16a6e37def479a8cc74b2995087a7c].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "g0DFYe2ud"
            }
          ]
        }
      ],
      "_conditions": []
    }
  },
  {
    "component": "DayTime_inspect",
    "id": "c1eba80802b2a4cf8965c58b886f9777d",
    "path": "/_children/2/_children/1/_children/1",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "Machine_inspect",
    "id": "c0b7294b0833140f1a777a6b7092d6508",
    "path": "/_children/2/_children/1/_children/2",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  },
  {
    "component": "Machine_Group_inspect",
    "id": "c9f52eb76bd8e4f009eca37409113c5e7",
    "path": "/_children/2/_children/1/_children/3",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  },
  {
    "component": "Container Sup",
    "id": "cb1736126632c43e48100766c7dc6d765",
    "path": "/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "6fWJlU83Y",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qasup"
        }
      ]
    }
  },
  {
    "component": "QSM_Supervisor_EMP",
    "id": "ca4da2752f86a4cdaa8be1f0bc85a590f",
    "path": "/_children/3/_children/1/_children/2/_children/0/_children/0",
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
    "component": "Sampling Table",
    "id": "cc116ba2563cd40f6ab3497de441b71a9",
    "path": "/_children/3/_children/1/_children/3",
    "properties": {
      "table": {
        "label": "SamplingTable",
        "name": "SamplingTable",
        "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef417db2fbf44754bd6a28c849b67a09",
        "_rev": "8-68868ab7f5cb50b9f2ea838694c4b65a",
        "transformer": "return data",
        "schema": {
          "id": {
            "type": "number",
            "name": "id"
          },
          "SamplingID": {
            "type": "string",
            "name": "SamplingID"
          },
          "Product": {
            "type": "string",
            "name": "Product"
          },
          "Flavour": {
            "type": "string",
            "name": "Flavour"
          },
          "Size": {
            "type": "string",
            "name": "Size"
          },
          "FillingDate": {
            "type": "string",
            "name": "FillingDate"
          },
          "ExpiredDate": {
            "type": "string",
            "name": "ExpiredDate"
          },
          "Department": {
            "type": "string",
            "name": "Department"
          },
          "Machine": {
            "type": "string",
            "name": "Machine"
          },
          "Plan_CheckDate": {
            "type": "string",
            "name": "Plan_CheckDate"
          },
          "Actual_CheckDate": {
            "type": "string",
            "name": "Actual_CheckDate"
          },
          "PH_Before": {
            "type": "string",
            "name": "PH_Before"
          },
          "Spec_Actual": {
            "type": "number",
            "name": "Spec_Actual"
          },
          "MFG_Date": {
            "type": "string",
            "name": "MFG_Date"
          },
          "Temperature": {
            "type": "string",
            "name": "Temperature"
          },
          "Temperature2": {
            "type": "string",
            "name": "Temperature2"
          },
          "Quanity": {
            "type": "string",
            "name": "Quanity"
          },
          "Quanity2": {
            "type": "string",
            "name": "Quanity2"
          },
          "SendBY": {
            "type": "string",
            "name": "SendBY"
          },
          "RecevieBy": {
            "type": "string",
            "name": "RecevieBy"
          },
          "SupervisorBy": {
            "type": "string",
            "name": "SupervisorBy"
          },
          "Supervisor_Date": {
            "type": "string",
            "name": "Supervisor_Date"
          },
          "CreatedBY": {
            "type": "string",
            "name": "CreatedBY"
          },
          "Products": {
            "type": "string",
            "name": "Products"
          },
          "PH": {
            "type": "string",
            "name": "PH"
          },
          "Colour": {
            "type": "boolean",
            "name": "Colour"
          },
          "Smell": {
            "type": "boolean",
            "name": "Smell"
          },
          "Atp": {
            "type": "string",
            "name": "Atp"
          },
          "PH2": {
            "type": "string",
            "name": "PH2"
          },
          "Tpc2": {
            "type": "string",
            "name": "Tpc2"
          },
          "Atp2": {
            "type": "string",
            "name": "Atp2"
          },
          "Tpc": {
            "type": "string",
            "name": "Tpc"
          },
          "Colour2": {
            "type": "boolean",
            "name": "Colour2"
          },
          "Smell2": {
            "type": "boolean",
            "name": "Smell2"
          },
          "EditBy": {
            "type": "string",
            "name": "EditBy"
          },
          "UpdateAt": {
            "type": "string",
            "name": "UpdateAt"
          },
          "Plan_CheckDate55": {
            "type": "string",
            "name": "Plan_CheckDate55"
          },
          "Actual_CheckDate55": {
            "type": "string",
            "name": "Actual_CheckDate55"
          },
          "dayFinished": {
            "type": "string",
            "name": "dayFinished"
          },
          "dayFinished2": {
            "type": "string",
            "name": "dayFinished2"
          },
          "Recieved_date": {
            "type": "string",
            "name": "Recieved_date"
          },
          "Amount_Samples": {
            "type": "string",
            "name": "Amount_Samples"
          },
          "Example": {
            "type": "string",
            "name": "Example"
          },
          "Indication": {
            "type": "string",
            "name": "Indication"
          },
          "packaging": {
            "type": "string",
            "name": "packaging"
          },
          "complete": {
            "type": "string",
            "name": "complete"
          },
          "Detail_Complete": {
            "type": "string",
            "name": "Detail_Complete"
          },
          "Normal": {
            "type": "string",
            "name": "Normal"
          },
          "Incomplete": {
            "type": "string",
            "name": "Incomplete"
          },
          "Detail_incomplete": {
            "type": "string",
            "name": "Detail_incomplete"
          },
          "Abnormal": {
            "type": "string",
            "name": "Abnormal"
          },
          "group": {
            "type": "string",
            "name": "group"
          },
          "PH_Before2": {
            "type": "string",
            "name": "PH_Before2"
          },
          "Spec_Actual2": {
            "type": "number",
            "name": "Spec_Actual2"
          },
          "physical_by": {
            "type": "string",
            "name": "physical_by"
          },
          "results_by": {
            "type": "string",
            "name": "results_by"
          },
          "physical_date": {
            "type": "string",
            "name": "physical_date"
          },
          "results_date": {
            "type": "string",
            "name": "results_date"
          },
          "submitBy": {
            "type": "string",
            "name": "submitBy"
          },
          "submit_date": {
            "type": "string",
            "name": "submit_date"
          },
          "check30": {
            "type": "boolean",
            "name": "check30"
          },
          "check55": {
            "type": "boolean",
            "name": "check55"
          },
          "physical_by2": {
            "type": "string",
            "name": "physical_by2"
          },
          "physical_date2": {
            "type": "string",
            "name": "physical_date2"
          },
          "results_by2": {
            "type": "string",
            "name": "results_by2"
          },
          "results_date2": {
            "type": "string",
            "name": "results_date2"
          },
          "SendBY2": {
            "type": "string",
            "name": "SendBY2"
          },
          "SendBY3": {
            "type": "string",
            "name": "SendBY3"
          },
          "machine": {
            "type": "string",
            "name": "machine"
          },
          "ReportBY": {
            "type": "string",
            "name": "ReportBY"
          },
          "Report_Date": {
            "type": "string",
            "name": "Report_Date"
          }
        },
        "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
        "parameters": [
          {
            "name": "FillingDate",
            "default": ""
          },
          {
            "name": "sampid",
            "default": ""
          },
          {
            "name": "mac",
            "default": ""
          }
        ],
        "fields": {
          "sql": "SELECT\n    s.*,\n    m.machine\nFROM Sampling s\nLEFT JOIN machine m\n    ON s.machine = m.no\nWHERE\n    ('{{sampid}}' = '' OR s.SamplingID = '{{sampid}}')\n    AND ('{{FillingDate}}' = '' OR CAST(s.FillingDate AS DATE) = CAST('{{FillingDate}}' AS DATE))\n    AND ('{{mac}}' = '' OR m.no = '{{mac}}');"
        },
        "queryVerb": "read",
        "nestedSchemaFields": {},
        "nullDefaultSupport": true,
        "createdAt": "2026-05-30T03:48:57.150Z",
        "updatedAt": "2026-06-09T02:47:59.597Z",
        "readable": true,
        "type": "query",
        "queryParams": {
          "FillingDate": "{{ [c30f5ad827c9446fa8f766d91cd933cb3].[value] }}",
          "sampid": "{{ [c0d290502526c4611a57f6fe0e4fe8320].[value] }}",
          "mac": "{{ [c80222a59a06846269705655d89288cda].[value] }}",
          "Actual_CheckDate": "{{ [cab67d86fc2c140289f0d2681964407a9].[value] }}",
          "ActualDate": "{{ [cab67d86fc2c140289f0d2681964407a9].[value] }}"
        }
      },
      "columns": [
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": true,
          "width": 160
        },
        {
          "label": "Department",
          "field": "Department",
          "active": true,
          "width": 120
        },
        {
          "label": "FillingDate",
          "field": "FillingDate",
          "active": true,
          "width": 120
        },
        {
          "label": "Actual Date",
          "field": "Actual_CheckDate",
          "active": true,
          "width": 120,
          "format": "{{ date [cc116ba2563cd40f6ab3497de441b71a9].[Actual_CheckDate] \"DD/MM/YYYY\"}}"
        },
        {
          "label": "machine",
          "field": "machine",
          "active": true,
          "width": 100
        },
        {
          "label": "Product",
          "field": "Product",
          "active": true,
          "width": 120
        },
        {
          "label": "Flavour",
          "field": "Flavour",
          "active": true,
          "width": 120
        },
        {
          "label": "Products",
          "field": "Products",
          "active": false
        },
        {
          "label": "Group",
          "field": "Group",
          "active": false
        },
        {
          "label": "Machine",
          "field": "Machine",
          "active": false
        },
        {
          "label": "submitBy",
          "field": "submitBy",
          "active": false
        },
        {
          "label": "RecevieBy",
          "field": "RecevieBy",
          "active": false
        },
        {
          "label": "SupervisorID",
          "field": "SupervisorID",
          "active": false
        },
        {
          "label": "status",
          "field": "status",
          "active": false,
          "conditions": [
            {
              "id": "wi43VUpRp",
              "target": "row",
              "metadataKey": "backgroundColor",
              "operator": "equal",
              "valueType": "string",
              "metadataValue": "var(--spectrum-global-color-orange-100)",
              "referenceValue": "pending"
            },
            {
              "id": "xiVQ-qX54",
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
          "label": "id",
          "field": "id",
          "active": false
        },
        {
          "label": "Size",
          "field": "Size",
          "active": false
        },
        {
          "label": "ExpiredDate",
          "field": "ExpiredDate",
          "active": false
        },
        {
          "label": "Plan_CheckDate",
          "field": "Plan_CheckDate",
          "active": false
        },
        {
          "label": "PH_Before",
          "field": "PH_Before",
          "active": false
        },
        {
          "label": "Spec_Actual",
          "field": "Spec_Actual",
          "active": false
        },
        {
          "label": "MFG_Date",
          "field": "MFG_Date",
          "active": false
        },
        {
          "label": "Temperature",
          "field": "Temperature",
          "active": false
        },
        {
          "label": "Temperature2",
          "field": "Temperature2",
          "active": false
        },
        {
          "label": "Quanity",
          "field": "Quanity",
          "active": false
        },
        {
          "label": "Quanity2",
          "field": "Quanity2",
          "active": false
        },
        {
          "label": "SendBY",
          "field": "SendBY",
          "active": false
        },
        {
          "label": "SupervisorBy",
          "field": "SupervisorBy",
          "active": false
        },
        {
          "label": "Supervisor_Date",
          "field": "Supervisor_Date",
          "active": false
        },
        {
          "label": "CreatedBY",
          "field": "CreatedBY",
          "active": false
        },
        {
          "label": "PH",
          "field": "PH",
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
          "label": "Atp",
          "field": "Atp",
          "active": false
        },
        {
          "label": "PH2",
          "field": "PH2",
          "active": false
        },
        {
          "label": "Tpc2",
          "field": "Tpc2",
          "active": false
        },
        {
          "label": "Atp2",
          "field": "Atp2",
          "active": false
        },
        {
          "label": "Tpc",
          "field": "Tpc",
          "active": false
        },
        {
          "label": "Colour2",
          "field": "Colour2",
          "active": false
        },
        {
          "label": "Smell2",
          "field": "Smell2",
          "active": false
        },
        {
          "label": "EditBy",
          "field": "EditBy",
          "active": false
        },
        {
          "label": "UpdateAt",
          "field": "UpdateAt",
          "active": false
        },
        {
          "label": "Plan_CheckDate55",
          "field": "Plan_CheckDate55",
          "active": false
        },
        {
          "label": "Actual_CheckDate55",
          "field": "Actual_CheckDate55",
          "active": false
        },
        {
          "label": "dayFinished",
          "field": "dayFinished",
          "active": false
        },
        {
          "label": "dayFinished2",
          "field": "dayFinished2",
          "active": false
        },
        {
          "label": "Recieved_date",
          "field": "Recieved_date",
          "active": false
        },
        {
          "label": "Amount_Samples",
          "field": "Amount_Samples",
          "active": false
        },
        {
          "label": "Example",
          "field": "Example",
          "active": false
        },
        {
          "label": "Indication",
          "field": "Indication",
          "active": false
        },
        {
          "label": "packaging",
          "field": "packaging",
          "active": false
        },
        {
          "label": "complete",
          "field": "complete",
          "active": false
        },
        {
          "label": "Detail_Complete",
          "field": "Detail_Complete",
          "active": false
        },
        {
          "label": "Normal",
          "field": "Normal",
          "active": false
        },
        {
          "label": "Incomplete",
          "field": "Incomplete",
          "active": false
        },
        {
          "label": "Detail_incomplete",
          "field": "Detail_incomplete",
          "active": false
        },
        {
          "label": "Abnormal",
          "field": "Abnormal",
          "active": false
        },
        {
          "label": "group",
          "field": "group",
          "active": false
        },
        {
          "label": "PH_Before2",
          "field": "PH_Before2",
          "active": false
        },
        {
          "label": "Spec_Actual2",
          "field": "Spec_Actual2",
          "active": false
        },
        {
          "label": "physical_by",
          "field": "physical_by",
          "active": false
        },
        {
          "label": "results_by",
          "field": "results_by",
          "active": false
        },
        {
          "label": "physical_date",
          "field": "physical_date",
          "active": false
        },
        {
          "label": "results_date",
          "field": "results_date",
          "active": false
        },
        {
          "label": "submit_date",
          "field": "submit_date",
          "active": false
        },
        {
          "label": "check30",
          "field": "check30",
          "active": false
        },
        {
          "label": "check55",
          "field": "check55",
          "active": false
        },
        {
          "label": "physical_by2",
          "field": "physical_by2",
          "active": false
        },
        {
          "label": "physical_date2",
          "field": "physical_date2",
          "active": false
        },
        {
          "label": "results_by2",
          "field": "results_by2",
          "active": false
        },
        {
          "label": "results_date2",
          "field": "results_date2",
          "active": false
        },
        {
          "label": "SendBY2",
          "field": "SendBY2",
          "active": false
        },
        {
          "label": "SendBY3",
          "field": "SendBY3",
          "active": false
        },
        {
          "label": "ReportBY",
          "field": "ReportBY",
          "active": false
        },
        {
          "label": "Report_Date",
          "field": "Report_Date",
          "active": false
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
                "value": "{{ [cd466d4ffae7743da8fd19ea9fa2abb6a].[value] }}"
              }
            ]
          }
        ]
      },
      "buttons": [
        {
          "_id": "c30399bccdc0d4c3e8993180986af75dd",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c73be4437237443c49fe807b15fc7f7ad",
          "text": "LowAcid",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "key": "CallBack_Sampling",
                "type": "set",
                "persist": null,
                "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "7m09njbo0"
            },
            {
              "parameters": {
                "queryParams": {
                  "device": "Tablet",
                  "rows": "1",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/low-acid",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "673EXlo7a"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/low-acid",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "jKz30OInB"
            }
          ]
        },
        {
          "_id": "c8c3c2797ca6c4a15903420f3820865a7",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c8ecbe78c8d144c178805005aeeb6e910",
          "text": "CSV-EXPORT",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "app": "QSM Microbiological Analysis System",
                  "rows": "1",
                  "device": "Tablet",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/in-out-csv"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "oKTVqT8i8"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/in-out-csv/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "hL9z0LY3l"
            }
          ]
        },
        {
          "_id": "c92e978ca02b74f678ead8eb4559b4b02",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c0269d50114314223a7b935dc25aa5657",
          "text": "Finished Product",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "app": "QSM Microbiological Analysis System",
                  "rows": "1",
                  "device": "Tablet",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/table-time-check-30-55"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "confirm": null,
                "notificationOverride": true
              },
              "##eventHandlerType": "Execute Query",
              "id": "XVAFHUR2l"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/table-time-check-30-55/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "2PEYZT-Mj"
            }
          ]
        },
        {
          "_id": "c45bfca1e37b64821ba36b9266948d1fe",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cb58836ccfb9446259bb19d77ba778109",
          "text": "Approve",
          "type": "secondary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "app": "QSM Microbiological Analysis System",
                  "rows": "1",
                  "device": "Tablet",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "action": "read",
                  "screen": "/supervisor-report"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "_xj51WSE0"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/supervisor-report/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "1uP4Odghp"
            }
          ]
        },
        {
          "_id": "cd2fc9ce2483e425eb49437a770ffce89",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c996f4319f2444f4c9d36ebec2ba75637",
          "text": "Report",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "screen": "/report-low",
                  "action": "read",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "device": "Tablet",
                  "rows": "1",
                  "app": "QSM Microbiological Analysis System"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true
              },
              "##eventHandlerType": "Execute Query",
              "id": "DCkeuNdze"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/report-low/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "P3GBRGdye"
            }
          ]
        },
        {
          "_id": "c348363b915fd4d04ba5577702b5a3182",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c6e00e5af51b74e8cad2469955d554928",
          "text": "Status",
          "type": "warning",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "queryParams": {
                  "app": "QSM Microbiological Analysis System",
                  "screen": "/sampling-tracker",
                  "action": "read",
                  "createdby": "{{ [state].[CallbackDB_API].user }}",
                  "device": "Tablet",
                  "rows": "1"
                },
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
                "notificationOverride": true,
                "confirm": null
              },
              "##eventHandlerType": "Execute Query",
              "id": "zEW_ZtbIp"
            },
            {
              "parameters": {
                "externalNewTab": null,
                "type": "screen",
                "url": "/sampling-tracker/{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "peek": null
              },
              "##eventHandlerType": "Navigate To",
              "id": "Ssdgk5ynt"
            }
          ]
        },
        {
          "_id": "cf41d373401c94561b3f5818c5ccb56b3",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c2dbb7f63578748bdbfce85bbd77cddf4",
          "text": "30 °c",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "key": "CallBack_Sampling",
                "type": "set",
                "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "j8slIvDAL"
            },
            {
              "parameters": {
                "id": "c851e1754a3154640a7caa8d303311242"
              },
              "##eventHandlerType": "Open Modal",
              "id": "vSzRYJN9K"
            }
          ]
        },
        {
          "_id": "c691e93819cbf4d3e81b056a379b3208c",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c38442dae07f04c48b64b5aaa3364c133",
          "text": "55 °c",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "key": "CallBack_Sampling",
                "type": "set",
                "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}"
              },
              "##eventHandlerType": "Update State",
              "id": "jo5bCUrEY"
            },
            {
              "parameters": {
                "id": "c54a30390dcac470d8cb9db201cce848c"
              },
              "##eventHandlerType": "Open Modal",
              "id": "4Z4r9fmmJ"
            }
          ]
        },
        {
          "_id": "c40befa4f7c2649309972f6c547f35b1b",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cf536aaaabde94921b678265d56915bd1",
          "text": "Unlock Sampling",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cc116ba2563cd40f6ab3497de441b71a9",
          "onClick": [
            {
              "parameters": {
                "key": "SamplingID_Table",
                "type": "set",
                "value": "{{ [cc116ba2563cd40f6ab3497de441b71a9].[SamplingID] }}",
                "persist": null
              },
              "##eventHandlerType": "Update State",
              "id": "EG56R8ci6"
            },
            {
              "parameters": {
                "id": "ce1793f45eecc4a5eacbcff3fc9aaf472"
              },
              "##eventHandlerType": "Open Modal",
              "id": "EHTerF64Z"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "DayTime_sup",
    "id": "c30f5ad827c9446fa8f766d91cd933cb3",
    "path": "/_children/3/_children/1/_children/4",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "Actual Date",
    "id": "cab67d86fc2c140289f0d2681964407a9",
    "path": "/_children/3/_children/1/_children/5",
    "properties": {
      "defaultValue": "{{ [state].[SelectDate Table] }}"
    }
  },
  {
    "component": "Machine_sup",
    "id": "c80222a59a06846269705655d89288cda",
    "path": "/_children/3/_children/1/_children/6",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  },
  {
    "component": "Machine_Group_sup",
    "id": "cd466d4ffae7743da8fd19ea9fa2abb6a",
    "path": "/_children/3/_children/1/_children/7",
    "properties": {
      "dataProvider": "{{ literal [c618a7c69acff41eea31355ad12c3eba1] }}"
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
