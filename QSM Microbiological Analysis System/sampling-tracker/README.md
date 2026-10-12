# Screen: /sampling-tracker/:sampid

อ่าน CallBack Sampling แสดงสถานะ/ข้อมูลติดตามของ sampling และมีปุ่ม Supervisor ไป supervisor-report ของรายการนั้น พร้อมกลับ sampling-tables.

[หน้าหลัก](../README.md) · [Database](../database/README.md) · [Query](../database/Query/README.md) · [Integration](../integration/README.md)

## Configuration

- Screen ID: `screen_64aded5e9993432dab1d0e3dc2f62389`
- Route: `/sampling-tracker/:sampid`
- Access: `PUBLIC`
- Home: `False`
- Width: `Large`
- Components: 122

## Query dependencies

- [CallBack Sampling](<../database/Query/CallBack Sampling.sql>)

## Components

| Type | Count |
|---|---|
| heading | 41 |
| text | 23 |
| container | 20 |
| icon | 20 |
| divider | 12 |
| button | 2 |
| dataprovider | 1 |
| repeater | 1 |
| image | 1 |
| bb-qr-generator | 1 |

## Fields

| Component | Field | Label/Placeholder | Required |
|---|---|---|---|

## Events และลำดับ actions

เรียงตาม config รวม Continue/Stop, state และ bindings. ชื่อ component ซ้ำอาจเป็นคนละชุด UI; path ใช้ระบุตำแหน่งใน screen props.

### New Button — onClick

Config path: `/_children/0/_children/0/_children/0/_children/1/_children/2/_children/7`

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
      "url": "/sampling-tables"
    },
    "##eventHandlerType": "Navigate To",
    "id": "RwIwHiA1z"
  }
]
```

</details>

### Supervisor — onClick

Config path: `/_children/0/_children/0/_children/0/_children/2/_children/10/_children/6`

| # | Action | รายละเอียด |
|---|---|---|
| 1 | Navigate To | url=/supervisor-report/{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SamplingID] }}; type=screen |

<details><summary>Parameters / conditions / decoded JavaScript</summary>

```json
[
  {
    "parameters": {
      "externalNewTab": null,
      "type": "screen",
      "url": "/supervisor-report/{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SamplingID] }}"
    },
    "##eventHandlerType": "Navigate To",
    "id": "rslMAmRPj"
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
    "component": "Sampling",
    "path": "/_children/0",
    "dataSource": {
      "label": "CallBack Sampling",
      "name": "CallBack Sampling",
      "_id": "query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98",
      "type": "query",
      "queryParams": {
        "SamplingID": "{{ [url].[sampid] }}"
      },
      "currentQueryName": "CallBack Sampling",
      "embeddedSqlDiffersFromCurrentQuery": true
    },
    "filter": null,
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
    "component": "Sampling Repeater",
    "id": "cc92cfd77854c4580bb6d2bd86e17c014",
    "path": "/_children/0/_children/0",
    "properties": {
      "dataProvider": "{{ literal [c1e2e6a261d9c4e3c8890fe5703a9b6ce] }}"
    }
  },
  {
    "component": "SamplingID",
    "id": "cb6315fb46d1248339df2afb01dc5cb6c",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/2",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SamplingID] }}"
    }
  },
  {
    "component": "Department",
    "id": "c0beafc9ab26348dc9049fda7d45adeb3",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/4",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[DEP] }}"
    }
  },
  {
    "component": "Machine",
    "id": "c5a0fd5f3907a4e8289a8c24b762e93b7",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/6",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Machine_Name] }}"
    }
  },
  {
    "component": "CreateBy",
    "id": "c25f586f3a92a4e28bb6de87e9c840d85",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/8",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Send_Name] }}"
    }
  },
  {
    "component": "CreateDate",
    "id": "c8d011129f60749ae9018acaa71e35048",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/0/_children/10",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Time] }} น."
    }
  },
  {
    "component": "Product",
    "id": "c0c5b8e37693142e0953d2c33dab9e9e4",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/2",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Product] }}"
    }
  },
  {
    "component": "Product Size",
    "id": "cd39c37cdc3894438925c02b1a24eba3a",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/4",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Size] }}"
    }
  },
  {
    "component": "FillingDate",
    "id": "c55770bb4d9db47a1b3aa32dc32159eb5",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/6",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Filling_Format] }}"
    }
  },
  {
    "component": "Expired Date",
    "id": "c6de27b3f921041b7a64b40a8a6b694d9",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/1/_children/8",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Expired_Format] }}"
    }
  },
  {
    "component": "Product 30C",
    "id": "c4947d96fc8644667b203f280be3bd1b6",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/2",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Quanity] }}"
    }
  },
  {
    "component": "Product 55C",
    "id": "cef764a948f2c4d41bc433f0ac7d3c430",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/2/_children/6",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Quanity2] }}"
    }
  },
  {
    "component": "New bb-qr-generator",
    "id": "c64d55a8b446e41b19d2a884d84796349",
    "path": "/_children/0/_children/0/_children/0/_children/1/_children/3/_children/0",
    "properties": {
      "url": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SamplingID] }}"
    }
  },
  {
    "component": "CKBox",
    "id": "cd1e79bbe87fe44a397528751b4c19bb5",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SendBY] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "ce4a97f2ebd334840a99f7fe7fb766457",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/2/_children/1",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "CKBox",
    "id": "c3481175b7a614943bae7ba9a21c46c8b",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Quanity] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "cfc9e74006fe8413d875f725b38cef652",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/3/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Quanity] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "CKBox",
    "id": "cad3e26eabaf84ea7b04afb1c2adcd3ff",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SendBY] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "cd1660c6a43bb4aef9df713b22456ce53",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SendBY] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "New Paragraph",
    "id": "ce048d38b67664829a836ce427bfd2ee5",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/8",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Send_Name] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "cf7d1ad38161b450b845656221c0baaf6",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/9",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Send_Name2] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "cff3c14720488434ca8de011168872ce0",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/10",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Send_Name3] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "caafc843ecf97487fb4464a7b77058d1c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/4/_children/11",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Send_Name4] }}"
    }
  },
  {
    "component": "CKBox",
    "id": "c2e68b1bf6a68460baee272e72a843b0a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/5/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "cfa22b09b93d54bce8d4aec0fdd37e91e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/5/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "CKBox",
    "id": "c1571e04414364f8ea4d266a00c42bcd9",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "c9abece03227c4b71933f0653d48777fb",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "New Paragraph",
    "id": "c881b7435f9ec4dbca4c65b808e81706a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/5",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Product] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "c716ed1bb45c44293974be95f6a7a185a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/7",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Plan_Format] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "c95941c57b3ee42969bd8b193a8b1ed9d",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/11",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Plan55_Format] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "c7ca8c113988647f0bfc5f7285b8d6fea",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/12",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Recevie_Name] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "cf6d7a8b3462d4784af189356a89efc1a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/6/_children/13",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Recieved_Format] }}"
    }
  },
  {
    "component": "CKBox",
    "id": "c967b77c0215b48c8adf5a4d056070163",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/7/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "c5a7da5f7d95a4121aecfc9dc85ea5ae4",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/7/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[RecevieBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Step 7",
    "id": "c37f9bc8937ba471da75f88a43d8c140c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8",
    "properties": {
      "_conditions": []
    }
  },
  {
    "component": "CKBox",
    "id": "c3bfd5563b2c84006ac2e97c6da0dfb8a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[PH] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "cd07b3ee89ac64f1292c56eb4ff264c13",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[PH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "New Paragraph",
    "id": "c297ebf4a63db4df5982a1c14f2f1e43a",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8/_children/6",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[result_Name] }}"
    }
  },
  {
    "component": "New Paragraph",
    "id": "cd8938536317f4aa4b8a6f550c3b94a4f",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/8/_children/7",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[results_Name] }}"
    }
  },
  {
    "component": "CKBox",
    "id": "c5aa3b069a352406d8bf653abe22eb11f",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/9/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[PH] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "c0409d1a1fc674237b846894d6b1ebbc5",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/9/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[PH] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "CKBox",
    "id": "c3e626ad2eaba46d4ab0d4f4723573df8",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/10/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "c2bb9c73addeb442a8939e5546144c1e1",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/10/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "New Paragraph",
    "id": "c1d1ad394802746dd87b011d4abb7878e",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/10/_children/4",
    "properties": {
      "text": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[Supervisor_Name] }}",
      "_conditions": [
        {
          "valueType": "string",
          "id": "4nPtaTQEH",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "New Headline",
    "id": "c409dc4f086db41749498325062b8e675",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/10/_children/5",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "v2izxad2V",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "Supervisor",
    "id": "cfc2464be6a28424e9035d6d077158abd",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/10/_children/6",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "lcVqeILmK",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "noValue": true,
          "referenceValue": null
        }
      ]
    }
  },
  {
    "component": "CKBox",
    "id": "c32cab2a7921240089ec49b4071b6889c",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/11/_children/0",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "Pdr3oq4Hw",
          "action": "show",
          "operator": "empty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
          "referenceValue": null,
          "noValue": true
        }
      ]
    }
  },
  {
    "component": "CKBox_Passed",
    "id": "cd3c0de307c1045b089abf47d8763e630",
    "path": "/_children/0/_children/0/_children/0/_children/2/_children/11/_children/1",
    "properties": {
      "_conditions": [
        {
          "valueType": "string",
          "id": "qnKPT11Wn",
          "action": "show",
          "operator": "notEmpty",
          "newValue": "{{ [cc92cfd77854c4580bb6d2bd86e17c014].[SupervisorBy] }}",
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
