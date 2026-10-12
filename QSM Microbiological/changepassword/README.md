# 🖥️ /changepassword

เปลี่ยนรหัสผ่านบัญชี

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/changepassword`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_cf22b2c43cc7487989904457a57542e3`
- จำนวน components: 9

## Data / Query dependencies

- [ChangePassword](<../database/Query/ChangePassword.sql>)

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| container | 3 |
| stringfield | 3 |
| form | 1 |
| button | 1 |
| image | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|
| Username | user | Username | ไม่ได้ตั้งค่าใน component |
| Password | password | Password | ไม่ได้ตั้งค่าใน component |
| Password | cpassword | Condirm Password | ไม่ได้ตั้งค่าใน component |

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

### ChangePass Btn — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Update State | key=Vaildate_Login; type=set; value=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 2 | Clear Form | componentId=Login Forms |
| 3 | Show Notification | type=warning; message={{ [state].[Vaildate_Login] }} |
| 4 | Continue if / Stop if | type=stop; operator=notEqual; referenceValue=; value={{ [state].[Vaildate_Login] }} |
| 5 | Execute Query | queryId=ChangePassword |
| 6 | Show Notification | type=warning; message=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 7 | Continue if / Stop if | type=continue; operator=equal; referenceValue=200; value={{ actions.4.result.data.[0].status }} |
| 8 | Show Notification | type=success; message=JavaScript binding (ดูรายละเอียดด้านล่าง) |
| 9 | Navigate To | url=/login; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "key": "Vaildate_Login",
      "type": "set",
      "value": "\n[JavaScript binding]\nconst inp = [\n  { name: 'Username', value: $(\"[ca618a445008f4ab293f0fb7b9addf14e].[user]\") },\n  { name: 'Password', value: $(\"[ca618a445008f4ab293f0fb7b9addf14e].[password]\") },\n  { name: 'Confirm Password', value: $(\"[ca618a445008f4ab293f0fb7b9addf14e].[cpassword]\") }\n];\n\n// ตรวจช่องว่าง\nfor (const i of inp) {\n  if (!i.value || String(i.value).trim() === \"\") {\n    return \"Please input \" + i.name + \"!\";\n  }\n}\n\n// ตรวจ Password ตรงกันหรือไม่\nconst password = $(\"[ca618a445008f4ab293f0fb7b9addf14e].[password]\");\nconst confirmPassword = $(\"[ca618a445008f4ab293f0fb7b9addf14e].[cpassword]\");\n\nif (password !== confirmPassword) {\n  return \"Password and Confirm Password do not match!\";\n}\n\nreturn \"\";\n[/JavaScript binding]\n",
      "persist": null
    },
    "##eventHandlerType": "Update State",
    "id": "BZ9fdQiZ6"
  },
  {
    "parameters": {
      "componentId": "ca618a445008f4ab293f0fb7b9addf14e"
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
        "useracc": "{{ [ca618a445008f4ab293f0fb7b9addf14e].[user] }}",
        "cpsw": "{{ [ca618a445008f4ab293f0fb7b9addf14e].[cpassword] }}"
      },
      "datasourceId": "datasource_plus_6a765207669f4d03ad53a31867d5f9a8",
      "queryId": "query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_ac5e9790529748eb85cbe6b30a5a3ebb",
      "confirm": null,
      "notificationOverride": true
    },
    "##eventHandlerType": "Execute Query",
    "id": "JTzye5rmn"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "warning",
      "message": "\n[JavaScript binding]\nlet msg = $(\"actions.4.result.data.[0].message\");\nlet status = $(\"actions.4.result.data.[0].status\");\n\nif(status == 201) {\n  return msg;\n}\n[/JavaScript binding]\n",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "fFVOOAPi-"
  },
  {
    "parameters": {
      "referenceValue": "200",
      "type": "continue",
      "operator": "equal",
      "value": "{{ actions.4.result.data.[0].status }}"
    },
    "##eventHandlerType": "Continue if / Stop if",
    "id": "S8Ge5l37l"
  },
  {
    "parameters": {
      "autoDismiss": true,
      "type": "success",
      "message": "\n[JavaScript binding]\nlet msg = $(\"actions.4.result.data.[0].message\");\nlet status = $(\"actions.4.result.data.[0].status\");\n\nif(status == 200) {\n  return msg;\n}\n[/JavaScript binding]\n",
      "duration": "3000"
    },
    "##eventHandlerType": "Show Notification",
    "id": "ieLz9nbcF"
  },
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/login"
    },
    "##eventHandlerType": "Navigate To",
    "id": "Uy2lbL3zT"
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
