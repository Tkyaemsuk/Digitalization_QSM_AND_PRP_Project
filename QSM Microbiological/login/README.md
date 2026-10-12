# 🖥️ /login

รับบัญชีผู้ใช้ ตรวจข้อมูล และนำเข้าสู่เมนู

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/login`
- Access: `PUBLIC`
- Home screen: `True`
- Width: `Large`
- Screen ID: `screen_4382bbe3415f467daa16760f83efe8cc`
- จำนวน components: 16

## Data / Query dependencies

- [Login](<../database/Query/Login.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| container | 5 |
| button | 3 |
| stringfield | 2 |
| image | 2 |
| heading | 2 |
| form | 1 |
| divider | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Username | user | Username | ไม่ได้ตั้งค่าใน component |
| Password | password | Password | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### Login Btn — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_Login; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Clear Form | componentId=Login Forms |
| 3 | Show Notification | type=warning; message={{ [state].[Vaildate_Login] }} |
| 4 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaildate_Login] }} |
| 5 | Execute Query | queryId=Login |
| 6 | Update State | key=CheckResult; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 7 | Show Notification | type=error; message={{ [state].[CheckResult] }} |
| 8 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[CheckResult] }} |
| 9 | Show Notification | type=success; message=Login Successfully! |
| 10 | Update State | key=username; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 11 | Navigate To | url=/menu; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_Login",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst inp = [\n  {name: 'Username', value: $(\"[cb8814571bad74d0a89401704d49c30f7].[user]\")},\n  {name: 'Password', value: $(\"[cb8814571bad74d0a89401704d49c30f7].[password]\")}\n];\n\nfor(i of inp) {\n  if(!i.value) {\n    return \"Please input \" + i.name + '!';\n  }\n}\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "BZ9fdQiZ6"
  },
  {
    "parameters": {
      "componentId": "cb8814571bad74d0a89401704d49c30f7"
    },
    "##eventHandlerType": "Clear Form",
    "id": "_8KLFOLLQ"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_Login] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "T77RdS0sN"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "stop",
      "operator": "notEqual",
      "value": "{{ [state].[Vaildate_Login] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "Q4jKrutyn"
  },
  {
    "parameters": {
      "queryParams": {
        "UserAC": "{{ [cb8814571bad74d0a89401704d49c30f7].[user] }}",
        "psw": "{{ [cb8814571bad74d0a89401704d49c30f7].[password] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_d23f0f06d2d64701a38481ec7395392e",
      "confirm": null,
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "K4tA5ACal"
  },
  {
    "parameters": {
      "key": "CheckResult",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst results = $(\"actions.4.result.data.length\");\nif(results == 1) {\n  return \"\";\n} else {\n  return \"Username/Password in correct!\";\n}\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "D-xEqlgjg"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "error",
      "message": "{{ [state].[CheckResult] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "iW_lfWMxu"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[CheckResult] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "124VW3n5E"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Login Successfully!",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "y1KYxhPCr"
  },
  {
    "parameters": {
      "key": "username",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst recall_db = $(\"actions.4.result.data.[0].user\");\nreturn recall_db\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "ZQl5odP9O"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/menu",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "NesfF_KjT"
  }
]
```

</details>

### New Button — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Choose; type=set; value=1 |
| 2 | Navigate To | url=/create-inprocess; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Choose",
      "type": "set",
      "value": "1",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "CbvR7uLJK"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/create-inprocess",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "B8CChjS_P"
  }
]
```

</details>

### New Button — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/micro-table; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/micro-table"
    },
    "##eventHandlerType": "Navigate To",
    "id": "ErT_wYL9C"
  }
]
```

</details>

## Data provider configuration

ชื่อหรือ SQL สำเนาใน data provider อาจเก่ากว่า query document ปัจจุบัน. ถ้า `embeddedSqlDiffersFromCurrentQuery=true` ให้ตรวจการ resolve query ID ใน runtime ก่อนแก้ไข; เอกสาร SQL ใช้ query document ปัจจุบันเป็นหลัก.

<details><summary>เปิดดู data source และ query parameter mapping</summary>

```json
[
  {
    "component": "Login Forms",
    "dataSource": {
      "label": "tb_app1_login",
      "tableId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__tb_app1_login",
      "type": "table",
      "resourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8__tb_app1_login"
    },
    "queryParams": null,
    "filter": null
  }
]
```

</details>

## หมายเหตุส่งต่องาน

- Metadata นี้มาจาก latest edited app; ไม่ยืนยันว่า published app เป็น revision เดียวกัน.
- Access=PUBLIC เป็นค่าที่ตั้งใน screen; ต้องอ่านเงื่อนไข action/state เพิ่มเพื่อเข้าใจข้อจำกัดที่ UI ใช้.
- ไม่ได้ execute query หรือบันทึกข้อมูลธุรกิจระหว่างจัดเอกสาร.
