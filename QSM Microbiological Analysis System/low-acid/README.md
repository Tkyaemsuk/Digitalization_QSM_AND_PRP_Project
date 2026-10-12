# Screen: /low-acid

รับและแก้ไขรายละเอียด Low Acid จากตัวอย่างที่ Production สร้าง. บันทึกส่วนส่งตัวอย่างผ่าน Update Sampling Submit และรับตัวอย่างผ่าน Update_Sampling ซึ่งล็อก Production. มีคำนวณวันแผนจากวันผลิต/จำนวนวันบ่ม, บันทึกช่วง pH ก่อนบ่ม/spec และเรียก MERGE Recall_pH ตามด้วย getph_sampling เพื่อดึงข้อมูล Finish-good.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_e251c95a860644d3adb1f8ae37a66fd3`
- Route: `/low-acid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 244

## Query dependencies

- [getph_sampling](<../database/Query/getph_sampling.sql>)
- [Merge_Recall_pH_Unique_SamplingID_Group](<../database/Query/Merge_Recall_pH_Unique_SamplingID_Group.sql>)
- [Update PHB](<../database/Query/Update PHB.sql>)
- [Update Sampling Submit](<../database/Query/Update Sampling Submit.sql>)
- [Update_Filling](<../database/Query/Update_Filling.sql>)
- [Update_Sampling](<../database/Query/Update_Sampling.sql>)

## Components

| Type | Count |
|---|---|
| text | 90 |
| stringfield | 37 |
| container | 30 |
| datetimefield | 18 |
| button | 16 |
| booleanfield | 14 |
| heading | 9 |
| numberfield | 8 |
| modal | 6 |
| divider | 3 |
| dataprovider | 3 |
| gridblock | 3 |
| image | 2 |
| repeater | 2 |
| form | 2 |
| optionsfield | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| SampID | SamplingID | กรอกรหัส SamplingID | ไม่ได้กำหนด |
| Machine Field | Department |  | ไม่ได้กำหนด |
| Machine Field2 | Department |  | ไม่ได้กำหนด |
| Quanity2 | Quanity2 |  | ไม่ได้กำหนด |
| Quanity | Quanity |  | ไม่ได้กำหนด |
| Temperature | Temperature |  | ไม่ได้กำหนด |
| Temperature2 | Temperature2 |  | ไม่ได้กำหนด |
| DateSubmit Field | send_date |  | ไม่ได้กำหนด |
| TimeSubmit Field | send_time |  | ไม่ได้กำหนด |
| Submit Field | SendBy |  | ไม่ได้กำหนด |
| SubmitBy | submitBy |  | ไม่ได้กำหนด |
| Submit_Remark | Submit_Remark |  | ไม่ได้กำหนด |
| SubmitDate | submit_date |  | ไม่ได้กำหนด |
| Check30 | Check30 |  | ไม่ได้กำหนด |
| Check55 | Check55 |  | ไม่ได้กำหนด |
| SubmitBy_modal | submitBy | Please input the employeeID | ไม่ได้กำหนด |
| submit_date_modal | submit_date |  | ไม่ได้กำหนด |
| Product | Products | Products | ไม่ได้กำหนด |
| Flavour Field | Flavour | Flavour | ไม่ได้กำหนด |
| Size Field  | Size |  | ไม่ได้กำหนด |
| Filling Date Field | FillingDate |  | ไม่ได้กำหนด |
| Expired Date Field | ExpiredDate |  | ไม่ได้กำหนด |
| Filling Date Picker | FillingDate |  | ไม่ได้กำหนด |
| Expired Date Picker | ExpiredDate |  | ไม่ได้กำหนด |
| Edit field | EditBy | Employee Number | ไม่ได้กำหนด |
| Plan Date | Plan_CheckDate |  | ไม่ได้กำหนด |
| Actual Date | Actual_CheckDate |  | ไม่ได้กำหนด |
| temFinished | Temperature |  | ไม่ได้กำหนด |
| dayFinished | dayFinished |  | ไม่ได้กำหนด |
| Plan Date2 | Plan_CheckDate55 |  | ไม่ได้กำหนด |
| Plan Date2 | Plan_CheckDate55 |  | ไม่ได้กำหนด |
| Actual Date2 | Actual_CheckDate55 |  | ไม่ได้กำหนด |
| temFinished2 | Temperature2 |  | ไม่ได้กำหนด |
| dayFinished2 | dayFinished2 |  | ไม่ได้กำหนด |
| PH_Before | PH_Before |  | ไม่ได้กำหนด |
| PH_Before2 | PH_Before2 |  | ไม่ได้กำหนด |
| Spec_Actual | Spec_Actual |  | ไม่ได้กำหนด |
| Spec_Actual2 | Spec_Actual2 |  | ไม่ได้กำหนด |
| Exam Checkbox | Example |  | ไม่ได้กำหนด |
| Indication Checkbox | Indication |  | ไม่ได้กำหนด |
| Packaging Checkbox | packaging |  | ไม่ได้กำหนด |
| Complete Checkbox | complete |  | ไม่ได้กำหนด |
| Detail Complete Checkbox | Detail_Complete |  | ไม่ได้กำหนด |
| Normal Checkbox | Normal |  | ไม่ได้กำหนด |
| incom field | Incomplete |  | ไม่ได้กำหนด |
| detail incom field | Detail_incomplete |  | ไม่ได้กำหนด |
| Abnormal field | Abnormal |  | ไม่ได้กำหนด |
| Amount Samples Field | Amount_Samples |  | ไม่ได้กำหนด |
| Recieved | RecevieBY |  | ไม่ได้กำหนด |
| Recieved Picker 2 | Recieved_date |  | ไม่ได้กำหนด |
| Temperature Table |  | Please Select The Temperature | ไม่ได้กำหนด |
| Product Edit |  |  | ไม่ได้กำหนด |
| Flavour Edit |  |  | ไม่ได้กำหนด |
| Plan Date | Plan_CheckDate |  | ไม่ได้กำหนด |
| Actual Date | Actual_CheckDate |  | ไม่ได้กำหนด |
| temFinished | Temperature |  | ไม่ได้กำหนด |
| dayFinished 2 | dayFinished |  | ไม่ได้กำหนด |
| Plan Date2 | Plan_CheckDate55 |  | ไม่ได้กำหนด |
| Plan Date2 | Plan_CheckDate55 |  | ไม่ได้กำหนด |
| Actual Date2 | Actual_CheckDate55 |  | ไม่ได้กำหนด |
| temFinished2 | Temperature2 |  | ไม่ได้กำหนด |
| dayFinished2.2 | dayFinished2 |  | ไม่ได้กำหนด |
| PH_Before 2 | PH_Before |  | ไม่ได้กำหนด |
| PH_Before2.2 | PH_Before2 |  | ไม่ได้กำหนด |
| Spec_Actual 2 | Spec_Actual |  | ไม่ได้กำหนด |
| Spec_Actual2.2 | Spec_Actual2 |  | ไม่ได้กำหนด |
| Exam Checkbox 2 | Example |  | ไม่ได้กำหนด |
| Indication Checkbox 2 | Indication |  | ไม่ได้กำหนด |
| Packaging Checkbox 2 | packaging |  | ไม่ได้กำหนด |
| Complete Checkbox 2 | complete |  | ไม่ได้กำหนด |
| Detail Complete Checkbox 2 | Detail_Complete |  | ไม่ได้กำหนด |
| Normal Checkbox 2 | Normal |  | ไม่ได้กำหนด |
| incom field 2 | Incomplete |  | ไม่ได้กำหนด |
| detail incom field 2 | Detail_incomplete |  | ไม่ได้กำหนด |
| Abnormal field 2 | Abnormal |  | ไม่ได้กำหนด |
| Amount Samples Field | Amount_Samples |  | ไม่ได้กำหนด |
| Recieved_edit | RecevieBY |  | ไม่ได้กำหนด |
| Recieved_DateEdit | Recieved_date |  | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### New Button — onClick

Config path: `/_children/0/_children/0/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Merge_Recall_pH_Unique_SamplingID_Group |
| 2 | Execute Query | queryId=getph_sampling |
| 3 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_45acc2443cd348cd9861d5c011009cec",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "l-o6aVbQd"
  },
  {
    "parameters": {
      "queryParams": {
        "SamplingID": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "NKXmJkdy7"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "P2w9M-2F6"
  }
]
```

</details>

### New Button — onClick

Config path: `/_children/0/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cb5b69d117bb6472daf9537ebd5bab9df"
    },
    "##eventHandlerType": "Open Modal",
    "id": "c91Pa10kK"
  }
]
```

</details>

### New Button 2 — onClick

Config path: `/_children/0/_children/0/_children/7`

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
    "id": "RrF0kTq0g"
  }
]
```

</details>

### Submit Save — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/29`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Valid_Submit; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Valid_Submit] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Valid_Submit] }} |
| 4 | Execute Query | queryId=Update Sampling Submit |
| 5 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Valid_Submit",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst items = [\n  {name: 'Submit By', value: $(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[submitBy]\")},\n  {name: 'Submit Date', value: $(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[submit_date]\")}\n];\n\nfor(const i of items) {\n  if(!i.value) {\n    return \"Please input the \" + i.name;\n  }\n}\n\nconst submitBy = String($(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[submitBy]\")).trim();\n\nif(!/^\\d{6}$/.test(submitBy)) {\n  return \"Submit By must be exactly 6 digits\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "w37o2aYBp"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Valid_Submit] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "7F0zhNY7U"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Valid_Submit] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "fD5jIAbMi"
  },
  {
    "parameters": {
      "queryParams": {
        "sampID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}",
        "check30": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check30] }}",
        "check55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check55] }}",
        "submitby": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submitBy] }}",
        "submitdate": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submit_date] }}",
        "remark": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Submit_Remark] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ace2c5f350dc4c489c4302215c68a429",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "dp52MLfcM"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "N-SJIUYx2"
  }
]
```

</details>

### Submit Update Modal — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/30`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cafe5ba2379a4432985eda8f8fd1b985a"
    },
    "##eventHandlerType": "Open Modal",
    "id": "31NuNzcrj"
  }
]
```

</details>

### Submit Update — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/31/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update Sampling Submit |
| 2 | Show Notification | type=success; message=Update Submit Sampling Successfully &#124; อัพเดทข้อมูลสำเร็จ! |
| 3 | Refresh Data Provider | componentId=Sampling Data |
| 4 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "check30": "{{ [c7e5f82c099c84664992e6d1989272544].[value] }}",
        "check55": "{{ [cadc5c5b17b3c468a9ccd7ad1ac56e113].[value] }}",
        "submitby": "{{ [c084e5e3a06fb48d8b3f6105f981cbe5e].[value] }}",
        "submitdate": "{{ [c0e01cfb8ab9a476e82bbee1e99ac6ab4].[value] }}",
        "sampID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ace2c5f350dc4c489c4302215c68a429",
      "confirm": null,
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "CR0KnWeKn"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Update Submit Sampling Successfully | อัพเดทข้อมูลสำเร็จ!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "DxlqLQma6"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "5vZhxkwzU"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "LA-hbCcXj"
  }
]
```

</details>

### edit — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/10`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "ccacc054cd2af4c59bc2795db355ce9b0"
    },
    "##eventHandlerType": "Open Modal",
    "id": "RJ-LF6U90"
  }
]
```

</details>

### Edit Button — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0/_children/0/_children/0/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=reset_plancheck1; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Update State | key=reset_plancheck2; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 3 | Execute Query | queryId=Update_Filling |
| 4 | Show Notification | type=success; message=Update Filling & Expired is Successfully &#124; อัพเดทข้อมูลสำเร็จ! |
| 5 | Close Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "reset_plancheck1",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nfunction addDaysUTC(dateString, days) {\n  const date = new Date(dateString);\n\n  // บวกวันแบบ UTC\n  date.setUTCDate(date.getUTCDate() + Number(days));\n\n  // format YYYY-MM-DD HH:mm:ss\n  const year = date.getUTCFullYear();\n  const month = String(date.getUTCMonth() + 1).padStart(2, \"0\");\n  const day = String(date.getUTCDate()).padStart(2, \"0\");\n\n  const hours = String(date.getUTCHours()).padStart(2, \"0\");\n  const minutes = String(date.getUTCMinutes()).padStart(2, \"0\");\n  const seconds = String(date.getUTCSeconds()).padStart(2, \"0\");\n\n  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;\n}\n\nconst startDate = $(\"[c15e7596f8fdf4b488220f831dab7e68a].[FillingDate]\");\nconst curingDays = $(\"[cae3aaf09c6a542b997acee0ea9c2c6fa].[dayFinished]\");\n\nconst result = addDaysUTC(startDate, curingDays);\n\nreturn result\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "Brxslw_ZA"
  },
  {
    "parameters": {
      "key": "reset_plancheck2",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nfunction addDaysUTC(dateString, days) {\n  const date = new Date(dateString);\n\n  // บวกวันแบบ UTC\n  date.setUTCDate(date.getUTCDate() + Number(days));\n\n  // format YYYY-MM-DD HH:mm:ss\n  const year = date.getUTCFullYear();\n  const month = String(date.getUTCMonth() + 1).padStart(2, \"0\");\n  const day = String(date.getUTCDate()).padStart(2, \"0\");\n\n  const hours = String(date.getUTCHours()).padStart(2, \"0\");\n  const minutes = String(date.getUTCMinutes()).padStart(2, \"0\");\n  const seconds = String(date.getUTCSeconds()).padStart(2, \"0\");\n\n  return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;\n}\n\nconst startDate = $(\"[c15e7596f8fdf4b488220f831dab7e68a].[FillingDate]\");\nconst curingDays = $(\"[cae3aaf09c6a542b997acee0ea9c2c6fa].[dayFinished2]\");\n\nconst result = addDaysUTC(startDate, curingDays);\n\nreturn result\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "ou1N0w3QJ"
  },
  {
    "parameters": {
      "queryParams": {
        "Fdate": "{{ [c15e7596f8fdf4b488220f831dab7e68a].[FillingDate] }}",
        "Edate": "{{ [c15e7596f8fdf4b488220f831dab7e68a].[ExpiredDate] }}",
        "EditBy": "{{ [c15e7596f8fdf4b488220f831dab7e68a].[EditBy] }}",
        "SamID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}",
        "Pc": "{{ [state].[plantup1] }}",
        "Pc2": "{{ [state].[plantup2] }}",
        "update": "\n[JavaScript binding]\nconst now = new Date();\n\nconst result =\n  now.getUTCFullYear() + \"-\" +\n  String(now.getUTCMonth() + 1).padStart(2, \"0\") + \"-\" +\n  String(now.getUTCDate()).padStart(2, \"0\") + \" \" +\n  String(now.getUTCHours()).padStart(2, \"0\") + \":\" +\n  String(now.getUTCMinutes()).padStart(2, \"0\") + \":\" +\n  String(now.getUTCSeconds()).padStart(2, \"0\");\n\nreturn result;\n[/JavaScript binding]\n",
        "P": "{{ [state].[reset_plancheck1] }}",
        "P2": "{{ [state].[reset_plancheck2] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_330c44a86ad64990b07b7e4f6df839c0",
      "confirm": null,
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "nVFMHe_KB"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Update Filling & Expired is Successfully | อัพเดทข้อมูลสำเร็จ!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "A00TVQFJp"
  },
  {
    "parameters": {},
    "##eventHandlerType": "Close Modal",
    "id": "E-zMePHLr"
  }
]
```

</details>

### pH Fetch - — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/15`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |
| 2 | Execute Query | queryId=Merge_Recall_pH_Unique_SamplingID_Group |
| 3 | Execute Query | queryId=getph_sampling |
| 4 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "c0bc8f0bac24f42dc996511d925efb87e"
    },
    "##eventHandlerType": "Open Modal",
    "id": "39cypSP82"
  },
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_45acc2443cd348cd9861d5c011009cec",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "44-Rix0qQ"
  },
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "YtGnzTKZo"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "gXGNd8QiM"
  }
]
```

</details>

### dayFinished — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3/_children/5/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Plan_CheckDate; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Plan_CheckDate",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nfunction addDays(dateString, days) {\n  const date = new Date(dateString);\n  date.setDate(date.getDate() + Number(days));\n  \n  // format เป็น M/D/YYYY\n  return `${date.getMonth() + 1}/${date.getDate()}/${date.getFullYear()}`;\n}\n\n// ตัวอย่าง\nconst startDate = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[FillingDate]\");\nconst curingDays = $(\"[eventContext].[value]\") || 0;\n\nconst result = addDays(startDate, curingDays);\n\nreturn result;\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "GGBhgzrBu"
  }
]
```

</details>

### dayFinished2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/8/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Plan_CheckDate55; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Plan_CheckDate55",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nfunction addDays(dateString, days) {\n  const date = new Date(dateString);\n  date.setDate(date.getDate() + Number(days));\n  \n  // format เป็น M/D/YYYY\n  return `${date.getMonth() + 1}/${date.getDate()}/${date.getFullYear()}`;\n}\n\n// ตัวอย่าง\nconst startDate = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[FillingDate]\");\nconst curingDays = $(\"[eventContext].[value]\") || 0;\n\nconst result = addDays(startDate, curingDays);\n\nreturn result;\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "jOqaOSP0A"
  }
]
```

</details>

### PH_Before — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/10`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Spec_Actual; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Spec_Actual",
      "type": "set",
      "value": "\n[JavaScript binding]\nvar pHBefore = Number($(\"[eventContext].[value]\") || $(\"[cdf27a1fbda0a4050ab025556912f77ce].[PH_Before]\"));\nlet total = pHBefore - 0.2;\ntotal = Math.round(total * 100) / 100;\nreturn total.toFixed(2); \n[/JavaScript binding]\n",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "Cx9HM2Yu_"
  }
]
```

</details>

### PH_Before2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/11`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Spec_Actual2; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Spec_Actual2",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nvar pHBefore = Number($(\"[eventContext].[value]\") || $(\"[cdf27a1fbda0a4050ab025556912f77ce].[PH_Before2]\"));\nlet total = pHBefore + 0.2;\ntotal = Math.round(total * 100) / 100;\nreturn total.toFixed(2); \n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "QROmEjo7r"
  }
]
```

</details>

### Submit Save — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/15`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update PHB |
| 2 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "sampID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}",
        "check30": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check30] }}",
        "check55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check55] }}",
        "submitby": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submitBy] }}",
        "submitdate": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submit_date] }}",
        "PhBefore": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before] }}",
        "PhBefore2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before2] }}",
        "spac": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual] }}",
        "spac2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual2] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_87176ffa9ebc41039cb92b007ab3ecca",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "dp52MLfcM"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "N-SJIUYx2"
  }
]
```

</details>

### Save Part — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/27`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Vaild_Received; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Show Notification | type=warning; message={{ [state].[Vaild_Received] }} |
| 3 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Vaild_Received] }} |
| 4 | Execute Query | queryId=Update_Sampling |
| 5 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Vaild_Received",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst items = [\n  {name: 'Receive By', value: $(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[RecevieBY]\")},\n  {name: 'Receive Date', value: $(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[Recieved_date]\")}\n];\n\nfor(const i of items) {\n  if(!i.value) {\n    return \"Please input the \" + i.name;\n  }\n}\n\nconst ReceiveBy = String($(\"[c5e0dc3c818bc482585c1cde57aa73cb1].[RecevieBY]\")).trim();\n\nif(!/^\\d{6}$/.test(ReceiveBy)) {\n  return \"Receive By must be exactly 6 digits\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "SiwFxBpVk"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaild_Received] }}",
      "duration": ""
    },
    "##eventHandlerType": "Show Notification",
    "id": "w-fwQt4p9"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Vaild_Received] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "JbZfy5nwa"
  },
  {
    "parameters": {
      "queryParams": {
        "Plan": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Plan_CheckDate] }}",
        "Actual": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate] }}",
        "PhBefore": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before] }}",
        "spac": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual] }}",
        "pH": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH] }}",
        "pH2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH2] }}",
        "Colour1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Colour] }}",
        "Colour2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Colour2] }}",
        "Smell1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Smell] }}",
        "Smell2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Smell2] }}",
        "Tpc1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Tpc] }}",
        "Tpc2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Tpc2] }}",
        "Atp1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Atp] }}",
        "Atp2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Atp2] }}",
        "SamID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}",
        "Plan55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Plan_CheckDate55] }}",
        "Actual55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate55] }}",
        "dayFinished": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[dayFinished] }}",
        "dayFinished2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[dayFinished2] }}",
        "RecevieBy": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[RecevieBY] }}",
        "Amount_Samples": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Amount_Samples] }}",
        "EditBy": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[EditBy] }}",
        "Abnormal": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Abnormal] }}",
        "Detail_incomplete": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Detail_incomplete] }}",
        "Incomplete": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Incomplete] }}",
        "Recieved_date": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Recieved_date] }}",
        "Example": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Example] }}",
        "Indication": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Indication] }}",
        "packaging": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[packaging] }}",
        "complete": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[complete] }}",
        "Detail_Complete": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Detail_Complete] }}",
        "Normal": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Normal] }}",
        "PhBefore2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before2] }}",
        "spac2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual2] }}",
        "check30": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check30] }}",
        "check55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check55] }}",
        "Subby": "",
        "Product": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Product] }}",
        "Flavour": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Flavour] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_62524e88788f4018b1b4abdf486e4443",
      "confirm": false,
      "customTitleText": "",
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "cEgrBcEyQ"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "13aYm6FDn"
  }
]
```

</details>

### Back — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/28`

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
      "url": "/sampling-tables",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "-d7W8kgZB"
  }
]
```

</details>

### Edit PART II — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/1`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Open Modal |  |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "id": "cc15d7748442d415293059c6936c8952c"
    },
    "##eventHandlerType": "Open Modal",
    "id": "z9BtBYT--"
  }
]
```

</details>

### c064b9cbb0eb6447ca31aa1fb53d00f5d — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/2/_children/0/_children/0/_children/0/buttons/0`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=getph_sampling |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776",
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "Ym8WNByfN"
  }
]
```

</details>

### dayFinished 2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/0/_children/5/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Plan_CheckDate; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Plan_CheckDate",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nfunction addDays(dateString, days) {\n  const date = new Date(dateString);\n  date.setDate(date.getDate() + Number(days));\n  \n  // format เป็น M/D/YYYY\n  return `${date.getMonth() + 1}/${date.getDate()}/${date.getFullYear()}`;\n}\n\n// ตัวอย่าง\nconst startDate = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[FillingDate]\");\nconst curingDays = $(\"[eventContext].[value]\") || 0;\n\nconst result = addDays(startDate, curingDays);\n\nreturn result;\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "GGBhgzrBu"
  }
]
```

</details>

### dayFinished2.2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/8/_children/5`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Plan_CheckDate55; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Plan_CheckDate55",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nfunction addDays(dateString, days) {\n  const date = new Date(dateString);\n  date.setDate(date.getDate() + Number(days));\n  \n  // format เป็น M/D/YYYY\n  return `${date.getMonth() + 1}/${date.getDate()}/${date.getFullYear()}`;\n}\n\n// ตัวอย่าง\nconst startDate = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[FillingDate]\");\nconst curingDays = $(\"[eventContext].[value]\") || 0;\n\nconst result = addDays(startDate, curingDays);\n\nreturn result;\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "jOqaOSP0A"
  }
]
```

</details>

### PH_Before 2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/10`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Spec_Actual; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Spec_Actual",
      "type": "set",
      "value": "\n[JavaScript binding]\nvar pHBefore = Number($(\"[eventContext].[value]\"));\nlet total = pHBefore - 0.2;\ntotal = Math.round(total * 100) / 100;\nreturn total.toFixed(2); \n[/JavaScript binding]\n",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "Cx9HM2Yu_"
  }
]
```

</details>

### PH_Before2.2 — onChange

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/11`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update Field Value | field=Spec_Actual2; componentId=New Form; type=set; value=JavaScript binding (ดูด้านล่าง) |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "field": "Spec_Actual2",
      "type": "set",
      "componentId": "c5e0dc3c818bc482585c1cde57aa73cb1",
      "value": "\n[JavaScript binding]\nvar pHBefore = Number($(\"[eventContext].[value]\"));\nlet total = pHBefore + 0.2;\ntotal = Math.round(total * 100) / 100;\nreturn total.toFixed(2); \n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update Field Value",
    "id": "QROmEjo7r"
  }
]
```

</details>

### Submit Save — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/15`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update PHB |
| 2 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "sampID": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}",
        "check30": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check30] }}",
        "check55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check55] }}",
        "submitby": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submitBy] }}",
        "submitdate": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[submit_date] }}",
        "PhBefore": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before] }}",
        "PhBefore2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before2] }}",
        "spac": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual] }}",
        "spac2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual2] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_87176ffa9ebc41039cb92b007ab3ecca",
      "confirm": null,
      "notificationOverride": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "dp52MLfcM"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "N-SJIUYx2"
  }
]
```

</details>

### Save Part — onClick

Config path: `/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/27`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Execute Query | queryId=Update_Sampling |
| 2 | Refresh Data Provider | componentId=Sampling Data |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "queryParams": {
        "Plan": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Plan_CheckDate] }}",
        "Actual": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate] }}",
        "PhBefore": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before] }}",
        "spac": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual] }}",
        "pH": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH] }}",
        "pH2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH2] }}",
        "Colour1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Colour] }}",
        "Colour2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Colour2] }}",
        "Smell1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Smell] }}",
        "Smell2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Smell2] }}",
        "Tpc1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Tpc] }}",
        "Tpc2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Tpc2] }}",
        "Atp1": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Atp] }}",
        "Atp2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Atp2] }}",
        "SamID": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}",
        "Plan55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Plan_CheckDate55] }}",
        "Actual55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate55] }}",
        "dayFinished": "{{ [c69abc378e8634b0da73b378c0015b689].[value] }}",
        "dayFinished2": "{{ [cd5aee33253684a849a6f0c3dae0e8db1].[value] }}",
        "RecevieBy": "{{ [c2087f4a9490b4fbe8806f07823cfeece].[value] }}",
        "Amount_Samples": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Amount_Samples] }}",
        "EditBy": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[EditBy] }}",
        "Abnormal": "{{ [c519cab39e9f44c918c18a33507ca7cbd].[value] }}",
        "Detail_incomplete": "{{ [cd37c080b02524697b8132bcbc27075bf].[value] }}",
        "Incomplete": "{{ [c415d3b686faf4dc0830adb3d825d52bf].[value] }}",
        "Recieved_date": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Recieved_date] }}",
        "Example": "{{ [c86bce66030dc4e768374222a463d3ec8].[value] }}",
        "Indication": "{{ [c71f5f182a02a4260b6bba5038f134dab].[value] }}",
        "packaging": "{{ [c71e34ff7923b4393929a7cf3ac50e4d6].[value] }}",
        "complete": "{{ [c70761ac0667745b9a84e2e847594600a].[value] }}",
        "Detail_Complete": "{{ [c83a1d524fe9b496e99b04ad4a7b8fe0c].[value] }}",
        "Normal": "{{ [c4eac6c4d633144b6b07edb7c1dd0ffe3].[value] }}",
        "PhBefore2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[PH_Before2] }}",
        "spac2": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Spec_Actual2] }}",
        "check30": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check30] }}",
        "check55": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Check55] }}",
        "Subby": "",
        "Product": "{{ [cd9d9b5f94c734f99bf9a09e263536625].[value] }}",
        "Flavour": "{{ [c8961f74e3da348c9b1cd0c3df2d7ae85].[value] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_62524e88788f4018b1b4abdf486e4443",
      "confirm": false,
      "customTitleText": "",
      "notificationOverride": false
    },
    "##eventHandlerType": "Execute Query",
    "id": "cEgrBcEyQ"
  },
  {
    "parameters": {
      "componentId": "c03f60f059f6f4e229451f18567b211e8"
    },
    "##eventHandlerType": "Refresh Data Provider",
    "id": "13aYm6FDn"
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
    "path": "/_children/0/_children/1",
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
                "presence": false
              },
              "externalType": "nvarchar",
              "operator": "equal",
              "noValue": false,
              "value": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}"
            }
          ]
        }
      ]
    },
    "limit": 1
  },
  {
    "component": "New Form",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Update Date",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0",
    "dataSource": {
      "label": "Sampling",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Sampling"
    }
  },
  {
    "component": "Edit Data",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0",
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
                "presence": false
              },
              "externalType": "nvarchar",
              "operator": "equal",
              "noValue": false,
              "value": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}"
            }
          ]
        }
      ]
    },
    "limit": 1
  },
  {
    "component": "Edit part II",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0",
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
              "value": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}"
            }
          ]
        }
      ]
    },
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
    "component": "BG-Screen",
    "id": "c7a37af1afc9b41ed899b561427a9c423",
    "path": "/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "4tz7JcYsk",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "{{ [state].[CallbackDB_API].user }}"
        }
      ]
    }
  },
  {
    "component": "SampID",
    "id": "c85d995f8c7d84125a2e041817823777c",
    "path": "/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [state].[CallBack_Sampling] }}"
    }
  },
  {
    "component": "New Button",
    "id": "c1e9f0b94cb854dc390c0d8d359a1917c",
    "path": "/_children/0/_children/0/_children/6",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "4aJ60qN5W",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Sampling Data",
    "id": "c03f60f059f6f4e229451f18567b211e8",
    "path": "/_children/0/_children/1",
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
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Sampling Repeater",
    "id": "cdf27a1fbda0a4050ab025556912f77ce",
    "path": "/_children/0/_children/1/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c03f60f059f6f4e229451f18567b211e8] }}"
    }
  },
  {
    "component": "Machine Field",
    "id": "cfd95cd4e60c24a7ab7167d6c7d04fa6d",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/7",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst runningNo = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[Machine]\");\n\nreturn machineMap[runningNo] || \"Not Found\";\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Machine Field2",
    "id": "c46640a60115946e087f99d2980f49f0c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/8",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nconst machineMap = {\n  \"01\": \"A1\",\n  \"02\": \"A4\",\n  \"03\": \"A5\",\n  \"04\": \"B1\",\n  \"05\": \"B2\",\n  \"06\": \"B3\",\n  \"07\": \"C1\",\n  \"08\": \"C2\",\n  \"09\": \"C3\",\n  \"10\": \"D1\",\n  \"11\": \"D2\",\n  \"12\": \"D3\",\n  \"13\": \"E1\",\n  \"14\": \"E2\",\n  \"15\": \"F1\",\n  \"16\": \"F2\",\n  \"17\": \"F3\",\n  \"18\": \"F4\",\n  \"19\": \"F5\",\n  \"20\": \"G1\",\n  \"21\": \"G2\",\n  \"22\": \"G3\",\n  \"23\": \"H1\",\n  \"24\": \"H2\",\n  \"25\": \"H3\",\n  \"26\": \"I1\",\n  \"27\": \"I2\",\n  \"28\": \"J1\",\n  \"29\": \"J2\",\n  \"30\": \"K1\",\n  \"31\": \"K2\",\n  \"32\": \"M1\",\n  \"33\": \"M2\",\n  \"34\": \"M3\",\n  \"35\": \"L\"\n};\n\nconst runningNo = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[Machine]\");\n\nreturn machineMap[runningNo] || \"Not Found\";\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Quanity2",
    "id": "cae4224058b714cd5bb6b717e06b941cc",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/9",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Quanity2] }} Unit"
    }
  },
  {
    "component": "Quanity",
    "id": "c200817a06a6f4b5e8b58b79cab6e3354",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/10",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Quanity] }} Unit"
    }
  },
  {
    "component": "Temperature",
    "id": "cf98fb79b3e934513af6372cd78a47503",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/11",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature] }} °C"
    }
  },
  {
    "component": "Temperature2",
    "id": "c421ed726d7304807b5776b720a700793",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/12",
    "properties": {
      "defaultValue": " {{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature2] }} °C"
    }
  },
  {
    "component": "DateSubmit Field",
    "id": "c8a2ab3298901414eaeb353610dfebec3",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/13",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nconst now = new Date($(\"[cdf27a1fbda0a4050ab025556912f77ce].[CreatedBY]\"));\n\nconst date = now.toLocaleDateString();\nconst time = now.toLocaleTimeString();\n\nreturn date;\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "TimeSubmit Field",
    "id": "c080b91509b204ccc876406f774c38fca",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/14",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nconst now = new Date($(\"[cdf27a1fbda0a4050ab025556912f77ce].[CreatedBY]\"));\nconst date = now.toLocaleDateString();\nconst time = now.toLocaleTimeString();\n\nreturn time;\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Submit Field",
    "id": "c1166a296ac204cec98b6c8da4a5b7457",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/15",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SendBY]3 }}"
    }
  },
  {
    "component": "SubmitBy",
    "id": "cb176e71d5af4486fb6ed2c5f4d25fa05",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/21",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "q8zCcldUR",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submit_Remark",
    "id": "c18c858fae22a47309f57eb5cb6c65bff",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/22",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Submit_Remark] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "q8zCcldUR",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "SubmitDate",
    "id": "cd56d91f19d44405fb35c2b7a9cae5158",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/24",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submit_date] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "xXnuEhJNX",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submit_date] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Check30",
    "id": "c7e5f82c099c84664992e6d1989272544",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/25",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[check30] }}",
      "_conditions": []
    }
  },
  {
    "component": "Check55",
    "id": "cadc5c5b17b3c468a9ccd7ad1ac56e113",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/26",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[check55] }}",
      "_conditions": []
    }
  },
  {
    "component": "Submit Save",
    "id": "cae8d6fca555b43648c22447c0ce1f3e8",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/29",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "48NLnrF_k",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Submit Update Modal",
    "id": "c12a0640f628146acab73e7ca17c7a737",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/30",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "48NLnrF_k",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "SubmitBy_modal",
    "id": "c084e5e3a06fb48d8b3f6105f981cbe5e",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/31/_children/0/_children/0",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[submitBy] }}"
    }
  },
  {
    "component": "Submit Update",
    "id": "c283e975694924f6a87c8b4eb2ad9749c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/0/_children/31/_children/0/_children/2",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "rnhlDLJjS",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qatech"
        },
        {
          "valueType": "string",
          "id": "GCRo6CRzV",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qasup"
        }
      ]
    }
  },
  {
    "component": "Product",
    "id": "c05ed938aa3664b3dbadec8abaa863463",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Product] }}"
    }
  },
  {
    "component": "Flavour Field",
    "id": "c509eba73fe9741eda54255adce969e5b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Flavour] }}"
    }
  },
  {
    "component": "Size Field ",
    "id": "cfa1e03c9eb234db8966a3474f3537454",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/7",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Size] }}"
    }
  },
  {
    "component": "Filling Date Field",
    "id": "c2077d03ffcb74c6b97c5f788b5e6852c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/8",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[FillingDate] }}"
    }
  },
  {
    "component": "Expired Date Field",
    "id": "c374519d27cb54e919937480cdc7a6acf",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/9",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[ExpiredDate] }}"
    }
  },
  {
    "component": "edit",
    "id": "c23f08bfcb6d043a1aa30cd560a02da78",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/10",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Edit Data",
    "id": "cf647fbffaf57461cb6e443e76d19eedb",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0",
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
                  "presence": false
                },
                "externalType": "nvarchar",
                "operator": "equal",
                "noValue": false,
                "value": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Edit Repeater",
    "id": "cae3aaf09c6a542b997acee0ea9c2c6fa",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cf647fbffaf57461cb6e443e76d19eedb] }}"
    }
  },
  {
    "component": "Filling Date Picker",
    "id": "c7dddd097a9df4776a36efb75ac110645",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [cae3aaf09c6a542b997acee0ea9c2c6fa].[FillingDate] }}"
    }
  },
  {
    "component": "Expired Date Picker",
    "id": "c1e1aeba188744c7ab58ecff2b27c44b1",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [cae3aaf09c6a542b997acee0ea9c2c6fa].[ExpiredDate] }}"
    }
  },
  {
    "component": "Edit field",
    "id": "c83b40f864c5a4976b421f5ed23e63e1b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0/_children/0/_children/0/_children/0/_children/5",
    "properties": {
      "defaultValue": "{{ [cae3aaf09c6a542b997acee0ea9c2c6fa].[EditBy] }}"
    }
  },
  {
    "component": "UpdateAT",
    "id": "c0d018baf2c1542ac8a0c6785ea6425d6",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/13",
    "properties": {
      "text": "\n[JavaScript binding]\nconst updateAt = new Date($(\"[cdf27a1fbda0a4050ab025556912f77ce].[UpdateAt]\"));\nconst updateBy = $(\"Sampling Repeater.Sampling.UpdateBy\");\n\nconst result =\n  updateAt.getDate() + \"/\" +\n  (updateAt.getMonth() + 1) + \"/\" +\n  updateAt.getFullYear() + \" \" +\n  updateAt.getHours().toString().padStart(2, \"0\") + \":\" +\n  updateAt.getMinutes().toString().padStart(2, \"0\");\n\nreturn \"มีการแก้ไขข้อมูลเมื่อเวลา: \" + result;\n[/JavaScript binding]\n",
      "_conditions": [
        {
          "valueType": "string",
          "id": "f07kbbSiw",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[EditBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Loading Modal",
    "id": "c0bc8f0bac24f42dc996511d925efb87e",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/14",
    "properties": {
      "onClose": []
    }
  },
  {
    "component": "pH Fetch -",
    "id": "cb898ce1004ce46318b37f7a6db742ad8",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/2/_children/15",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "IMQGQfY9r",
          "action": "hide",
          "operator": "equal",
          "newValue": "-",
          "referenceValue": "-"
        }
      ]
    }
  },
  {
    "component": "Plan Date",
    "id": "cab9eff0ca96f4abcb4ab235e8c3bc49b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3/_children/2",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate] }}"
    }
  },
  {
    "component": "Actual Date",
    "id": "c4834fe85d633417bb5ce454cb09a5fad",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "mbff9Mdf-",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate] }}",
          "noValue": true,
          "referenceValue": null
        }
      ],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate] }}"
    }
  },
  {
    "component": "temFinished",
    "id": "cb951b694eafd4680a2f9a9d1336c9d0b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature] }}"
    }
  },
  {
    "component": "dayFinished",
    "id": "c6ea03583776e4bc3abc88a9613b51bfa",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/3/_children/5/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "SC_7HzhUh",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished2] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Plan Date2",
    "id": "c9fa0bb6a22df4960b0ca7df02c7b068c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/2",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nlet auto = $(\"[state].[plan_check2_auto]\");\nlet plant = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate]\");\nif(!plant) {\n  return auto || plant;\n}\n\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Plan Date2",
    "id": "cfa970f71dc6c46b6887de93120df2be3",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/3",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate55] }}"
    }
  },
  {
    "component": "Actual Date2",
    "id": "ced91e9424f3e4d86b4b94760df5941b2",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/4",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "4OTuOL4_I",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate55] }}",
          "noValue": true,
          "referenceValue": null
        }
      ],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate55] }}"
    }
  },
  {
    "component": "temFinished2",
    "id": "ca303d5e0aeba44ec93a91d7825e05c42",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature2] }}"
    }
  },
  {
    "component": "dayFinished2",
    "id": "cbcb7a9d8562448ad8cc1ce5ac09b6ac1",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/8/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished2] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "wbjDmWn1j",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "PH_Before",
    "id": "c06e327a4de834251959bdbef8a6edec9",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/10",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[PH_Before] }}",
      "_conditions": []
    }
  },
  {
    "component": "PH_Before2",
    "id": "c7002344addba4861a71e478d7bf3019b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/11",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[PH_Before2] }}"
    }
  },
  {
    "component": "Spec_Actual",
    "id": "c347c7ba192ff48d5aacdb8dd42f0d044",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/12",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual] }}"
    }
  },
  {
    "component": "Spec_Actual2",
    "id": "c84ee6d8af68a4f429b2d2026d5e90184",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/13",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual2] }}"
    }
  },
  {
    "component": "Submit Save",
    "id": "c227cb3d1f4104d788209ffbb41aa127e",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/4/_children/15",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "Exam Checkbox",
    "id": "c095435f97b37491a8ff56f4109d87990",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/1",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Example] }}"
    }
  },
  {
    "component": "Indication Checkbox",
    "id": "cc2a14f220f864444b501b5c4a977c71f",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/2",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Indication] }}",
      "_conditions": []
    }
  },
  {
    "component": "Packaging Checkbox",
    "id": "ca8d5197395c04eb59c92f0afe819416b",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/3",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Complete Checkbox",
    "id": "c818269bfc51647f6881b0a88fdf2d133",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[complete] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "xuJuCxMB8",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[complete] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Detail Complete Checkbox",
    "id": "cb70bc8731394400995741a3720e26c02",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_Complete] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "RDDDr8yx3",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_Complete] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Normal Checkbox",
    "id": "c771ef9883e3f4375bfe89a00e9f0da95",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/6",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Normal] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "5S9jEAnaB",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Normal] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "incom field",
    "id": "cec32b3d345b941ecb0652ec44bb262ba",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/16",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Incomplete] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "8rsROIXyY",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_incomplete] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "detail incom field",
    "id": "c0b68af61a69d42f29a183fda810be266",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/17",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_incomplete] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "CCK1Mlxdm",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_incomplete] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Abnormal field",
    "id": "c268c6ece06334b71bb19172864a2bfaf",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/18",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Abnormal] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "CpHw6vmjQ",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Abnormal] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Amount Samples Field",
    "id": "c7d35ddc813954a6bb59659e5e70047db",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/23",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nlet qty1 = Number($(\"[cdf27a1fbda0a4050ab025556912f77ce].[Quanity]\")) || 0;\nlet qty2 = Number($(\"[cdf27a1fbda0a4050ab025556912f77ce].[Quanity2]\")) || 0;\n\nlet total = qty1 + qty2;\n\nreturn total;\n[/JavaScript binding]\n",
      "_conditions": [
        {
          "valueType": "string",
          "id": "BZAgSwMbi",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Amount_Samples] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved",
    "id": "cbb6518d82f6f4eba9123956919316cb5",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/24",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[RecevieBy] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "zOfo_x_qB",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved Picker 2",
    "id": "cb46d4e634e24418a87e5cb69858d6b1c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/25",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Recieved_date] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "OSSVZ6lZF",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Recieved_date] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Save Part",
    "id": "c59eaef38d2b0461b8a2f03d99bce8096",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/27",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "8EkL2nAOV",
          "action": "hide",
          "operator": "notEmpty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Back",
    "id": "cef0cb59519a14773a4955128751e8e51",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/0/_children/6/_children/28",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "8EkL2nAOV",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Edit PART II",
    "id": "c0adb60c1973d449e8d381ce1e1c9762e",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/0/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "ThnxJ3GFY",
          "action": "show",
          "operator": "equal",
          "newValue": "{{ [state].[CallbackDB_API].user }}",
          "referenceValue": "qasup"
        }
      ]
    }
  },
  {
    "component": "Temperature Table",
    "id": "cc78f89326d2d42ca9d441d42275a0bfc",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/1/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [cf647fbffaf57461cb6e443e76d19eedb] }}",
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
    "id": "cc030e77748c7427aa941d823e813a79f",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/1/_children/0/_children/1",
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
          "label": "no",
          "field": "no",
          "active": true
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
          "active": false,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": false,
          "width": 80
        },
        {
          "label": "remark",
          "field": "remark",
          "active": false,
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
        },
        {
          "label": "sampling_ref_id",
          "field": "sampling_ref_id",
          "active": false
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
                "value": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}"
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
          "newValue": "{{ [cc78f89326d2d42ca9d441d42275a0bfc].[value] }}",
          "referenceValue": "30"
        }
      ],
      "onRowClick": []
    }
  },
  {
    "component": "Temperature55 Table",
    "id": "cfbb968c90e0d4d4b843e1eac2f409150",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/1/_children/0/_children/2",
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
          "label": "no",
          "field": "no",
          "active": true
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
          "active": false,
          "width": 80
        },
        {
          "label": "colour",
          "field": "colour",
          "active": false,
          "width": 80
        },
        {
          "label": "smell",
          "field": "smell",
          "active": false,
          "width": 80
        },
        {
          "label": "tpc",
          "field": "tpc",
          "active": false,
          "width": 80
        },
        {
          "label": "atp",
          "field": "atp",
          "active": false,
          "width": 80
        },
        {
          "label": "remark",
          "field": "remark",
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
        },
        {
          "label": "sampling_ref_id",
          "field": "sampling_ref_id",
          "active": false
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
                "value": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[SamplingID] }}"
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
          "newValue": "{{ [cc78f89326d2d42ca9d441d42275a0bfc].[value] }}",
          "referenceValue": "55"
        }
      ],
      "onRowClick": []
    }
  },
  {
    "component": "New Table",
    "id": "ce86ba3d7fd8249bbbae48d347320b846",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/2/_children/0/_children/0/_children/0",
    "properties": {
      "table": {
        "label": "Recall_Ph",
        "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Recall_Ph",
        "type": "table",
        "datasourceName": "MS SQL Server",
        "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__Recall_Ph"
      },
      "columns": [
        {
          "label": "SamplingID",
          "field": "SamplingID",
          "active": false,
          "width": 160
        },
        {
          "label": "Low_Date",
          "field": "Low_Date",
          "active": true,
          "width": 150
        },
        {
          "label": "Group",
          "field": "Group",
          "active": true,
          "width": 80
        },
        {
          "label": "Product_Date",
          "field": "Product_Date",
          "active": false,
          "width": 130
        },
        {
          "label": "PH1",
          "field": "PH1",
          "active": true,
          "width": 80
        },
        {
          "label": "PH2",
          "field": "PH2",
          "active": true,
          "width": 80
        },
        {
          "label": "PH3",
          "field": "PH3",
          "active": true,
          "width": 80
        },
        {
          "label": "PH4",
          "field": "PH4",
          "active": true,
          "width": 80
        },
        {
          "label": "PH5",
          "field": "PH5",
          "active": true,
          "width": 80
        },
        {
          "label": "PH6",
          "field": "PH6",
          "active": true,
          "width": 80
        },
        {
          "label": "PH7",
          "field": "PH7",
          "active": true,
          "width": 80
        },
        {
          "label": "PH8",
          "field": "PH8",
          "active": true,
          "width": 80
        },
        {
          "label": "ID",
          "field": "ID",
          "active": false
        },
        {
          "label": "ProductID",
          "field": "ProductID",
          "active": true,
          "width": 150
        }
      ],
      "buttons": [
        {
          "_id": "c2b3fadaa267c4a9c81ea43e05e3918e5",
          "_component": "@budibase/standard-components/button",
          "_instanceName": "c064b9cbb0eb6447ca31aa1fb53d00f5d",
          "text": "Select",
          "type": "cta",
          "size": "M",
          "gap": "M",
          "_rootId": "ce86ba3d7fd8249bbbae48d347320b846",
          "icon": "ri-send-plane-fill",
          "onClick": [
            {
              "parameters": {
                "queryParams": {},
                "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
                "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776",
                "notificationOverride": true
              },
              "##eventHandlerType": "Execute Query",
              "id": "Ym8WNByfN"
            }
          ]
        }
      ]
    }
  },
  {
    "component": "Edit part II",
    "id": "c3800be28da7f43b9b7850111fe773380",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0",
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
                "value": "{{ [c85d995f8c7d84125a2e041817823777c].[value] }}"
              }
            ]
          }
        ]
      }
    }
  },
  {
    "component": "Product Edit",
    "id": "cd9d9b5f94c734f99bf9a09e263536625",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/0/_children/0/_children/3",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Product] }}"
    }
  },
  {
    "component": "Flavour Edit",
    "id": "c8961f74e3da348c9b1cd0c3df2d7ae85",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/0/_children/0/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Flavour] }}"
    }
  },
  {
    "component": "Plan Date",
    "id": "ccb644cadbe9f48e5afc0feff00ed22d8",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/0/_children/2",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate] }}"
    }
  },
  {
    "component": "Actual Date",
    "id": "c8e49889d81c14f7b91cacd8563e0c567",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/0/_children/3",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "mbff9Mdf-",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate] }}",
          "noValue": true,
          "referenceValue": null
        }
      ],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate] }}"
    }
  },
  {
    "component": "temFinished",
    "id": "c26d02923403344709cb77fa926a5f3dc",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/0/_children/5/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature] }}"
    }
  },
  {
    "component": "dayFinished 2",
    "id": "c69abc378e8634b0da73b378c0015b689",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/0/_children/5/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished] }}",
      "_conditions": []
    }
  },
  {
    "component": "Plan Date2",
    "id": "cfb993aa5865f4315b83ab0c2ba5896c7",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/2",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nlet auto = $(\"[state].[plan_check2_auto]\");\nlet plant = $(\"[cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate]\");\nif(!plant) {\n  return auto || plant;\n}\n\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Plan Date2",
    "id": "c2c3c9a417b4348b8b5af2f123d73b8b3",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/3",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Plan_CheckDate55] }}"
    }
  },
  {
    "component": "Actual Date2",
    "id": "c3b3884ee3f954f97b26003a6ed1502e4",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/4",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "4OTuOL4_I",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [c5e0dc3c818bc482585c1cde57aa73cb1].[Actual_CheckDate55] }}",
          "noValue": true,
          "referenceValue": null
        }
      ],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Actual_CheckDate55] }}"
    }
  },
  {
    "component": "temFinished2",
    "id": "cc8824579c83744ee8958da88df42bd57",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/8/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Temperature2] }}"
    }
  },
  {
    "component": "dayFinished2.2",
    "id": "cd5aee33253684a849a6f0c3dae0e8db1",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/8/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[dayFinished2] }}",
      "_conditions": []
    }
  },
  {
    "component": "PH_Before 2",
    "id": "c047032dc43b34b60b583667062929531",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/10",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[PH_Before] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "f6_L6xLUp",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "PH_Before2.2",
    "id": "c316d6fb2670e4266858212719575f6a0",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/11",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "x6w6eSw_N",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual2] }}",
          "noValue": true,
          "referenceValue": null
        }
      ],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[PH_Before2] }}"
    }
  },
  {
    "component": "Spec_Actual 2",
    "id": "cac9b65d1d3734634a978545d49704a07",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/12",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual] }}"
    }
  },
  {
    "component": "Spec_Actual2.2",
    "id": "c03966b083b4b4790a16cb8819ea8c244",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/13",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual2] }}"
    }
  },
  {
    "component": "Submit Save",
    "id": "c20352804162e4797a9718ae0839e4292",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/1/_children/15",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "1UppPC90o",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Spec_Actual2] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Exam Checkbox 2",
    "id": "c86bce66030dc4e768374222a463d3ec8",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/1",
    "properties": {
      "_conditions": [],
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Example] }}"
    }
  },
  {
    "component": "Indication Checkbox 2",
    "id": "c71f5f182a02a4260b6bba5038f134dab",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/2",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Indication] }}",
      "_conditions": []
    }
  },
  {
    "component": "Packaging Checkbox 2",
    "id": "c71e34ff7923b4393929a7cf3ac50e4d6",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/3",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[packaging] }}",
      "_conditions": []
    }
  },
  {
    "component": "Complete Checkbox 2",
    "id": "c70761ac0667745b9a84e2e847594600a",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/4",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Detail Complete Checkbox 2",
    "id": "c83a1d524fe9b496e99b04ad4a7b8fe0c",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/5",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_Complete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Normal Checkbox 2",
    "id": "c4eac6c4d633144b6b07edb7c1dd0ffe3",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/6",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Normal] }}",
      "_conditions": []
    }
  },
  {
    "component": "incom field 2",
    "id": "c415d3b686faf4dc0830adb3d825d52bf",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/16",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Incomplete] }}",
      "_conditions": []
    }
  },
  {
    "component": "detail incom field 2",
    "id": "cd37c080b02524697b8132bcbc27075bf",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/17",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Detail_incomplete] }}",
      "_conditions": []
    }
  },
  {
    "component": "Abnormal field 2",
    "id": "c519cab39e9f44c918c18a33507ca7cbd",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/18",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Abnormal] }}",
      "_conditions": []
    }
  },
  {
    "component": "Amount Samples Field",
    "id": "c59c3e9c9f0684307b76bffaef10a0ded",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/23",
    "properties": {
      "defaultValue": "\n[JavaScript binding]\nlet qty1 = Number($(\"[cdf27a1fbda0a4050ab025556912f77ce].[Quanity]\")) || 0;\nlet qty2 = Number($(\"[cdf27a1fbda0a4050ab025556912f77ce].[Quanity2]\")) || 0;\n\nlet total = qty1 + qty2;\n\nreturn total;\n[/JavaScript binding]\n",
      "_conditions": [
        {
          "valueType": "string",
          "id": "BZAgSwMbi",
          "action": "update",
          "operator": "notEmpty",
          "setting": "readonly",
          "settingValue": true,
          "newValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Amount_Samples] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Recieved_edit",
    "id": "c2087f4a9490b4fbe8806f07823cfeece",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/24",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[RecevieBy] }}",
      "_conditions": []
    }
  },
  {
    "component": "Recieved_DateEdit",
    "id": "cd2442f878f254cf1bbee51cb1b519e53",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/25",
    "properties": {
      "defaultValue": "{{ [cdf27a1fbda0a4050ab025556912f77ce].[Recieved_date] }}",
      "_conditions": []
    }
  },
  {
    "component": "Save Part",
    "id": "c52a0eea515ba4056a9933afe11809469",
    "path": "/_children/0/_children/1/_children/0/_children/0/_children/0/_children/3/_children/0/_children/0/_children/1/_children/2/_children/27",
    "properties": {
      "_conditions": []
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
