# machine_size

master ขนาดตามเครื่องจักร/DEP/GROUP; ตรวจใช้ผ่าน table providers ในหน้าจอด้วย.

[Database](../../README.md) · [SQL catalog](../../Query/README.md)

Primary key ที่ Builder ระบุ: `id`

## Data dictionary

| Column | SQL type | Budibase type | Required metadata | Auto column |
|---|---|---|---|---|
| `id` | `int` | number | False | True |
| `machine` | `nvarchar` | string | False | False |
| `size` | `nvarchar` | string | False | False |
| `DEP` | `nvarchar` | string | False | False |
| `no` | `nvarchar` | string | False | False |
| `GROUP` | `nvarchar` | string | False | False |

Required เป็น validation metadata ไม่ใช่หลักฐาน SQL NOT NULL. เก็บชื่อคอลัมน์ตามจริงรวมคำสะกด/ช่องว่าง/copy fields.

## Query ที่เกี่ยวข้อง
