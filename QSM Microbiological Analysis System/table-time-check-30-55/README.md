# Screen: /table-time-check-30-55/:sampid

หน้าตรวจผลราย Brik30/55: อ่าน CallProduct30/55, แก้ colour/smell/TPC ด้วย UpdateTemp30/55; กำหนด test flags ของหัวและลงผู้ตรวจ physical/results. Modal remark เลือกตารางผ่าน state remark_table แล้วบันทึก remark/NewpH/NewATP. ลำดับ refresh และ clear form ระบุใน event ด้านล่าง.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_a8dedb452339483597b08956cc949f5b`
- Route: `/table-time-check-30-55/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 142

## Query dependencies

- [CallProduct30](<../database/Query/CallProduct30.sql>)
- [CallProduct55](<../database/Query/CallProduct55.sql>)
- [Product_Remark](<../database/Query/Product_Remark.sql>)
- [result_physical_api](<../database/Query/result_physical_api.sql>)
- [result_physical_api 2](<../database/Query/result_physical_api 2.sql>)
- [Update  Results](<../database/Query/Update  Results.sql>)
- [UPDATE CheckBox](<../database/Query/UPDATE CheckBox.sql>)
- [UpdateTemp30](<../database/Query/UpdateTemp30.sql>)
- [UpdateTemp55](<../database/Query/UpdateTemp55.sql>)

## Components

| Type | Count |
|---|---|
| text | 65 |
| container | 16 |
| button | 14 |
| booleanfield | 14 |
| stringfield | 11 |
| form | 5 |
| datetimefield | 4 |
| dataprovider | 3 |
| repeater | 3 |
| optionsfield | 3 |
| modal | 2 |
| gridblock | 2 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| Smell2 | Smell2 |  | ไม่ได้กำหนด |
| Colour2 | Colour2 |  | ไม่ได้กำหนด |
| Tpc | Tpc |  | ไม่ได้กำหนด |
| Atp2 | Atp2 |  | ไม่ได้กำหนด |
| Tpc2 | Tpc2 |  | ไม่ได้กำหนด |
| PH2 | PH2 |  | ไม่ได้กำหนด |
| Atp | Atp |  | ไม่ได้กำหนด |
| Smell | Smell |  | ไม่ได้กำหนด |
| Colour | Colour |  | ไม่ได้กำหนด |
| PH | PH |  | ไม่ได้กำหนด |
| temFinished | Temperature |  | ไม่ได้กำหนด |
| dayFinished | dayFinished |  | ไม่ได้กำหนด |
| Remark input | remark |  | ไม่ได้กำหนด |
| NewpH input | NewpH |  | ไม่ได้กำหนด |
| NewATP Input | NewATP |  | ไม่ได้กำหนด |
| Colourcheck1 | colour |  | ไม่ได้กำหนด |
| Smellcheck1 | smell |  | ไม่ได้กำหนด |
| TPC Options | tpc | Please Select N/P | ไม่ได้กำหนด |
| Temperature Table |  | Please Select The Temperature | ไม่ได้กำหนด |
| Employee Report | physical_by |  | ไม่ได้กำหนด |
| Employee Report 2 | results_by |  | ไม่ได้กำหนด |
| Date report | physical_date |  | ไม่ได้กำหนด |
| Date report 2 | results_date |  | ไม่ได้กำหนด |
| temFinished | Temperature2 |  | ไม่ได้กำหนด |
| dayFinished2 | dayFinished2 |  | ไม่ได้กำหนด |
| Colourcheck2 | Colour |  | ไม่ได้กำหนด |
| Smellcheck2 | Smell |  | ไม่ได้กำหนด |
| TPC Option2 | tpc | Please Select N/P | ไม่ได้กำหนด |
| Employee Report | physical_by2 |  | ไม่ได้กำหนด |
| Employee Report 2 | results_by2 |  | ไม่ได้กำหนด |
| Date report | physical_date2 |  | ไม่ได้กำหนด |
| Date report 2 | results_date2 |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### New Button 2 — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0`

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
    "id": "5VYf6GcAj"
  }
]
```

</details>

### Check Physical — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/27`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UPDATE CheckBox |
| 2 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "ph": "{{ [cc717410505d4414896522488137e1a61].[value] }}",
        "colour": "{{ [c3c078416ee6d42e7bee9a88fa10f16ea].[value] }}",
        "smell": "{{ [cb056fad6fd2d4a1aab7cc05a9008567c].[value] }}",
        "tpc": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Tpc] }}",
        "atp": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Atp] }}",
        "ph2": "{{ [c1311387d8b7c49bf9ed9722a7b2ca889].[value] }}",
        "colour2": "{{ [cd71bfcc2022b44598c6369e19cc1b62e].[value] }}",
        "smell2": "{{ [c96fbe16d281f43d1b287a53f7f990a6d].[value] }}",
        "tpc2": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Tpc2] }}",
        "atp2": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Atp2] }}",
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_41894b2c2d524a3289fb57889d8be756",
      "confirm": null,
      "notificationOverride": false
    },
    "##eventHandlerType": "Execute Query",
    "id": "A4l8a5kAJ"
  },
  {
    "parameters": {
      "componentId": "c55ec1e69ca644e3da267ee2beff8725c"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "DGD_X63u6"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/28`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update  Results |
| 2 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "tpc": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Tpc] }}",
        "atp": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Atp] }}",
        "tpc2": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Tpc2] }}",
        "atp2": "{{ [c10e561d6438e4e7898b3d45e26a16aa8].[Atp2] }}",
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9fcd264792b24b0b8b92ad810604613f",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "qmNcHEnAh"
  },
  {
    "parameters": {
      "componentId": "c55ec1e69ca644e3da267ee2beff8725c"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "w6z8x9sT8"
  }
]
```

</details>

### save remark — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/0/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Product_Remark |
| 2 | Clear Form |  |
| 3 | Show Notification | type=success; message=Update Successfully! |
| 4 | Refresh Data Provider | componentId=Product30 |
| 5 | Refresh Data Provider | componentId=Product55 |
| 6 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "tables": "{{ [state].[remark_table] }}",
        "remark": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[remark] }}",
        "pH": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[NewpH] }}",
        "atp": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[NewATP] }}",
        "no": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[no] }}",
        "samp": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4c921ec51c324a3e9ca7bcdfb676dbd9",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "HE_-Pi66-"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Clear Form",
    "id": "roMoMLKYu"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Update Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "Ll3EpYl_Q"
  },
  {
    "parameters": {
      "componentId": "ce6a61f323c5748b58a4d5ca0f0de0422"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "s0hWAueME"
  },
  {
    "parameters": {
      "componentId": "caab331dd80fc465b94970fed82e8e61a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "gLMJZy4gh"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "d5BGhqmlm"
  }
]
```

</details>

### remark30 — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=remark_table; type=set; value=temperature_30 |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "remark_table",
      "type": "set",
      "persist": null,
      "value": "temperature_30"
    },
    "##eventHandlerType": "Update State",
    "id": "FrLZe616_"
  },
  {
    "parameters": {
      "id": "c0b3e66f958584f5c8921b6d22c512f2a"
    },
    "##eventHandlerType": "Open Modal",
    "id": "iDy_1LDxL"
  }
]
```

</details>

### Doucument — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c8a2b34fd37e3495fb97fa09b83d51b60"
    },
    "##eventHandlerType": "Open Modal",
    "id": "PQUoUeLkO"
  }
]
```

</details>

### Save Physical — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp30 |
| 2 | Refresh Data Provider | componentId=Product30 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Colour": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[colour] }}",
        "smell": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[smell] }}",
        "id": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[id] }}",
        "pH": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[ph] }}",
        "TPC": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[tpc] }}",
        "ATP": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[tpc] }}",
        "no": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[no] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f",
      "confirm": null,
      "notificationOverride": false
    },
    "##eventHandlerType": "Execute Query",
    "id": "Dt7HQvZHP"
  },
  {
    "parameters": {
      "componentId": "ce6a61f323c5748b58a4d5ca0f0de0422"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "4l0Z1RzIt"
  }
]
```

</details>

### Save Results — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp30 |
| 2 | Refresh Data Provider | componentId=Product30 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "pH": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[pH] }}",
        "Colour": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[colour] }}",
        "smell": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[smell] }}",
        "TPC": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[tpc] }}",
        "ATP": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[atp] }}",
        "codetime": "{{ [cd5064afff0e345bd84546feaf94ef2f4].[value] }}",
        "id": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[id] }}",
        "no": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[no] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "F6Om2gUh5"
  },
  {
    "parameters": {
      "componentId": "ce6a61f323c5748b58a4d5ca0f0de0422"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "lG58vUWwR"
  }
]
```

</details>

### Temperature30 Table — onRowClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/12/_children/0/_children/1`

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

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/12/_children/0/_children/2`

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

### Save Results — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=result_physical_api |
| 2 | Show Notification | type=success; message=Result Save Success! |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "phy": "{{ [c05edf1f30243463f813f649422560345].[physical_by] }}",
        "phy_date": "{{ [c05edf1f30243463f813f649422560345].[physical_date] }}",
        "result": "{{ [c05edf1f30243463f813f649422560345].[results_by] }}",
        "result_date": "{{ [c05edf1f30243463f813f649422560345].[results_date] }}",
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8ed4b63f52204c0c83287edd0570c22b",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "L0H102N3l"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Result Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "VsOxw4J7Y"
  }
]
```

</details>

### remark55 — onClick

Config path: `/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=remark_table; type=set; value=temperature_55 |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "remark_table",
      "type": "set",
      "persist": null,
      "value": "temperature_55"
    },
    "##eventHandlerType": "Update State",
    "id": "q2LVU9i8m"
  },
  {
    "parameters": {
      "id": "c0b3e66f958584f5c8921b6d22c512f2a"
    },
    "##eventHandlerType": "Open Modal",
    "id": "Svj2tptYC"
  }
]
```

</details>

### Doucument 2 — onClick

Config path: `/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c8a2b34fd37e3495fb97fa09b83d51b60"
    },
    "##eventHandlerType": "Open Modal",
    "id": "YbCSXYzBJ"
  }
]
```

</details>

### Save Physical 2 — onClick

Config path: `/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp55 |
| 2 | Refresh Data Provider | componentId=Product55 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "pH": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[ph] }}",
        "Colour": "{{ [c0979ff76d5494742969478cfbcb9cea3].[Colour] }}",
        "smell": "{{ [c0979ff76d5494742969478cfbcb9cea3].[Smell] }}",
        "TPC": "{{ [c0979ff76d5494742969478cfbcb9cea3].[tpc] }}",
        "ATP": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[atp] }}",
        "id": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[id] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "notificationOverride": null,
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6086e94cb9004fa69cae43ae8723a448",
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "hphHeRR4X"
  },
  {
    "parameters": {
      "componentId": "caab331dd80fc465b94970fed82e8e61a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "t99bnE3Cf"
  }
]
```

</details>

### Save Results 2 — onClick

Config path: `/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=UpdateTemp55 |
| 2 | Refresh Data Provider | componentId=Product55 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "pH": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[ph] }}",
        "Colour": "{{ [c0979ff76d5494742969478cfbcb9cea3].[Colour] }}",
        "smell": "{{ [c0979ff76d5494742969478cfbcb9cea3].[Smell] }}",
        "TPC": "{{ [c0979ff76d5494742969478cfbcb9cea3].[tpc] }}",
        "ATP": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[atp] }}",
        "codetime": "{{ [cd5064afff0e345bd84546feaf94ef2f4].[value] }}",
        "id": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[id] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6086e94cb9004fa69cae43ae8723a448",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "F6Om2gUh5"
  },
  {
    "parameters": {
      "componentId": "caab331dd80fc465b94970fed82e8e61a"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "iNB9Sl6XF"
  }
]
```

</details>

### Save Results — onClick

Config path: `/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2/_children/0/_children/7`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=result_physical_api 2 |
| 2 | Show Notification | type=success; message=Result Save Success! |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "phy": "{{ [cdbad0f5005b24e82964b793aa28baa5d].[physical_by2] }}",
        "phy_date": "{{ [cdbad0f5005b24e82964b793aa28baa5d].[physical_date2] }}",
        "result": "{{ [cdbad0f5005b24e82964b793aa28baa5d].[results_by2] }}",
        "result_date": "{{ [cdbad0f5005b24e82964b793aa28baa5d].[results_date2] }}",
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6ade36b49c44479c9fe49aa5bac327ea",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "L0H102N3l"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Result Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "VsOxw4J7Y"
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
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
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
              "field": "SamplingID",
              "type": "string",
              "constraints": {
                "presence": {
                  "allowEmpty": false
                },
                "length": {}
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
    "limit": 1
  },
  {
    "component": "New Form",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0",
    "dataSource": {
      "label": "Sampling",
      "type": "table",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Product30",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1",
    "dataSource": {
      "label": "CallProduct30",
      "name": "CallProduct30",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_01175c9863c34d3ea7905620e5c25430",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "currentQueryName": "CallProduct30",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "Form_30",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1",
    "dataSource": {
      "label": "temperature_30",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_30"
    }
  },
  {
    "component": "Sampling Form",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Product55",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0",
    "dataSource": {
      "label": "CallProduct55",
      "name": "CallProduct55",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f017ff85f0dc4e1bb65b5abcc3b8a676",
      "type": "query",
      "queryParams": {
        "sampID": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[SamplingID] }}"
      },
      "currentQueryName": "CallProduct55",
      "embeddedSqlDiffersFromCurrentQuery": false
    },
    "filter": null,
    "limit": 1
  },
  {
    "component": "Form_55",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1",
    "dataSource": {
      "label": "temperature_55",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__temperature_55"
    }
  },
  {
    "component": "Sampling Form",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2",
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
    "id": "c55ec1e69ca644e3da267ee2beff8725c",
    "path": "/_children/0",
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
                "field": "SamplingID",
                "type": "string",
                "constraints": {
                  "presence": {
                    "allowEmpty": false
                  },
                  "length": {}
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
          "id": "fnq6f_Wgc",
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
    "id": "c1c72dccf21db460b87a2410ea7fc77de",
    "path": "/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c55ec1e69ca644e3da267ee2beff8725c] }}"
    }
  },
  {
    "component": "Temper_30",
    "id": "cc4dfcc7cca16412db82678d5c7d82282",
    "path": "/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Smell2",
    "id": "c96fbe16d281f43d1b287a53f7f990a6d",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Smell2] }}"
    }
  },
  {
    "component": "Colour2",
    "id": "cd71bfcc2022b44598c6369e19cc1b62e",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/8",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Colour2] }}"
    }
  },
  {
    "component": "Tpc",
    "id": "c3ba8ac99963e4326a8c6246c9fb5fce1",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/9",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Tpc] }}",
      "_conditions": []
    }
  },
  {
    "component": "Atp2",
    "id": "c0b8f0e001f3047b5b6bc95fa56efdd73",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/10",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Atp2] }}"
    }
  },
  {
    "component": "Tpc2",
    "id": "c970d72cd8df4420ab7ee48903e142b32",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/11",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Tpc2] }}"
    }
  },
  {
    "component": "PH2",
    "id": "c1311387d8b7c49bf9ed9722a7b2ca889",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/12",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[PH2] }}"
    }
  },
  {
    "component": "Atp",
    "id": "c6792a923996c4e34a762ddafa4e49fc9",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/13",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Atp] }}"
    }
  },
  {
    "component": "Smell",
    "id": "cb056fad6fd2d4a1aab7cc05a9008567c",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/14",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Smell] }}"
    }
  },
  {
    "component": "Colour",
    "id": "c3c078416ee6d42e7bee9a88fa10f16ea",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Colour] }}"
    }
  },
  {
    "component": "PH",
    "id": "cc717410505d4414896522488137e1a61",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/16",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[PH] }}",
      "onChange": []
    }
  },
  {
    "component": "New Paragraph 3",
    "id": "ca7b5236067924362b64533512eb3649a",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/21",
    "properties": {
      "text": "\n[JavaScript binding]\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst runningNo = $(\"[c1c72dccf21db460b87a2410ea7fc77de].[Machine]\");\n\nreturn machineMap[runningNo] || \"Not Found\";\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "New Paragraph 3",
    "id": "c1d940b600f644c13afc5c1ea7428bf82",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/22",
    "properties": {
      "text": "\n[JavaScript binding]\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst runningNo = $(\"[c1c72dccf21db460b87a2410ea7fc77de].[Machine]\");\n\nreturn machineMap[runningNo] || \"Not Found\";\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "New Paragraph 3",
    "id": "c035ec7a20e7d4b32970a2e9661570aee",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/23",
    "properties": {
      "text": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Quanity2] }} Unit"
    }
  },
  {
    "component": "New Paragraph 3",
    "id": "c5d3e67137a854313921d9cef93d5d805",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/24",
    "properties": {
      "text": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Quanity] }} Unit"
    }
  },
  {
    "component": "",
    "id": "c4a58e908feb94d13808dc86d8d66a39d",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/25",
    "properties": {
      "text": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Temperature] }} °C"
    }
  },
  {
    "component": "New Paragraph 3",
    "id": "c199db00b2de84a75902d54ad4b47633f",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/26",
    "properties": {
      "text": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Temperature2] }} °C"
    }
  },
  {
    "component": "Check Physical",
    "id": "c3e5152b578354302bf766a702c5ee811",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/27",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "New Button",
    "id": "c3b745914d96147e5a0d6deb624edceb9",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0/_children/28",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Product30",
    "id": "ce6a61f323c5748b58a4d5ca0f0de0422",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "41qeLgWaj",
          "action": "show",
          "operator": "oneOf",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech,qasup",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "Product30 Repeater",
    "id": "c2e179ca40b204c9c9226d5a6931290b9",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ce6a61f323c5748b58a4d5ca0f0de0422] }}"
    }
  },
  {
    "component": "temFinished",
    "id": "c5781227700d74113b2008c67ef6d2314",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Temperature] }}"
    }
  },
  {
    "component": "dayFinished",
    "id": "cda1dae0495f14ee085f314d7451fe12b",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[dayFinished] }}"
    }
  },
  {
    "component": "No",
    "id": "c8286239b94ba426e8af8038738f63a4c",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/0",
    "properties": {
      "text": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[no] }}"
    }
  },
  {
    "component": "Colourcheck1",
    "id": "c569f8736b843467086dfbec2fb504d5e",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/1",
    "properties": {
      "defaultValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[colour] }}"
    }
  },
  {
    "component": "Smellcheck1",
    "id": "c0c361bf8006a4a72b29594f741a00a5a",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/2",
    "properties": {
      "defaultValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[smell] }}"
    }
  },
  {
    "component": "TPC Options",
    "id": "c85a7099fd8a84da5b044d59f0ca0360c",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/3",
    "properties": {
      "customOptions": [
        {
          "id": "YbfX-1ZSU",
          "label": "Negative",
          "value": "N"
        },
        {
          "id": "D4SLffmuo",
          "label": "Positive",
          "value": "P"
        },
        {
          "id": "beX736bnQ",
          "label": "-",
          "value": "-"
        }
      ],
      "dataProvider": "{{ literal [c55ec1e69ca644e3da267ee2beff8725c] }}",
      "defaultValue": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[tpc] }}"
    }
  },
  {
    "component": "remark30",
    "id": "c211cc5137844440fb36053d57778773e",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/4",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "tHMs1AyWJ",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[spec_ac_check] }}",
          "referenceValue": "false",
          "settingValue": "color: #ffffff;\nbackground-color: black;"
        },
        {
          "valueType": "string",
          "id": "Soi5ky43D",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[spec_ac_check] }}",
          "referenceValue": "true",
          "settingValue": "color: #ffffff;background-color: red;"
        },
        {
          "valueType": "string",
          "id": "kZEBxltt2",
          "action": "update",
          "operator": "equal",
          "setting": "disabled",
          "settingValue": true,
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[spec_ac_check] }}",
          "referenceValue": "false"
        },
        {
          "valueType": "string",
          "id": "F56KDoLiD",
          "action": "update",
          "operator": "notEmpty",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[newph] }}",
          "setting": "_css",
          "settingValue": "color: #ffffff; background-color: black;",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "N4alo3nHt",
          "action": "update",
          "operator": "notEmpty",
          "setting": "disabled",
          "settingValue": true,
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[newph] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Save Physical",
    "id": "c6b1c5563298b4fb59182faded54608a9",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/6",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "VBREu_jmo",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[smell] }}",
          "referenceValue": "true"
        }
      ]
    }
  },
  {
    "component": "Save Results",
    "id": "c1b84a08bbb52452ea0004daf1693adf5",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/7",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "c0SqubLJl",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[tpc] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "pH 30",
    "id": "c81dd347fe17640b99ce1ec6febb62bc2",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/8",
    "properties": {
      "text": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[ph] }}"
    }
  },
  {
    "component": "pHN",
    "id": "c759f6ee398e34d44baaf22835ed1187e",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/9",
    "properties": {
      "text": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[newph] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[newph] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Time 30",
    "id": "c24612e4453894d32981f78cf1e9342b7",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/10",
    "properties": {
      "text": "\n[JavaScript binding]\nlet raw = $(\"[c2e179ca40b204c9c9226d5a6931290b9].[code]\");\nlet d = new Date(raw);\n\n// ถ้าไม่มีค่า หรือไม่ใช่วันที่ที่ถูกต้อง หรือปีเป็น 2513 ให้ return ว่าง\nif (!raw || isNaN(d.getTime()) || d.getFullYear() === 2513) return \"\";\n\nreturn d.toLocaleTimeString(\"th-TH\", {\n  hour: \"2-digit\",\n  minute: \"2-digit\",\n  second: \"2-digit\",\n  hour12: false\n});\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Atp 30",
    "id": "c2aed2fa23cfb41d69e2f2a71da2a99f9",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/11",
    "properties": {
      "text": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[atp] }}"
    }
  },
  {
    "component": "Temperature Table",
    "id": "cc0e631e2d10642b6932b094f699a9c0a",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/12/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [ce6a61f323c5748b58a4d5ca0f0de0422] }}",
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
    "id": "c8645901c204e4992a44dd4ad1bb009f8",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/12/_children/0/_children/1",
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
          "label": "NewpH30",
          "field": "NewpH30",
          "active": true,
          "width": 100
        },
        {
          "label": "NewATP30",
          "field": "NewATP30",
          "active": true,
          "width": 120
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
          "label": "Remark30",
          "field": "Remark30",
          "active": false,
          "width": 150
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
                "value": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[sampID] }}"
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
          "newValue": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[Temperature Table] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Temperature55 Table",
    "id": "c72e88e70f96146e7a0ff49d19f33f826",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/12/_children/0/_children/2",
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
          "label": "code",
          "field": "code",
          "active": false
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
          "label": "ph",
          "field": "ph",
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
          "label": "NewpH55",
          "field": "NewpH55",
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
          "label": "no",
          "field": "no",
          "active": false
        },
        {
          "label": "NewATP55",
          "field": "NewATP55",
          "active": false
        },
        {
          "label": "remark",
          "field": "remark",
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
                "value": "{{ [c2e179ca40b204c9c9226d5a6931290b9].[sampID] }}"
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
          "newValue": "{{ [cb1eb7c6fed4e4aa59d01eb6990ce8bf7].[Temperature Table] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "pHN",
    "id": "c837883cddce3408093f370f5151af679",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/1/_children/1/_children/14",
    "properties": {
      "text": "{{ [c7d0a24a097394b919fa2653f34095d0b].[NewpH55] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c7d0a24a097394b919fa2653f34095d0b].[NewpH55] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "product report",
    "id": "c5ca88f7fb46a4f2093bca3a3b53f12f1",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Employee Report",
    "id": "ce0ca643685b942aeacf22d2bc69b821d",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0/_children/0",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[physical_by] }}"
    }
  },
  {
    "component": "Employee Report 2",
    "id": "c1ca4b2ea9ba64be8aca530d4c84b5fc0",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0/_children/1",
    "properties": {
      "defaultValue": "{{ [c05edf1f30243463f813f649422560345].[results_by] }}"
    }
  },
  {
    "component": "Date report",
    "id": "c56cdb9c5756f4586816660e7b49bb8fa",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0/_children/2",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[physical_date] }}"
    }
  },
  {
    "component": "Date report 2",
    "id": "c7e135a77042e4fb480bd7079ff9d17ea",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c05edf1f30243463f813f649422560345].[results_date] }}"
    }
  },
  {
    "component": "Temper_55",
    "id": "c009b894f3da64394b6de6c298a6a4689",
    "path": "/_children/0/_children/0/_children/1/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "FT6--4M-U",
          "action": "show",
          "operator": "oneOf",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech,qasup",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "Product55 Repeater",
    "id": "c5388c0d477a844d3ba064f3e8011bdb9",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [caab331dd80fc465b94970fed82e8e61a] }}"
    }
  },
  {
    "component": "temFinished",
    "id": "c20dfd474a1da4c9391e8c59e2f661535",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[Temperature2] }}"
    }
  },
  {
    "component": "dayFinished2",
    "id": "c52cf4899d904478eb4e9438d42e501da",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[dayFinished2] }}"
    }
  },
  {
    "component": "No",
    "id": "c62a20706cd164457ba2501540fb763a0",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/0",
    "properties": {
      "text": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[no] }}"
    }
  },
  {
    "component": "remark55",
    "id": "c07b0f2fff64b42ef982d7a92fa8c6729",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "tHMs1AyWJ",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[spec_ac_check] }}",
          "referenceValue": "false",
          "settingValue": "color: #ffffff;background-color: black;"
        },
        {
          "valueType": "string",
          "id": "Soi5ky43D",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[spec_ac_check] }}",
          "referenceValue": "true",
          "settingValue": "color: #ffffff;background-color: red;"
        },
        {
          "valueType": "string",
          "id": "TRWtELe9J",
          "action": "update",
          "operator": "equal",
          "setting": "disabled",
          "settingValue": true,
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[spec_ac_check] }}",
          "referenceValue": "false"
        },
        {
          "valueType": "string",
          "id": "dXRNW_Dpl",
          "action": "update",
          "operator": "notEmpty",
          "setting": "_css",
          "settingValue": "color: #ffffff;background-color: black;",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[newph] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "SJq79Axm-",
          "action": "update",
          "operator": "notEmpty",
          "setting": "disabled",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[newph] }}",
          "noValue": true,
          "referenceValue": null,
          "settingValue": true
        }
      ]
    }
  },
  {
    "component": "Colourcheck2",
    "id": "cc0f7282d39124282917661076c45e23d",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/2",
    "properties": {
      "defaultValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[colour] }}"
    }
  },
  {
    "component": "Smellcheck2",
    "id": "c0b4bb6b11291411f8007c297d29d3943",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[smell] }}"
    }
  },
  {
    "component": "TPC Option2",
    "id": "c3512154b26f84af996556c7eb5bb5da3",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/4",
    "properties": {
      "customOptions": [
        {
          "id": "YbfX-1ZSU",
          "label": "Negative",
          "value": "N"
        },
        {
          "id": "D4SLffmuo",
          "label": "Positive",
          "value": "P"
        },
        {
          "id": "6nMByfdMl",
          "label": "-",
          "value": "-"
        }
      ],
      "dataProvider": "{{ literal [c55ec1e69ca644e3da267ee2beff8725c] }}",
      "defaultValue": "{{ [c0979ff76d5494742969478cfbcb9cea3].[tpc] }}"
    }
  },
  {
    "component": "Save Physical 2",
    "id": "c8fd9cd28c9184a92a0356d3afe2c8059",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/6",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "vbOBARbt2",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[smell] }}",
          "referenceValue": "true"
        }
      ]
    }
  },
  {
    "component": "Save Results 2",
    "id": "c1f6875f877da4357b644387233cb0191",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/7",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "3w0qpyCdt",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[tpc] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "pH 30",
    "id": "cbd6451395bb84ffb90e3339b07d83515",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/9",
    "properties": {
      "text": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[ph] }}"
    }
  },
  {
    "component": "pHN",
    "id": "cc40ae817133243219f28ee6cf99e557e",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/10",
    "properties": {
      "text": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[newph] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "Kg-4KUKve",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[newph] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Atp 30",
    "id": "cce6d3d059fab4359b229f05ab0fe2478",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/11",
    "properties": {
      "text": "{{ [c5388c0d477a844d3ba064f3e8011bdb9].[atp] }}"
    }
  },
  {
    "component": "Time 55",
    "id": "ca71aaec5670e4a42b98f04d95270a577",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/1/_children/0/_children/12",
    "properties": {
      "text": "\n[JavaScript binding]\nlet raw = $(\"[c5388c0d477a844d3ba064f3e8011bdb9].[code]\");\nlet d = new Date(raw);\n\n// ถ้าไม่มีค่า หรือไม่ใช่วันที่ที่ถูกต้อง หรือปีเป็น 2513 ให้ return ว่าง\nif (!raw || isNaN(d.getTime()) || d.getFullYear() === 2513) return \"\";\n\nreturn d.toLocaleTimeString(\"th-TH\", {\n  hour: \"2-digit\",\n  minute: \"2-digit\",\n  second: \"2-digit\",\n  hour12: false\n});\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "product report",
    "id": "c68b1409688f64e939c73663b90263bfb",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Employee Report",
    "id": "cf3f40938a2b84cf88b86a5fd592d13c5",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2/_children/0/_children/0",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[physical_by2] }}"
    }
  },
  {
    "component": "Date report",
    "id": "cc6e76b4ab2b947d1a2df0f7da75c254b",
    "path": "/_children/0/_children/0/_children/1/_children/1/_children/0/_children/0/_children/2/_children/0/_children/2",
    "properties": {
      "defaultValue": "{{ [c1c72dccf21db460b87a2410ea7fc77de].[physical_by2] }}"
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
