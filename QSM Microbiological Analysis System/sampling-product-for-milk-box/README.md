# Screen: /sampling-product-for-milk-box

เลือก Size/วันผลิต แล้วเลือกหรือสแกน sampling ได้สูงสุด6ช่อง. Getall_Sampling ตัดตัวที่เลือกแล้ว; ปุ่ม Done เก็บ milk_samp1–milk_samp6 แล้วไป bottom-shrink-sampling-choose. เปลี่ยน Size สั่ง refresh provider.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_0c591721a27044db96df614ec51219c6`
- Route: `/sampling-product-for-milk-box`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 57

## Query dependencies

- [Getall_Sampling](<../database/Query/Getall_Sampling.sql>)

## Components

| Type | Count |
|---|---|
| text | 16 |
| container | 8 |
| optionsfield | 7 |
| button | 7 |
| stringfield | 6 |
| heading | 4 |
| formstep | 2 |
| buttongroup | 2 |
| dataprovider | 1 |
| image | 1 |
| divider | 1 |
| form | 1 |
| datetimefield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| Date Picker | FillingDate |  | ไม่ได้กำหนด |
| Sampling Options Picker1 | sampling1 |  | ไม่ได้กำหนด |
| Sampling Options Picker2 | sampling2 |  | ไม่ได้กำหนด |
| Sampling Options Picker3 | sampling3 |  | ไม่ได้กำหนด |
| Sampling Options Picker4 | sampling4 |  | ไม่ได้กำหนด |
| Sampling Options Picker5 | sampling5 |  | ไม่ได้กำหนด |
| Sampling Options Picker6 | sampling6 |  | ไม่ได้กำหนด |
| Size | Size | None | ไม่ได้กำหนด |
| Scan_1 | Scan_1 |  | ไม่ได้กำหนด |
| Scan_2 | Scan_2 |  | ไม่ได้กำหนด |
| Scan_3 | Scan_3 |  | ไม่ได้กำหนด |
| Scan_4 | Scan_4 |  | ไม่ได้กำหนด |
| Scan_5 | Scan_5 |  | ไม่ได้กำหนด |
| Scan_6 | Scan_6 |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Size — onChange

Config path: `/_children/1/_children/1/_children/0/_children/0/_children/0/_children/11`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Refresh Data Provider | componentId=Data sampling |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "componentId": "c23a65858540049569dac8bef7fc6d10f"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "RCSNjpRud"
  }
]
```

</details>

###  — onClick

Config path: `/_children/1/_children/1/_children/0/_children/0/_children/0/_children/12/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=milk_samp1; type=set; value={{ [cc89c79cdc81f41f5acdde5cec7e34f99].[value] }} |
| 2 | Update State | key=milk_samp2; type=set; value={{ [cba889c2f54224884abb3d4fc35c7f8dc].[value] }} |
| 3 | Update State | key=milk_samp3; type=set; value={{ [ca4d1536d7ea245c4bd91cc8f09e2632c].[value] }} |
| 4 | Update State | key=milk_samp4; type=set; value={{ [c69d26536e09b44b98016041a055d0824].[value] }} |
| 5 | Update State | key=milk_samp5; type=set; value={{ [c2d3c9f81a3c942548f31b5c4dda456b9].[value] }} |
| 6 | Update State | key=milk_samp6; type=set; value={{ [c6e9d1c4595af4e0da7efd1f323d172e0].[value] }} |
| 7 | Navigate To | url=/bottom-shrink-sampling-choose; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "milk_samp1",
      "type": "set",
      "value": "{{ [cc89c79cdc81f41f5acdde5cec7e34f99].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "0YRZf4_oF"
  },
  {
    "parameters": {
      "key": "milk_samp2",
      "type": "set",
      "persist": null,
      "value": "{{ [cba889c2f54224884abb3d4fc35c7f8dc].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "xby17SYu7"
  },
  {
    "parameters": {
      "key": "milk_samp3",
      "type": "set",
      "value": "{{ [ca4d1536d7ea245c4bd91cc8f09e2632c].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "X3RCtxwOb"
  },
  {
    "parameters": {
      "key": "milk_samp4",
      "type": "set",
      "value": "{{ [c69d26536e09b44b98016041a055d0824].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "4jPGm-i25"
  },
  {
    "parameters": {
      "key": "milk_samp5",
      "type": "set",
      "persist": null,
      "value": "{{ [c2d3c9f81a3c942548f31b5c4dda456b9].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "OCHEVmQqu"
  },
  {
    "parameters": {
      "key": "milk_samp6",
      "type": "set",
      "value": "{{ [c6e9d1c4595af4e0da7efd1f323d172e0].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "Ve4Psrjjx"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/bottom-shrink-sampling-choose",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "V1a2JVX4A"
  }
]
```

</details>

### c96cfd3052b1f4ceda1fc67beaf1f5510 — onClick

Config path: `/_children/1/_children/1/_children/0/_children/0/_children/0/_children/13/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=New Form; type=specific |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "type": "specific",
      "componentId": "c0b4ce61b402e43219335fee009d418c7",
      "number": "1"
    },
    "##eventHandlerType": "Change Form Step",
    "id": "95ljFzRrT"
  }
]
```

</details>

### c0d3daccd336c475faf3f5a141628ea2a — onClick

Config path: `/_children/1/_children/1/_children/0/_children/0/_children/0/_children/13/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=New Form; type=specific |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "type": "specific",
      "componentId": "c0b4ce61b402e43219335fee009d418c7",
      "number": "2"
    },
    "##eventHandlerType": "Change Form Step",
    "id": "12Axx30rJ"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/1/_children/1/_children/0/_children/0/_children/0/_children/14`

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
    "id": "ZiycYKrcT"
  }
]
```

</details>

###  — onClick

Config path: `/_children/1/_children/1/_children/0/_children/1/_children/0/_children/2/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=milk_samp1; type=set; value={{ [c671a26d1b1ae4271a272b290e4d1ee28].[value] }} |
| 2 | Update State | key=milk_samp2; type=set; value={{ [ce70f4ef1337e48d58bdbdd38486dfba5].[value] }} |
| 3 | Update State | key=milk_samp3; type=set; value={{ [c50d32baf9d2445e39dd7996a71244b02].[value] }} |
| 4 | Update State | key=milk_samp4; type=set; value={{ [cdedad34a5a8746f98681624a8b215344].[value] }} |
| 5 | Update State | key=milk_samp5; type=set; value={{ [c734a09d0029c4433be5dbb7562ee7686].[value] }} |
| 6 | Update State | key=milk_samp6; type=set; value={{ [c9950680ffbe2409ea28431978e97ecd6].[value] }} |
| 7 | Navigate To | url=/bottom-shrink-sampling-choose; type=url |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "milk_samp1",
      "type": "set",
      "value": "{{ [c671a26d1b1ae4271a272b290e4d1ee28].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "0YRZf4_oF"
  },
  {
    "parameters": {
      "key": "milk_samp2",
      "type": "set",
      "persist": null,
      "value": "{{ [ce70f4ef1337e48d58bdbdd38486dfba5].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "xby17SYu7"
  },
  {
    "parameters": {
      "key": "milk_samp3",
      "type": "set",
      "value": "{{ [c50d32baf9d2445e39dd7996a71244b02].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "X3RCtxwOb"
  },
  {
    "parameters": {
      "key": "milk_samp4",
      "type": "set",
      "value": "{{ [cdedad34a5a8746f98681624a8b215344].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "4jPGm-i25"
  },
  {
    "parameters": {
      "key": "milk_samp5",
      "type": "set",
      "persist": null,
      "value": "{{ [c734a09d0029c4433be5dbb7562ee7686].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "OCHEVmQqu"
  },
  {
    "parameters": {
      "key": "milk_samp6",
      "type": "set",
      "value": "{{ [c9950680ffbe2409ea28431978e97ecd6].[value] }}",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "Ve4Psrjjx"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "url",
      "url": "/bottom-shrink-sampling-choose",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "V1a2JVX4A"
  }
]
```

</details>

### c96cfd3052b1f4ceda1fc67beaf1f5510 — onClick

Config path: `/_children/1/_children/1/_children/0/_children/1/_children/0/_children/9/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=New Form; type=specific |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "type": "specific",
      "componentId": "c0b4ce61b402e43219335fee009d418c7",
      "number": "1"
    },
    "##eventHandlerType": "Change Form Step",
    "id": "95ljFzRrT"
  }
]
```

</details>

### c0d3daccd336c475faf3f5a141628ea2a — onClick

Config path: `/_children/1/_children/1/_children/0/_children/1/_children/0/_children/9/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Change Form Step | componentId=New Form; type=specific |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "type": "specific",
      "componentId": "c0b4ce61b402e43219335fee009d418c7",
      "number": "2"
    },
    "##eventHandlerType": "Change Form Step",
    "id": "12Axx30rJ"
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
    "component": "Data sampling",
    "path": "/_children/0",
    "dataSource": {
      "label": "Getall_Sampling",
      "name": "Getall_Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2e74f1db64764cdebe41f738b579e89b",
      "type": "query",
      "queryParams": {
        "Size": "{{ [c9d575c465e914fa88d3bacb103bd60b9].[value] }}",
        "sampling1": "",
        "sampling2": "",
        "FillingDate": "{{ [c2bdb1e59b3ae4371921ffde656ec7907].[value] }}",
        "form.Fields.FillingDate": "{{ [c0b4ce61b402e43219335fee009d418c7].[FillingDate] }}",
        "sampling3": "",
        "sampling4": "",
        "sampling5": "",
        "sampling6": ""
      },
      "currentQueryName": "Getall_Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 50
  },
  {
    "component": "New Form",
    "path": "/_children/1/_children/1/_children/0",
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
    "component": "Data sampling",
    "id": "c23a65858540049569dac8bef7fc6d10f",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "PDYqmTV1w",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "New Container",
    "id": "ce56f5a652e6e4dccbaf6d43c5850ca84",
    "path": "/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "6hmlJHMdm",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Sampling Options Picker1",
    "id": "cc89c79cdc81f41f5acdde5cec7e34f99",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/5",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Sampling Options Picker2",
    "id": "cba889c2f54224884abb3d4fc35c7f8dc",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/6",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Sampling Options Picker3",
    "id": "ca4d1536d7ea245c4bd91cc8f09e2632c",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/7",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Sampling Options Picker4",
    "id": "c69d26536e09b44b98016041a055d0824",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/8",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Sampling Options Picker5",
    "id": "c2d3c9f81a3c942548f31b5c4dda456b9",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/9",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Sampling Options Picker6",
    "id": "c6e9d1c4595af4e0da7efd1f323d172e0",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/10",
    "properties": {
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}"
    }
  },
  {
    "component": "Size",
    "id": "c9d575c465e914fa88d3bacb103bd60b9",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/11",
    "properties": {
      "customOptions": [
        {
          "id": "SAmC81m2Q",
          "label": "110",
          "value": "110"
        },
        {
          "id": "j6_Dx5H_Oq",
          "label": "165",
          "value": "165"
        },
        {
          "id": "fg26motuF",
          "label": "180",
          "value": "180"
        },
        {
          "id": "_uhUBDv1P",
          "label": "200",
          "value": "200"
        },
        {
          "id": "6zRiJEluni",
          "label": "225",
          "value": "225"
        },
        {
          "id": "6rGQvn4yC",
          "label": "230",
          "value": "230"
        },
        {
          "id": "zMnu9fZl1",
          "label": "250",
          "value": "250"
        },
        {
          "id": "Ja1FAVySc",
          "label": "90",
          "value": "90"
        }
      ],
      "dataProvider": "{{ literal [c23a65858540049569dac8bef7fc6d10f] }}",
      "_conditions": []
    }
  },
  {
    "component": "New Button group",
    "id": "c612bf6d0e0464c26b9b9b7c0e4a7251b",
    "path": "/_children/1/_children/1/_children/0/_children/0/_children/0/_children/13",
    "properties": {
      "buttons": [
        {
          "_id": "cbac7cac85d444e2a93378256db0eaf55",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c96cfd3052b1f4ceda1fc67beaf1f5510",
          "text": "Choose Sampling",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "c612bf6d0e0464c26b9b9b7c0e4a7251b",
          "onClick": [
            {
              "parameters": {
                "type": "specific",
                "componentId": "c0b4ce61b402e43219335fee009d418c7",
                "number": "1"
              },
              "##eventHandlerType": "Change Form Step",
              "id": "95ljFzRrT"
            }
          ]
        },
        {
          "_id": "cef6d0611bd6649b2acd8e46197b47a4b",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c0d3daccd336c475faf3f5a141628ea2a",
          "text": "Scan Sampling",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "c612bf6d0e0464c26b9b9b7c0e4a7251b",
          "onClick": [
            {
              "parameters": {
                "type": "specific",
                "componentId": "c0b4ce61b402e43219335fee009d418c7",
                "number": "2"
              },
              "##eventHandlerType": "Change Form Step",
              "id": "12Axx30rJ"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "New Button group",
    "id": "cc7126f02aabb4e00a7a279b8cb85392b",
    "path": "/_children/1/_children/1/_children/0/_children/1/_children/0/_children/9",
    "properties": {
      "buttons": [
        {
          "_id": "cbac7cac85d444e2a93378256db0eaf55",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c96cfd3052b1f4ceda1fc67beaf1f5510",
          "text": "Choose Sampling",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "cc7126f02aabb4e00a7a279b8cb85392b",
          "onClick": [
            {
              "parameters": {
                "type": "specific",
                "componentId": "c0b4ce61b402e43219335fee009d418c7",
                "number": "1"
              },
              "##eventHandlerType": "Change Form Step",
              "id": "95ljFzRrT"
            }
          ]
        },
        {
          "_id": "cef6d0611bd6649b2acd8e46197b47a4b",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c0d3daccd336c475faf3f5a141628ea2a",
          "text": "Scan Sampling",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "cc7126f02aabb4e00a7a279b8cb85392b",
          "onClick": [
            {
              "parameters": {
                "type": "specific",
                "componentId": "c0b4ce61b402e43219335fee009d418c7",
                "number": "2"
              },
              "##eventHandlerType": "Change Form Step",
              "id": "12Axx30rJ"
            }
          ]
        }
      ]
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
