# Screen: /high-acid/sampling-tracker/:sampid

พบ route ที่ยังอยู่ใน export แต่ไม่มี query reference หรือ event actions. ให้ถือเป็นหน้าที่ต้องตรวจสถานะการใช้งานเพิ่มเติม ไม่อนุมานว่ามี workflow tracker ครบจากชื่อ route.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_1e131bcb2e2e4f068b4c8c91d044dbcd`
- Route: `/high-acid/sampling-tracker/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 1

## Query dependencies

ไม่พบ active query ID; table provider/custom component อาจอ่านข้อมูลโดยตรง ให้ดูรายละเอียดด้านล่าง.

## Components

| Type | Count |
|---|---|
| container | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

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
[]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
