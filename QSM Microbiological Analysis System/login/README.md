# Screen: /login

หน้าเริ่มต้น: ตรวจ input, เรียก Login_API, sync จำนวน Brik ทั้ง Low/High, ประมวลผล state LoginDB_API/CallbackDB_API, ลง activity log แล้วไปเมนู. ลำดับจริงมี sync ก่อนตรวจผล LoginDB_API; อ่าน actions ให้ครบก่อนเปลี่ยนลำดับหรือแยกงาน sync.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_e491c4bebe7d4e6bb53189c451d97306`
- Route: `/login`
- Access: `PUBLIC`
- Home: `True`
- Width: `Large`
- Components: 12

## Query dependencies

- [app_logs](<../database/Query/app_logs.sql>)
- [Login_API](<../database/Query/Login_API.sql>)
- [SYNC_QUNITY_SAMPLINGS](<../database/Query/SYNC_QUNITY_SAMPLINGS.sql>)
- [SYNCHIGH_QUNITY_SAMPLINGS](<../database/Query/SYNCHIGH_QUNITY_SAMPLINGS.sql>)

## Components

| Type | Count |
|---|---|
| container | 3 |
| stringfield | 2 |
| image | 2 |
| backgroundimage | 1 |
| form | 1 |
| button | 1 |
| heading | 1 |
| divider | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| User | user | Username | ไม่ได้กำหนด |
| Password | password | Password | ไม่ได้กำหนด |

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### Login Button — onClick

Config path: `/_children/1/_children/0/_children/0/_children/2`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Update State | key=Vaildate_Login; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 2 | Clear Form | componentId=Login |
| 3 | Show Notification | type=warning; message={{ [state].[Vaildate_Login] }} |
| 4 | Continue if / Stop if | type=continue; operator=equal; referenceValue=; value={{ [state].[Vaildate_Login] }} |
| 5 | Execute Query | queryId=Login_API |
| 6 | Execute Query | queryId=SYNC_QUNITY_SAMPLINGS |
| 7 | Execute Query | queryId=SYNCHIGH_QUNITY_SAMPLINGS |
| 8 | Update State | key=LoginDB_API; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 9 | Clear Form | componentId=Login |
| 10 | Show Notification | type=error; message=JavaScript binding (ดูด้านล่าง) |
| 11 | Continue if / Stop if | type=continue; operator=equal; referenceValue=200; value={{ [state].[LoginDB_API] }} |
| 12 | Clear Form | componentId=Login |
| 13 | Show Notification | type=success; message=Login Successfully &#124; เข้าสู่ระบบสำเร็จ !  |
| 14 | Update State | key=CallbackDB_API; type=set; value=JavaScript binding (ดูด้านล่าง) |
| 15 | Execute Query | queryId=app_logs |
| 16 | Navigate To | url=/home/menu-selector/{{ [state].[CallbackDB_API].user }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_Login",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst inp_checkbox = [\n  { name: 'User', nameth: 'ชื่อผู้ใช้งาน', value: $(\"[c83f2a9edcfb84eaf8b4b7227fc155d34].[user]\") },\n  { name: 'Password', nameth: 'รหัสผ่าน', value: $(\"[c83f2a9edcfb84eaf8b4b7227fc155d34].[password]\") }\n];\n\nfor (i of inp_checkbox) {\n\n  // ตัวอย่างเช็คค่าว่าง\n  if (!i.value) {\n    return `Please insert the ${i.name}! | กรุณากรอก ${i.nameth}!`;\n  }\n}\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "M3RHJLJHH"
  },
  {
    "parameters": {
      "componentId": "c83f2a9edcfb84eaf8b4b7227fc155d34"
    },
    "##eventHandlerType": "Clear Form",
    "id": "HgDwchsPa"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "{{ [state].[Vaildate_Login] }}",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "bokyhIHuW"
  },
  {
    "parameters": {
      "referenceValue": "",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[Vaildate_Login] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "iFB7x4PZz"
  },
  {
    "parameters": {
      "queryParams": {
        "userac": "{{ [c83f2a9edcfb84eaf8b4b7227fc155d34].[user] }}",
        "psw": "{{ [c83f2a9edcfb84eaf8b4b7227fc155d34].[password] }}"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "notificationOverride": true,
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e9ab5e578b8e460ba369524a0a58f1b3",
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "Xw-wCqKfL"
  },
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_22f51a3816f74dbdbe6a069de85bc0fd",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "ca6h-pyom"
  },
  {
    "parameters": {
      "queryParams": {},
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_855fee807bd64e019b33adaf0e36beef",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "cg44-0E_X"
  },
  {
    "parameters": {
      "key": "LoginDB_API",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst db = $(\"actions.4.result.data.length\");\n\nif(db == 1) {\n  return 200;\n} else {\n  return 302;\n}\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "iR6bSPfVd"
  },
  {
    "parameters": {
      "componentId": "c83f2a9edcfb84eaf8b4b7227fc155d34"
    },
    "##eventHandlerType": "Clear Form",
    "id": "NZYt656J7"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "error",
      "duration": "3500",
      "message": "\n[JavaScript binding]\nlet responseDB = $(\"[state].[LoginDB_API]\");\nif(responseDB == 302) {\n  return \"User/Password incorrect! | ชื่อผู้ใช้งาน หรือ รหัสผ่านไม่ถูกต้อง!\";\n} else {\n  return \"\";\n}\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Show Notification",
    "id": "My8fYdkNP"
  },
  {
    "parameters": {
      "referenceValue": "200",
      "type": "continue",
      "operator": "equal",
      "value": "{{ [state].[LoginDB_API] }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "4wDDo54gB"
  },
  {
    "parameters": {
      "componentId": "c83f2a9edcfb84eaf8b4b7227fc155d34"
    },
    "##eventHandlerType": "Clear Form",
    "id": "gi0HWccrd"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "Login Successfully | เข้าสู่ระบบสำเร็จ ! ",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "nBrNrTwp4"
  },
  {
    "parameters": {
      "key": "CallbackDB_API",
      "type": "set",
      "persist": null,
      "value": "\n[JavaScript binding]\nconst resp = $(\"actions.4.result.data.[0]\");\nreturn resp;\n[/JavaScript binding]\n"
    },
    "##eventHandlerType": "Update State",
    "id": "zGWajJKWX"
  },
  {
    "parameters": {
      "queryParams": {
        "device": "tablet",
        "createdby": "{{ [state].[CallbackDB_API].user }}",
        "rows": "1",
        "action": "read",
        "app": "QSM Microbiological Analysis System",
        "screen": "/login"
      },
      "datasourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0",
      "queryId": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771",
      "notificationOverride": true,
      "confirm": null
    },
    "##eventHandlerType": "Execute Query",
    "id": "px5kVAh-D"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/home/menu-selector/{{ [state].[CallbackDB_API].user }}",
      "peek": null
    },
    "##eventHandlerType": "Navigate To",
    "id": "kxOKbV0mF"
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
    "component": "Login",
    "path": "/_children/1/_children/0",
    "dataSource": {
      "label": "tb_app1_login",
      "tableId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__tb_app1_login",
      "type": "table",
      "resourceId": "datasource_plus_0506fb2c937c4682933d3acce4fc69b0__tb_app1_login"
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
    "component": "Container",
    "id": "cc5f4852d83a14f5484c35512f73e631f",
    "path": "/_children/1",
    "properties": {
      "_conditions": []
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
