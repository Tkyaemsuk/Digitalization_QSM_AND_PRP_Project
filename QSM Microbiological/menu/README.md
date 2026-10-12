# 🖥️ /menu

เมนูเข้าถึงงาน Micro และหน้าสร้าง/รายงาน

[กลับหน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md)

## การตั้งค่าหน้า

- Route: `/menu`
- Access: `PUBLIC`
- Home screen: `False`
- Width: `Large`
- Screen ID: `screen_71618ea815ec4ee984e329477dcc447d`
- จำนวน components: 10

## Data / Query dependencies

ไม่พบ query ID อ้างโดยตรงใน screen config นี้.

## โครงสร้าง components

| Component | จำนวน |
|---|---|
| container | 3 |
| button | 3 |
| heading | 2 |
| image | 1 |
| divider | 1 |

## ฟิลด์และ bindings

| Component / ชื่อ | Field | Label / Placeholder | Required |
|---|---|---|---|

## ลำดับ actions ตาม event

ลำดับด้านล่างคัดจาก config ตามจริง รวมเงื่อนไข Continue/Stop. ชื่อ component/state และ binding คงเดิมเพื่อให้ค้นใน Builder ได้.

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
    "id": "zklPyO6na"
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

### UHT3 — `onClick`

| ลำดับ | Action | รายละเอียดหลัก |
|---|---|---|
| 1 | Navigate To | url=/create-microid; type=screen |

<details><summary>Bindings และ JavaScript ของ event นี้</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/create-microid",
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
      "url": "/micro-table",
      "peek": null
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
[]
```

</details>

## หมายเหตุส่งต่องาน

- Metadata นี้มาจาก latest edited app; ไม่ยืนยันว่า published app เป็น revision เดียวกัน.
- Access=PUBLIC เป็นค่าที่ตั้งใน screen; ต้องอ่านเงื่อนไข action/state เพิ่มเพื่อเข้าใจข้อจำกัดที่ UI ใช้.
- ไม่ได้ execute query หรือบันทึกข้อมูลธุรกิจระหว่างจัดเอกสาร.
