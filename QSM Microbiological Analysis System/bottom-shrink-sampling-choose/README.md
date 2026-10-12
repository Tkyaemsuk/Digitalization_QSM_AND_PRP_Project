# Screen: /bottom-shrink-sampling-choose

แสดง layout กล่อง Low Acid30/55 จาก CallProduct_Temp30/55. ปุ่มรายกล่องเขียน colour/smell/ColourCode ตาม id; ปุ่ม ATP แก้ ColourCode ทั้งชุด sampling โดยไม่ได้เขียนค่า ATP. เปิด modal ลงผู้ตรวจ Physical30/55 ด้วย Physical_Report/2 และแสดงช่วง spec จาก Call Actual pH.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_814a7dc57dae446cb97258c79ebd4c20`
- Route: `/bottom-shrink-sampling-choose`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 89

## Query dependencies

- [Call Actual pH](<../database/Query/Call Actual pH.sql>)
- [CallProduct_Temp30](<../database/Query/CallProduct_Temp30.sql>)
- [CallProduct_Temp55](<../database/Query/CallProduct_Temp55.sql>)
- [ChangeColor_UseBtn](<../database/Query/ChangeColor_UseBtn.sql>)
- [ChangeColor_UseBtn55](<../database/Query/ChangeColor_UseBtn55.sql>)
- [ColourCode](<../database/Query/ColourCode.sql>)
- [ColourCode 55](<../database/Query/ColourCode 55.sql>)
- [Physical_Report](<../database/Query/Physical_Report.sql>)
- [Physical_Report2](<../database/Query/Physical_Report2.sql>)

## Components

| Type | Count |
|---|---|
| container | 24 |
| button | 21 |
| stringfield | 20 |
| buttongroup | 4 |
| form | 3 |
| dataprovider | 3 |
| repeater | 3 |
| text | 3 |
| optionsfield | 2 |
| modal | 2 |
| heading | 2 |
| datetimefield | 2 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| tray |  |  | ไม่ได้กำหนด |
| temperature |  |  | ไม่ได้กำหนด |
| floor1 | samp1 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor1 | samp1 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor2 | samp2 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| floor3 | samp3 |  | ไม่ได้กำหนด |
| Physical | physical_by | Physical | ไม่ได้กำหนด |
| PhysicalDate | physical_date | PhysicalDate | ไม่ได้กำหนด |
| Physical_2 | physical_by2 | physical 2 | ไม่ได้กำหนด |
| PhysicalDate_2 | physical_date2 | PhysicalDate2 | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Button — onClick

Config path: `/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=ChangeColor_UseBtn |
| 2 | Refresh Data Provider | componentId=Call Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "code": "\n[JavaScript binding]\nlet dataColour = $(\"[c2895e351d8c24b988836305674c462ab].[ColourCode]\");\nif(dataColour == 1) {\n  return 2;\n} else {\n  return 1;\n}\n[/JavaScript binding]\n",
        "btnID": "{{ [c2895e351d8c24b988836305674c462ab].[id] }}",
        "Colour": "\n[JavaScript binding]\nlet dataColour = $(\"[c2895e351d8c24b988836305674c462ab].[ColourCode]\");\n\n// ค่าที่จะอัปเดต\nlet newColour = (dataColour == 1) ? 2 : 1;\n\n// ส่ง true/false ตามค่าที่จะถูกเปลี่ยน\nreturn newColour == 2;\n[/JavaScript binding]\n",
        "Smell": "\n[JavaScript binding]\nlet dataColour = $(\"[c2895e351d8c24b988836305674c462ab].[ColourCode]\");\n\n// ค่าที่จะอัปเดต\nlet newColour = (dataColour == 1) ? 2 : 1;\n\n// ส่ง true/false ตามค่าที่จะถูกเปลี่ยน\nreturn newColour == 2;\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_30200fb842f3447480b792458f325438",
      "notificationOverride": false,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "F-leWWGxQ"
  },
  {
    "parameters": {
      "componentId": "c48a43463ea814ebe89b3690d9453f91d"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "dFYehHCpE"
  }
]
```

</details>

### Button — onClick

Config path: `/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=ChangeColor_UseBtn55 |
| 2 | Refresh Data Provider | componentId=Call Data2 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "code": "\n[JavaScript binding]\nlet dataColour = $(\"[ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode]\");\nif(dataColour == 1) {\n  return 2;\n} else {\n  return 1;\n}\n[/JavaScript binding]\n",
        "btnID": "{{ [ce9dc8db2dbf94a63aaf2070f2855bcf3].[id] }}",
        "Colour": "\n[JavaScript binding]\nlet dataColour = $(\"[ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode]\");\n\n// ค่าที่จะอัปเดต\nlet newColour = (dataColour == 1) ? 2 : 1;\n\n// ส่ง true/false ตามค่าที่จะถูกเปลี่ยน\nreturn newColour == 2;\n[/JavaScript binding]\n",
        "Smell": "\n[JavaScript binding]\nlet dataColour = $(\"[ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode]\");\n\n// ค่าที่จะอัปเดต\nlet newColour = (dataColour == 1) ? 2 : 1;\n\n// ส่ง true/false ตามค่าที่จะถูกเปลี่ยน\nreturn newColour == 2;\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_11adbf639c7b49aeac37b9038c5f4476",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "F-leWWGxQ"
  },
  {
    "parameters": {
      "componentId": "c67087ddcc42e4a7cba9d4fd3ac9f68c7"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "dFYehHCpE"
  }
]
```

</details>

### cac6c7823f204432cab1ce2fcbc756270 — onClick

Config path: `/_children/0/_children/0/_children/2/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp1; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp1",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "VeuiyaqMd"
  }
]
```

</details>

### c40248cf5bdea4f7982cfac46f64e6fbe — onClick

Config path: `/_children/0/_children/0/_children/2/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp2; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp2",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Y8aWb2P8B"
  }
]
```

</details>

### c5bfbbd1161cb461f84affb52757ee34d — onClick

Config path: `/_children/0/_children/0/_children/2/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp3; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp3",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Pf5jL_XI2"
  }
]
```

</details>

### ATP  — onClick

Config path: `/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=ColourCode |
| 2 | Show Notification | type=success; message=Passed Save Success! |
| 3 | Refresh Data Provider | componentId=Call Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "code": "1",
        "SampID": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows]. [c5e5394e11e624b0ebea88540b5f5fa6c].[group]  }}",
        "group": "",
        "sampID": "{{ [state].[SampID] }}",
        "s1": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s2": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp2]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s3": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp3]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s4": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp4]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s5": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp5]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s6": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp6]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_aa3b05a8c1114493ba56102a78fc8852",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "oK1Ojq5l8"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Passed Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "7oqMP-k6t"
  },
  {
    "parameters": {
      "componentId": "c48a43463ea814ebe89b3690d9453f91d"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "e1AsnVoAl"
  }
]
```

</details>

### ATP 55 — onClick

Config path: `/_children/0/_children/0/_children/4`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=ColourCode 55 |
| 2 | Show Notification | type=success; message=Passed Save Success! |
| 3 | Refresh Data Provider | componentId=Call Data2 |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "code": "1",
        "SampID": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows]. [c5e5394e11e624b0ebea88540b5f5fa6c].[group]  }}",
        "group": "",
        "sampID": "{{ [state].[SampID] }}",
        "s1": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s2": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s3": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s4": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s5": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s6": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\n\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_43dd6a028d8e469e988bc768da470ca8",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "oK1Ojq5l8"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Passed Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "4bPvF_jQ5"
  },
  {
    "parameters": {
      "componentId": "c67087ddcc42e4a7cba9d4fd3ac9f68c7"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "e1AsnVoAl"
  }
]
```

</details>

### cac6c7823f204432cab1ce2fcbc756270 — onClick

Config path: `/_children/0/_children/0/_children/8/_children/1/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp1; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp1",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "VeuiyaqMd"
  }
]
```

</details>

### c40248cf5bdea4f7982cfac46f64e6fbe — onClick

Config path: `/_children/0/_children/0/_children/8/_children/1/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp2; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp2",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Y8aWb2P8B"
  }
]
```

</details>

### c5bfbbd1161cb461f84affb52757ee34d — onClick

Config path: `/_children/0/_children/0/_children/8/_children/1/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp3; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp3",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Pf5jL_XI2"
  }
]
```

</details>

### cac6c7823f204432cab1ce2fcbc756270 — onClick

Config path: `/_children/0/_children/0/_children/9/_children/1/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp1; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp1",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "VeuiyaqMd"
  }
]
```

</details>

### c40248cf5bdea4f7982cfac46f64e6fbe — onClick

Config path: `/_children/0/_children/0/_children/9/_children/1/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp2; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp2",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Y8aWb2P8B"
  }
]
```

</details>

### c5bfbbd1161cb461f84affb52757ee34d — onClick

Config path: `/_children/0/_children/0/_children/9/_children/1/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp3; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp3",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Pf5jL_XI2"
  }
]
```

</details>

### cac6c7823f204432cab1ce2fcbc756270 — onClick

Config path: `/_children/0/_children/0/_children/10/_children/1/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp1; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp1",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "VeuiyaqMd"
  }
]
```

</details>

### c40248cf5bdea4f7982cfac46f64e6fbe — onClick

Config path: `/_children/0/_children/0/_children/10/_children/1/buttons/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp2; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp2",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Y8aWb2P8B"
  }
]
```

</details>

### c5bfbbd1161cb461f84affb52757ee34d — onClick

Config path: `/_children/0/_children/0/_children/10/_children/1/buttons/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Scroll To Field | field=samp3; componentId=New Form |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "samp3",
      "componentId": "ca9618123897c4544a1e38fbc110ebe26"
    },
    "##eventHandlerType": "Scroll To Field",
    "id": "Pf5jL_XI2"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/0/_children/0/_children/25`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/sampling-product-for-milk-box; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/sampling-product-for-milk-box"
    },
    "##eventHandlerType": "Navigate To",
    "id": "7M5w2371L"
  }
]
```

</details>

### Physical  30 — onClick

Config path: `/_children/0/_children/0/_children/26`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Temperature_Selected; type=set; value={{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Temperature_Selected",
      "type": "set",
      "persist": null,
      "value": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "-brLhgatm"
  },
  {
    "parameters": {
      "id": "c9b072841df324cef93ecc6a771b6806c"
    },
    "##eventHandlerType": "Open Modal",
    "id": "qCpVpr4Nm"
  }
]
```

</details>

### Physical  55 — onClick

Config path: `/_children/0/_children/0/_children/27`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Temperature_Selected; type=set; value={{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }} |
| 2 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Temperature_Selected",
      "type": "set",
      "persist": null,
      "value": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}"
    },
    "##eventHandlerType": "Update State",
    "id": "-brLhgatm"
  },
  {
    "parameters": {
      "id": "cdf43ef9192cb42e8ae61f5d533f43054"
    },
    "##eventHandlerType": "Open Modal",
    "id": "qCpVpr4Nm"
  }
]
```

</details>

### Save Physical — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Physical_Report |
| 2 | Show Notification | type=success; message=Physical Save Success! |
| 3 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "phy": "{{ [c66bf5b8e468d43f0a96dbeaee31001a9].[physical_by] }}",
        "phy_date": "{{ [c66bf5b8e468d43f0a96dbeaee31001a9].[physical_date] }}",
        "sampID": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID2": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp2]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID3": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp3]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID4": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp4]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID5": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp5]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID6": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp6]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_83f24b45f4164d39b035fc175b6718bc",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "hqLAfuJRt"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Physical Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "3hIUdgf9Q"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "5D5HBbUCi"
  }
]
```

</details>

### Save Physical — onClick

Config path: `/_children/0/_children/2/_children/0/_children/0/_children/3`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Physical_Report2 |
| 2 | Show Notification | type=success; message=Physical Save Success! |
| 3 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "phy": "{{ [cb916e85a016147caa2b2d38e6cdc9fdc].[physical_by2] }}",
        "phy_date": "{{ [cb916e85a016147caa2b2d38e6cdc9fdc].[physical_date2] }}",
        "sampID": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID2": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp2]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID3": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp3]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID4": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp4]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID5": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp5]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "sampID6": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp6]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_154126c0221f4398a99c9b519a9c9425",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "hqLAfuJRt"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Physical Save Success!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "h8u7R_FtD"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "jSyICcUva"
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
    "component": "New Form",
    "path": "/_children/0",
    "dataSource": {
      "name": "Custom",
      "label": "Custom"
    }
  },
  {
    "component": "Call Data",
    "path": "/_children/0/_children/0/_children/0",
    "dataSource": {
      "label": "CallProduct_Temp30",
      "name": "CallProduct_Temp30",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_144c36325d9f474994099c519fedc661",
      "type": "query",
      "queryParams": {
        "group": "{{ [c5e5394e11e624b0ebea88540b5f5fa6c].[group] }}",
        "page": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
        "s1": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp1]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s2": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp2]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s3": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp3]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s4": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp4]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s5": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp5]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n",
        "s6": "\n[JavaScript binding]\nlet samp = $(\"[state].[milk_samp6]\") || \"\";\nreturn samp.split(\"|\")[0];\n[/JavaScript binding]\n"
      },
      "currentQueryName": "CallProduct_Temp30",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 192
  },
  {
    "component": "Call Data2",
    "path": "/_children/0/_children/0/_children/1",
    "dataSource": {
      "label": "CallProduct_Temp55",
      "name": "CallProduct_Temp55",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_93058041c5454b2485571df6d2ba0213",
      "type": "query",
      "queryParams": {
        "page": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
        "s1": "{{ [state].[milk_samp1] }}",
        "s2": "{{ [state].[milk_samp2] }}",
        "s3": "{{ [state].[milk_samp3] }}",
        "s4": "{{ [state].[milk_samp4] }}",
        "s5": "{{ [state].[milk_samp5] }}",
        "s6": "{{ [state].[milk_samp6] }}"
      },
      "currentQueryName": "CallProduct_Temp55",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 192
  },
  {
    "component": "Call Spac",
    "path": "/_children/0/_children/0/_children/28",
    "dataSource": {
      "label": "Call Actual pH",
      "name": "Call Actual pH",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ae831060148e40109e8145b6f1ac861d",
      "type": "query",
      "queryParams": {
        "s1": "{{ [state].[milk_samp1] }}",
        "s2": "{{ [state].[milk_samp2] }}",
        "s3": "{{ [state].[milk_samp3] }}",
        "s4": "{{ [state].[milk_samp4] }}",
        "s5": "{{ [state].[milk_samp5] }}",
        "s6": "{{ [state].[milk_samp6] }}"
      },
      "currentQueryName": "Call Actual pH",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
    "limit": 6
  },
  {
    "component": "Sampling Forms",
    "path": "/_children/0/_children/1/_children/0",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Sampling Forms",
    "path": "/_children/0/_children/2/_children/0",
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
    "component": "New Form",
    "id": "ca9618123897c4544a1e38fbc110ebe26",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "PovRGxJeY",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "Call Data",
    "id": "c48a43463ea814ebe89b3690d9453f91d",
    "path": "/_children/0/_children/0/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "calYa04qk",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "yweDocrXE",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Call Repeater",
    "id": "c2895e351d8c24b988836305674c462ab",
    "path": "/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c48a43463ea814ebe89b3690d9453f91d] }}"
    }
  },
  {
    "component": "Button",
    "id": "cf13ad2cc69974fa99df093695b82eea7",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [c2895e351d8c24b988836305674c462ab].[no] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "mEu7K1zRp",
          "action": "update",
          "operator": "empty",
          "setting": "_css",
          "settingValue": "width: 100%;\nbackground-color: gray;\nfont-size: 100px;",
          "newValue": "{{ [c2895e351d8c24b988836305674c462ab].[ColourCode] }}",
          "referenceValue": null,
          "noValue": true
        },
        {
          "valueType": "string",
          "id": "KIngMM7VD",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "settingValue": "width: 100%;\nfont-size: 100px;\nbackground-color: FFF459;\ncolor: #000000;",
          "newValue": "{{ [c2895e351d8c24b988836305674c462ab].[ColourCode] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "string",
          "id": "CWsdP-8jN",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "settingValue": "width: 100%;font-size: 100px;background-color: 69ffa1;color: black;",
          "newValue": "{{ [c2895e351d8c24b988836305674c462ab].[ColourCode] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "TIme",
    "id": "c37ecaeb7a315475d9e8dd245497d9434",
    "path": "/_children/0/_children/0/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet machine = $(\"[c2895e351d8c24b988836305674c462ab].[Machine]\");\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst now = new Date($(\"[c2895e351d8c24b988836305674c462ab].[code]\"));\n\nconst time =\n  now.getHours().toString().padStart(2, \"0\") + \":\" +\n  now.getMinutes().toString().padStart(2, \"0\") + \":\" +\n  now.getSeconds().toString().padStart(2, \"0\");\n\nreturn `${time}\\n${machineMap[machine]}`;\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Call Data2",
    "id": "c67087ddcc42e4a7cba9d4fd3ac9f68c7",
    "path": "/_children/0/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "sa8M1HU9P",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "Call Repeater2",
    "id": "ce9dc8db2dbf94a63aaf2070f2855bcf3",
    "path": "/_children/0/_children/0/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c67087ddcc42e4a7cba9d4fd3ac9f68c7] }}"
    }
  },
  {
    "component": "Button",
    "id": "c32d8a15e6e854b74bc840a6721ac875a",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/0",
    "properties": {
      "text": "{{ [ce9dc8db2dbf94a63aaf2070f2855bcf3].[no] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "mEu7K1zRp",
          "action": "update",
          "operator": "empty",
          "setting": "_css",
          "settingValue": "width: 100%;\nbackground-color: gray;\nfont-size: 100px;",
          "newValue": "{{ [ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode] }}",
          "referenceValue": null,
          "noValue": true
        },
        {
          "valueType": "string",
          "id": "KIngMM7VD",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "settingValue": "width: 100%;\nfont-size: 100px;\nbackground-color: FFF459;\ncolor: #000000;",
          "newValue": "{{ [ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "string",
          "id": "CWsdP-8jN",
          "action": "update",
          "operator": "equal",
          "setting": "_css",
          "settingValue": "width: 100%;font-size: 100px;background-color: 69ffa1;color: black;",
          "newValue": "{{ [ce9dc8db2dbf94a63aaf2070f2855bcf3].[ColourCode] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "TIme",
    "id": "c4c7f6239f52240eda5e8cb682a22e6fd",
    "path": "/_children/0/_children/0/_children/1/_children/0/_children/0/_children/1",
    "properties": {
      "text": "\n[JavaScript binding]\nlet machine = $(\"[ce9dc8db2dbf94a63aaf2070f2855bcf3].[Machine]\");\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst now = new Date($(\"[ce9dc8db2dbf94a63aaf2070f2855bcf3].[code]\"));\n\nconst time =\n  now.getHours().toString().padStart(2, \"0\") + \":\" +\n  now.getMinutes().toString().padStart(2, \"0\") + \":\" +\n  now.getSeconds().toString().padStart(2, \"0\");\n\nreturn `${time}\\n${machineMap[machine]}`;\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "New Button group",
    "id": "c8f1e0f33c02947aebb90f3c10b150457",
    "path": "/_children/0/_children/0/_children/2",
    "properties": {
      "buttons": [
        {
          "_id": "c7823f8984b8e47139cd8342c32bcf90d",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cac6c7823f204432cab1ce2fcbc756270",
          "text": "Floor1",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8f1e0f33c02947aebb90f3c10b150457",
          "onClick": [
            {
              "parameters": {
                "field": "samp1",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "VeuiyaqMd"
            }
          ]
        },
        {
          "_id": "caad71b84de5249e4bcf9717564c792e6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c40248cf5bdea4f7982cfac46f64e6fbe",
          "text": "Floor2",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8f1e0f33c02947aebb90f3c10b150457",
          "onClick": [
            {
              "parameters": {
                "field": "samp2",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Y8aWb2P8B"
            }
          ]
        },
        {
          "_id": "c620736882d6f44038637ecc3c6612db1",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c5bfbbd1161cb461f84affb52757ee34d",
          "text": "Floor3",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c8f1e0f33c02947aebb90f3c10b150457",
          "onClick": [
            {
              "parameters": {
                "field": "samp3",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Pf5jL_XI2"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "ATP ",
    "id": "c3b62e08bc33f44ca8b1712b429c63e2e",
    "path": "/_children/0/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "6BgzvIG17",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "ma8r4I_Fp",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "30"
        },
        {
          "valueType": "string",
          "id": "OQtSPtnWm",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech"
        }
      ]
    }
  },
  {
    "component": "ATP 55",
    "id": "cd70c6b8049034645bbf327b819e82aad",
    "path": "/_children/0/_children/0/_children/4",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "ma8r4I_Fp",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "55"
        },
        {
          "valueType": "string",
          "id": "EA2o4_Tbk",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech"
        }
      ]
    }
  },
  {
    "component": "tray",
    "id": "cc641edff18ad4aaea9cd3913bbc93ee0",
    "path": "/_children/0/_children/0/_children/5",
    "properties": {
      "dataProvider": "{{ literal [c48a43463ea814ebe89b3690d9453f91d] }}",
      "validation": [],
      "customOptions": [
        {
          "id": "xmCJDug7t",
          "label": "Tray 1 ",
          "value": "1"
        },
        {
          "id": "DzPhAuzyd",
          "label": "Tray 2",
          "value": "2"
        },
        {
          "id": "XE86UyxwQ",
          "label": "Tray 3",
          "value": "3"
        },
        {
          "id": "mt03gTYWH",
          "label": "Tray 4",
          "value": "4"
        }
      ]
    }
  },
  {
    "component": "temperature",
    "id": "c7aaf11a0df454c09b32fd078039cc4b7",
    "path": "/_children/0/_children/0/_children/6",
    "properties": {
      "dataProvider": "{{ literal [c48a43463ea814ebe89b3690d9453f91d] }}",
      "validation": [],
      "customOptions": [
        {
          "id": "xmCJDug7t",
          "label": "temp30",
          "value": "30"
        },
        {
          "id": "DzPhAuzyd",
          "label": "temp55",
          "value": "55"
        }
      ],
      "onChange": []
    }
  },
  {
    "component": "Tray1F1",
    "id": "c222b307c93954a02913be5b5b52eeb0c",
    "path": "/_children/0/_children/0/_children/7",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "floor1",
    "id": "cfdd9ff6add8d48c2bcfbd99faf1f3b06",
    "path": "/_children/0/_children/0/_children/7/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "ubb4J0XS0",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "Tray1F2 90",
    "id": "c77f676225c6c4af6863886ec208b98ec",
    "path": "/_children/0/_children/0/_children/8",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "41NvJukPP",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "ghAZCoggh",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c91e8b28279b348b595a4a2d070aa21bf",
    "path": "/_children/0/_children/0/_children/8/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "New Button group",
    "id": "c791e9bf7cd8247d9aef55107fb0c49d3",
    "path": "/_children/0/_children/0/_children/8/_children/1",
    "properties": {
      "buttons": [
        {
          "_id": "c7823f8984b8e47139cd8342c32bcf90d",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cac6c7823f204432cab1ce2fcbc756270",
          "text": "Floor1",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c791e9bf7cd8247d9aef55107fb0c49d3",
          "onClick": [
            {
              "parameters": {
                "field": "samp1",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "VeuiyaqMd"
            }
          ]
        },
        {
          "_id": "caad71b84de5249e4bcf9717564c792e6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c40248cf5bdea4f7982cfac46f64e6fbe",
          "text": "Floor2",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c791e9bf7cd8247d9aef55107fb0c49d3",
          "onClick": [
            {
              "parameters": {
                "field": "samp2",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Y8aWb2P8B"
            }
          ]
        },
        {
          "_id": "c620736882d6f44038637ecc3c6612db1",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c5bfbbd1161cb461f84affb52757ee34d",
          "text": "Floor3",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c791e9bf7cd8247d9aef55107fb0c49d3",
          "onClick": [
            {
              "parameters": {
                "field": "samp3",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Pf5jL_XI2"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Tray1F3 90",
    "id": "c4e463a4b56b646769b3f8f8aacfebbda",
    "path": "/_children/0/_children/0/_children/9",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "c7a810ad08cbd4912b35c1aa52834b7ee",
    "path": "/_children/0/_children/0/_children/9/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "New Button group",
    "id": "cf513e584ca3a4a9183575e0339f9d163",
    "path": "/_children/0/_children/0/_children/9/_children/1",
    "properties": {
      "buttons": [
        {
          "_id": "c7823f8984b8e47139cd8342c32bcf90d",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cac6c7823f204432cab1ce2fcbc756270",
          "text": "Floor1",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cf513e584ca3a4a9183575e0339f9d163",
          "onClick": [
            {
              "parameters": {
                "field": "samp1",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "VeuiyaqMd"
            }
          ]
        },
        {
          "_id": "caad71b84de5249e4bcf9717564c792e6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c40248cf5bdea4f7982cfac46f64e6fbe",
          "text": "Floor2",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cf513e584ca3a4a9183575e0339f9d163",
          "onClick": [
            {
              "parameters": {
                "field": "samp2",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Y8aWb2P8B"
            }
          ]
        },
        {
          "_id": "c620736882d6f44038637ecc3c6612db1",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c5bfbbd1161cb461f84affb52757ee34d",
          "text": "Floor3",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "cf513e584ca3a4a9183575e0339f9d163",
          "onClick": [
            {
              "parameters": {
                "field": "samp3",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Pf5jL_XI2"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Tray1F2 110",
    "id": "c5b0245e8cb9c42c78592775fe45fe724",
    "path": "/_children/0/_children/0/_children/10",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "QCSt7xyG_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "QYhFRGcFz",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c2f93cb3f901f4aff87037bcf39905307",
    "path": "/_children/0/_children/0/_children/10/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "New Button group",
    "id": "c10534e9b92f44c3b8f2ec949410a1dbd",
    "path": "/_children/0/_children/0/_children/10/_children/1",
    "properties": {
      "buttons": [
        {
          "_id": "c7823f8984b8e47139cd8342c32bcf90d",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "cac6c7823f204432cab1ce2fcbc756270",
          "text": "Floor1",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c10534e9b92f44c3b8f2ec949410a1dbd",
          "onClick": [
            {
              "parameters": {
                "field": "samp1",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "VeuiyaqMd"
            }
          ]
        },
        {
          "_id": "caad71b84de5249e4bcf9717564c792e6",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c40248cf5bdea4f7982cfac46f64e6fbe",
          "text": "Floor2",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c10534e9b92f44c3b8f2ec949410a1dbd",
          "onClick": [
            {
              "parameters": {
                "field": "samp2",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Y8aWb2P8B"
            }
          ]
        },
        {
          "_id": "c620736882d6f44038637ecc3c6612db1",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c5bfbbd1161cb461f84affb52757ee34d",
          "text": "Floor3",
          "type": "primary",
          "size": "M",
          "gap": "M",
          "_rootId": "c10534e9b92f44c3b8f2ec949410a1dbd",
          "onClick": [
            {
              "parameters": {
                "field": "samp3",
                "componentId": "ca9618123897c4544a1e38fbc110ebe26"
              },
              "##eventHandlerType": "Scroll To Field",
              "id": "Pf5jL_XI2"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Tray1F2 165-225",
    "id": "c5be4dbb45f614ab881db70d511532310",
    "path": "/_children/0/_children/0/_children/11",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "U6B_Vy-0i",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "XF-A8kkGM",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c78d29159634a4ce88ba2bc0878cfd336",
    "path": "/_children/0/_children/0/_children/11/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray1F2 230-250",
    "id": "c43cd260815ba4ba4b3829881520fc058",
    "path": "/_children/0/_children/0/_children/12",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "U6B_Vy-0i",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "XF-A8kkGM",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "cab3cba9573a44d168c3efa5db2e2a48b",
    "path": "/_children/0/_children/0/_children/12/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray1F3 110",
    "id": "cc35aafc7693b4df28e151691766913d1",
    "path": "/_children/0/_children/0/_children/13",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "ce305f03726be4938ae88eb0ff9cffd6e",
    "path": "/_children/0/_children/0/_children/13/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray1F3 165-225",
    "id": "c06287cbbf68240e19b795cc0e51b44ec",
    "path": "/_children/0/_children/0/_children/14",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48"
        },
        {
          "valueType": "number",
          "id": "4BHOBkcdC",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "aofGZxIX0",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "c9d0111af3e354c43b958e2217d2a6af0",
    "path": "/_children/0/_children/0/_children/14/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray1F3 230-250",
    "id": "c196452c5f7aa4392bd680c9ca1953e8b",
    "path": "/_children/0/_children/0/_children/15",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42"
        },
        {
          "valueType": "number",
          "id": "4BHOBkcdC",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "aofGZxIX0",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "c36c0e601b74f49ecb4cec4a7660ce760",
    "path": "/_children/0/_children/0/_children/15/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F1",
    "id": "c5c33c688dfae42fdaa9b8e323c16e971",
    "path": "/_children/0/_children/0/_children/16",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "YBhrhsy3-",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        }
      ]
    }
  },
  {
    "component": "floor1",
    "id": "c5ab283cb2c2940f092275aa0ba591186",
    "path": "/_children/0/_children/0/_children/16/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F2 90",
    "id": "cf971ae14731d4fe98b3b52ffbbf3ce1c",
    "path": "/_children/0/_children/0/_children/17",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "41NvJukPP",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "ghAZCoggh",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c246235d66e2644e2804ce4888d1a76ff",
    "path": "/_children/0/_children/0/_children/17/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F2 110",
    "id": "cf66031fa9e6c47ea9c39ff28a92a4210",
    "path": "/_children/0/_children/0/_children/18",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "QCSt7xyG_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "QYhFRGcFz",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c5c41d563564846b58561151f62e734c9",
    "path": "/_children/0/_children/0/_children/18/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F2 165-225",
    "id": "c212f743400164b38b7471a0e6a6e7e1d",
    "path": "/_children/0/_children/0/_children/19",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "U6B_Vy-0i",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "XF-A8kkGM",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c25941744b5584d7baffabbdd980f2636",
    "path": "/_children/0/_children/0/_children/19/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F2 230-250",
    "id": "cc20d07c57da242749bf23887ef5b4938",
    "path": "/_children/0/_children/0/_children/20",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "U6B_Vy-0i",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "XF-A8kkGM",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor2",
    "id": "c7fb6cb6cb9fb4169abec66b02b9693a4",
    "path": "/_children/0/_children/0/_children/20/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F3 90",
    "id": "c8a04ad86a14642d5b5c0332273825b53",
    "path": "/_children/0/_children/0/_children/21",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "Tcip6DHTd",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "ln_SEb6r-",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "96",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "c14206ea3bd7e45b4ac3f7bb368ca3f14",
    "path": "/_children/0/_children/0/_children/21/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F3 110",
    "id": "c8a99227754b9411c9e8f301c15928309",
    "path": "/_children/0/_children/0/_children/22",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "YIM-X67cu",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "JfDEnfotg",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "72",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "cee0fb473222746afbb4850e94e0934a6",
    "path": "/_children/0/_children/0/_children/22/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F3 165-225",
    "id": "c33a91a4d93e8446da784f48af55099ba",
    "path": "/_children/0/_children/0/_children/23",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48"
        },
        {
          "valueType": "number",
          "id": "4BHOBkcdC",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "aofGZxIX0",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "48",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "cc99e585cb6204c308a5afd9ab48e0d57",
    "path": "/_children/0/_children/0/_children/23/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Tray2F3 230-250",
    "id": "c9bf56670d0354ca08522167bc38bb0ae",
    "path": "/_children/0/_children/0/_children/24",
    "properties": {
      "_conditions": [
        {
          "valueType": "number",
          "id": "tENNquPn_",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42"
        },
        {
          "valueType": "number",
          "id": "4BHOBkcdC",
          "action": "hide",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "1"
        },
        {
          "valueType": "number",
          "id": "MyWRxrX5w",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [cc641edff18ad4aaea9cd3913bbc93ee0].[value] }}",
          "referenceValue": "2"
        },
        {
          "valueType": "number",
          "id": "aofGZxIX0",
          "action": "hide",
          "operator": "notEqual",
          "newValue": "{{ [c48a43463ea814ebe89b3690d9453f91d].[rows].[0].limit_per_page }}",
          "referenceValue": "42",
          "noValue": false
        }
      ]
    }
  },
  {
    "component": "floor3",
    "id": "c2b168c7ec76942aeb640f34c82a7b8e1",
    "path": "/_children/0/_children/0/_children/24/_children/0",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Physical  30",
    "id": "c5b480e68c2484fbe93a00e5a8b7bfe33",
    "path": "/_children/0/_children/0/_children/26",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "mkbngy7mT",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "30"
        }
      ]
    }
  },
  {
    "component": "Physical  55",
    "id": "cbcc602e340f44550834f5e6d73eaaa7e",
    "path": "/_children/0/_children/0/_children/27",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "-VfkCSmDb",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [c7aaf11a0df454c09b32fd078039cc4b7].[value] }}",
          "referenceValue": "55"
        }
      ]
    }
  },
  {
    "component": "Call Spac",
    "id": "c062511d910ac4874a09727839101c0bb",
    "path": "/_children/0/_children/0/_children/28/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c4d5e23391a8449219223cd04736c1ef0] }}"
    }
  },
  {
    "component": "Spac Actual pH",
    "id": "c6860ccdfab4a436f95717bdfc102dfa7",
    "path": "/_children/0/_children/0/_children/28/_children/0/_children/0",
    "properties": {
      "text": "{{ [c062511d910ac4874a09727839101c0bb].[ResultSequence] }}"
    }
  },
  {
    "component": "Physical",
    "id": "c507c44b183cc40488f7ca5b8cdf24d2c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/1",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c9c3129e9bc6746c29b0012239e94491e",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/2",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Save Physical",
    "id": "c717df132c73541659179741a6034dd9f",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "kiq9GTHnR",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c66bf5b8e468d43f0a96dbeaee31001a9].[physical_by] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "mU4p5ZjVd",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c66bf5b8e468d43f0a96dbeaee31001a9].[physical_date] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Physical_2",
    "id": "ca6879b57731c4755b5e2be50614641e3",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/1",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "PhysicalDate_2",
    "id": "ce55d2b3c3cd049f68c579350930b014c",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/2",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Save Physical",
    "id": "ca39fbfce4ed84b24af4f94805363a9de",
    "path": "/_children/0/_children/2/_children/0/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "_3eg4aT4v",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb916e85a016147caa2b2d38e6cdc9fdc].[physical_by2] }}",
          "noValue": true,
          "referenceValue": null
        },
        {
          "valueType": "string",
          "id": "zAU8UuLBd",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cb916e85a016147caa2b2d38e6cdc9fdc].[physical_date2] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
