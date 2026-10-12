# Screen: /a4

หน้ารูปแบบ A4 ตั้ง access BASIC. ไม่พบ query ID หรือ event action ใน source ของหน้านี้; ใช้ตรวจองค์ประกอบ/layout และ bindings ที่บันทึกไว้ ไม่ยืนยันว่าเป็นรายงานพร้อมข้อมูลครบ.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_52309ffc6a8543618ce8b8cdc190494e`
- Route: `/a4`
- Access: `BASIC`
- Home: `False`
- Width: `Medium`
- Components: 125

## Query dependencies

ไม่พบ active query ID; table provider/custom component อาจอ่านข้อมูลโดยตรง ให้ดูรายละเอียดด้านล่าง.

## Components

| Type | Count |
|---|---|
| text | 88 |
| booleanfield | 22 |
| container | 6 |
| divider | 4 |
| heading | 3 |
| image | 1 |
| embed | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|
| 30  1 |  |  | ไม่ได้กำหนด |
| 8  1 |  |  | ไม่ได้กำหนด |
| 8 2 |  |  | ไม่ได้กำหนด |
| 55 1 |  |  | ไม่ได้กำหนด |
| pH 1 |  |  | ไม่ได้กำหนด |
| colour 1 |  |  | ไม่ได้กำหนด |
| smell 1 |  |  | ไม่ได้กำหนด |
| TPC 1 |  |  | ไม่ได้กำหนด |
| ATP 1 |  |  | ไม่ได้กำหนด |
| ATP 2 |  |  | ไม่ได้กำหนด |
| TPC 2 |  |  | ไม่ได้กำหนด |
| smell 2 |  |  | ไม่ได้กำหนด |
| colour 2 |  |  | ไม่ได้กำหนด |
| pH 2 |  |  | ไม่ได้กำหนด |
| 55 2 |  |  | ไม่ได้กำหนด |
| 30  2 |  |  | ไม่ได้กำหนด |
| Exam box |  |  | ไม่ได้กำหนด |
| Indication box |  |  | ไม่ได้กำหนด |
| Packaging box |  |  | ไม่ได้กำหนด |
| Complete box |  |  | ไม่ได้กำหนด |
| Detail Complete box |  |  | ไม่ได้กำหนด |
| Normal box |  |  | ไม่ได้กำหนด |

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
[
  {
    "component": "Product",
    "id": "ca23f5e57865847b888c757a2cfec1c71",
    "path": "/_children/0/_children/1/_children/1",
    "properties": {
      "text": "                    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Product] }}"
    }
  },
  {
    "component": "Flavour ",
    "id": "cb07a53264360465dabefeeddeca48585",
    "path": "/_children/0/_children/1/_children/3",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Flavour] }}"
    }
  },
  {
    "component": "Filling Date",
    "id": "c0b190e3cae174536b2aa51b467c15e8b",
    "path": "/_children/0/_children/1/_children/6",
    "properties": {
      "text": "    {{ [c7e91e25676434e4eb57c8dccc9a27243].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c3feddaa924b849b88426e3551cd7e57d",
    "path": "/_children/0/_children/1/_children/8",
    "properties": {
      "text": "  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Expired_Format] }}"
    }
  },
  {
    "component": "spec actual ph",
    "id": "c6cd5aa8db810494dadde6c112eb7dff4",
    "path": "/_children/0/_children/1/_children/13",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[Spec_Actual2] }} "
    }
  },
  {
    "component": "30  1",
    "id": "cae4aa61b47264cc18fa2ef7b39b73bea",
    "path": "/_children/0/_children/1/_children/39",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check30] }}"
    }
  },
  {
    "component": "pH 1",
    "id": "c832732dfe87644b3ba5bdfebfb9049be",
    "path": "/_children/0/_children/1/_children/43",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH] }}"
    }
  },
  {
    "component": "colour 1",
    "id": "c0ec518a33fc845a8b2b8dcfd39f1c993",
    "path": "/_children/0/_children/1/_children/44",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour] }}"
    }
  },
  {
    "component": "smell 1",
    "id": "cd552004d647b486080ad3db81a7c83f7",
    "path": "/_children/0/_children/1/_children/45",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell] }}"
    }
  },
  {
    "component": "TPC 1",
    "id": "c5708fd295cd14b2da157c1baea492d9e",
    "path": "/_children/0/_children/1/_children/46",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc] }}"
    }
  },
  {
    "component": "ATP 1",
    "id": "c033bc4d26dac49b3afad0ee04e6a4ea9",
    "path": "/_children/0/_children/1/_children/47",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Atp] }}"
    }
  },
  {
    "component": "ATP 2",
    "id": "c34bca6f611934a2fad19d3772a7c48cd",
    "path": "/_children/0/_children/1/_children/48",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[atp2] }}"
    }
  },
  {
    "component": "TPC 2",
    "id": "cbcf9a038899346d287eb9aa46beab929",
    "path": "/_children/0/_children/1/_children/49",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Tpc2] }}"
    }
  },
  {
    "component": "smell 2",
    "id": "cea978424db774b2583a028f56f2f143a",
    "path": "/_children/0/_children/1/_children/50",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Smell2] }}"
    }
  },
  {
    "component": "colour 2",
    "id": "c8870c144d940403ebfc018330f5f52d7",
    "path": "/_children/0/_children/1/_children/51",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Colour2] }}"
    }
  },
  {
    "component": "pH 2",
    "id": "c3fdf5ea35b064dacad037cc79b6ebab5",
    "path": "/_children/0/_children/1/_children/52",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH2] }}"
    }
  },
  {
    "component": "55 2",
    "id": "cb84c05c277b34bbeade858f61404b3c0",
    "path": "/_children/0/_children/1/_children/53",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[check55] }}"
    }
  },
  {
    "component": "Exam box",
    "id": "c7b29061fcc4a430f94d3547c40c8b120",
    "path": "/_children/0/_children/1/_children/55",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Example] }}"
    }
  },
  {
    "component": "Indication box",
    "id": "c74ee4558254d4c2ebf380451c35b1595",
    "path": "/_children/0/_children/1/_children/56",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Indication] }}"
    }
  },
  {
    "component": "Packaging box",
    "id": "c95300f6f9adf47b8886e68449385ec2e",
    "path": "/_children/0/_children/1/_children/57",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[packaging] }}"
    }
  },
  {
    "component": "Complete box",
    "id": "c87d1db8267dd4dd4bddb89338fb87b76",
    "path": "/_children/0/_children/1/_children/58",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[complete] }}"
    }
  },
  {
    "component": "Detail Complete box",
    "id": "cc888770fdfc34f3295f72851a1080e94",
    "path": "/_children/0/_children/1/_children/59",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Detail_Complete] }}"
    }
  },
  {
    "component": "Normal box",
    "id": "c6a8964cea3884da69e43f068b67fce4d",
    "path": "/_children/0/_children/1/_children/60",
    "properties": {
      "defaultValue": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Normal] }}"
    }
  },
  {
    "component": "Amount",
    "id": "cb1384a6fdbfc4207b2652173a0bb9d1b",
    "path": "/_children/0/_children/1/_children/63",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[Amount_Samples] }}"
    }
  },
  {
    "component": "PH_Before",
    "id": "c6a3dd0d1506c459e8961c25113036973",
    "path": "/_children/0/_children/1/_children/66",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before] }} - {{ [c7e91e25676434e4eb57c8dccc9a27243].[PH_Before2] }}"
    }
  },
  {
    "component": "PlanCheck_Date",
    "id": "caf3a8c17b49a417b94617dc9adbed898",
    "path": "/_children/0/_children/1/_children/67",
    "properties": {
      "text": "            {{ [c7e91e25676434e4eb57c8dccc9a27243].[Plan_Format] }}"
    }
  },
  {
    "component": "Actual_CheckDate_Result",
    "id": "ce9bf323c10404cb198dbafb326dc450c",
    "path": "/_children/0/_children/1/_children/68",
    "properties": {
      "text": "                   {{ [c7e91e25676434e4eb57c8dccc9a27243].[Actual_CheckDate_Format] }}"
    }
  },
  {
    "component": "Finised1",
    "id": "cf8190fce8b7b48d6af64cb9de51e8fdd",
    "path": "/_children/0/_children/2/_children/0",
    "properties": {
      "text": "I. Finished Product : After incubated at  {{ [c7e91e25676434e4eb57c8dccc9a27243].[Temperature] }}    °C    {{ [c7e91e25676434e4eb57c8dccc9a27243].[dayFinished] }}   days"
    }
  },
  {
    "component": "Supervisor",
    "id": "cfe50fb02a8e94f429fd9ee3ef69ce0b3",
    "path": "/_children/0/_children/3/_children/5",
    "properties": {
      "text": "      {{ [cc182ebc8ee0a4105a6677c533c6a3ab1].[Supervisor_Name] }}"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c9c759af3343c43619c9fb1ae49458158",
    "path": "/_children/0/_children/3/_children/9",
    "properties": {
      "text": "\n[JavaScript binding]\nlet date = $(\"[cc182ebc8ee0a4105a6677c533c6a3ab1].[physical_date]\");\nif (!date) return \"\";\n\nlet d = new Date(date);\nif (isNaN(d.getTime())) return \"\";\n\nreturn \"             \"+d.toISOString().split('T')[0];\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "cd7c1195ce3b244b5af26b82e91b1ed9f",
    "path": "/_children/0/_children/3/_children/10",
    "properties": {
      "text": "\n[JavaScript binding]\nlet date = $(\"[cc182ebc8ee0a4105a6677c533c6a3ab1].[results_date]\");\nif (!date) return \"\";\n\nlet d = new Date(date);\nif (isNaN(d.getTime())) return \"\";\n\nreturn \"             \"+d.toISOString().split('T')[0];  \n[/JavaScript binding]\n"
    }
  },
  {
    "component": "PhysicalDate",
    "id": "c291e8764701c44da9de010ebfb40fe0e",
    "path": "/_children/0/_children/3/_children/11",
    "properties": {
      "text": "\n[JavaScript binding]\nlet date = $(\"[cc182ebc8ee0a4105a6677c533c6a3ab1].[Supervisor_Date]\");\nif (!date) return \"\";\n\nlet d = new Date(date);\nif (isNaN(d.getTime())) return \"\";\n\nreturn \"             \"+d.toISOString().split('T')[0];  \n[/JavaScript binding]\n"
    }
  },
  {
    "component": "Submit_Name",
    "id": "c70c1e31f69864c43a79f8d6865d840bd",
    "path": "/_children/0/_children/3/_children/15",
    "properties": {
      "text": "{{ [cc182ebc8ee0a4105a6677c533c6a3ab1].[SubmitBy_Name] }}"
    }
  },
  {
    "component": "Submit Date",
    "id": "c67f9e09cf5724019aa5d1fd2a067da41",
    "path": "/_children/0/_children/3/_children/16",
    "properties": {
      "text": "\n[JavaScript binding]\nlet date = $(\"[cc182ebc8ee0a4105a6677c533c6a3ab1].[submit_date]\");\nif (!date) return \"\";\n\nlet d = new Date(date);\nif (isNaN(d.getTime())) return \"\";\n\nreturn \"             \"+d.toISOString().split('T')[0];\n[/JavaScript binding]\n"
    }
  },
  {
    "component": "PhysicalName",
    "id": "cd42e2be593704a74b13f127f1a428899",
    "path": "/_children/0/_children/3/_children/17",
    "properties": {
      "text": "   {{ [cc182ebc8ee0a4105a6677c533c6a3ab1].[physical_Name] }}"
    }
  },
  {
    "component": "ResultsName",
    "id": "c52850876223e4bf3806853cef106f160",
    "path": "/_children/0/_children/3/_children/18",
    "properties": {
      "text": "{{ [cc182ebc8ee0a4105a6677c533c6a3ab1].[result_Name] }}"
    }
  },
  {
    "component": "Recieved Name",
    "id": "cf8b08bdd9ff347558d1f0bcf471d79f3",
    "path": "/_children/0/_children/3/_children/19",
    "properties": {
      "text": "    {{ [cc182ebc8ee0a4105a6677c533c6a3ab1].[Recevie_Name] }}"
    }
  },
  {
    "component": "Submit_Name",
    "id": "cd5771679e8014a79951dd583cb6b1a15",
    "path": "/_children/0/_children/3/_children/20",
    "properties": {
      "text": "\n[JavaScript binding]\nlet date = $(\"[cc182ebc8ee0a4105a6677c533c6a3ab1].[Recieved_date]\");\nif (!date) return \"\";\n\nlet d = new Date(date);\nif (isNaN(d.getTime())) return \"\";\n\nreturn \"             \"+d.toISOString().split('T')[0];  \n[/JavaScript binding]\n"
    }
  },
  {
    "component": "re1",
    "id": "c3435f9ac8c3f4aa19d0d169e3a43dd52",
    "path": "/_children/0/_children/3/_children/22",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_remark] }}"
    }
  },
  {
    "component": "re2",
    "id": "ce03d00ef0c214acc8d2ae72caa207a0f",
    "path": "/_children/0/_children/3/_children/23",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_2_remark] }}"
    }
  },
  {
    "component": "re3",
    "id": "c4c6ae2cf4ed44ca28ab803d8d0da8c35",
    "path": "/_children/0/_children/3/_children/24",
    "properties": {
      "text": "{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_no] }}.{{ [c7e91e25676434e4eb57c8dccc9a27243].[temp30_3_remark] }}"
    }
  }
]
```

</details>

## ขอบเขตเอกสาร

ข้อมูลจาก latest edited app ไม่ยืนยัน revision ของ published app. PUBLIC/BASIC เป็น screen access metadata; เงื่อนไข component อาจซ่อนปุ่มตาม state แต่ต้องตรวจ server authorization แยกก่อนเปลี่ยนสิทธิ์.
