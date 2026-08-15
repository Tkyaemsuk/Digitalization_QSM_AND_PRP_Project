---------------
SQL & JS
---------------
ขั้นตอนการสร้าง SamplingID 
---------------
1.เมื่อเข้ามาในหน้า /create-sampling จะมีการใช้ Data Provider ( Query Data )ซึ่งจะเรียกใช้งาน query ที่มีชื่อว่า GetList_ID เพื่อดึงข้อมูล ID ล่าสุดมาไว้
---------------
2.ใช้ data provider ( Machine ) เลือก data มาจาก table machine จากนั้นตั้ง Filterning เป็น any โดยกำหนดว่าถ้าข้อมูลในคอลัมน์ */ DEP, DEP2 /* ของ table machine มีค่าตรงกับ */ {{ State.users.user }} /* หรือ */ ชื่อผู้ใช้งาน /* จะแสดงข้อมูลรายชื่อเครื่องในเลือกที่รงกับ แผนกนั้นๆ
---------------
3.ใช้ data provider ( Size ) เลือก data มาจาก table machine_size จากนั้นตั้ง Filterning เป็น any โดยกำหนดว่าถ้าข้อมูลในคอลัมน์ no ของ table machine_size มีค่าตรงกับ */ {{Machine.Value}} /* หรือ */ ช่องกรอกข้อมูลของฟอร์ม /* จะแสดงข้อมูลไซล์ที่ตรงกับเครื่องจักรนั้นให้เลือก
---------------
4.ช่อง FillingDate จะมีการใช้ Javascript ดังนี้
<!-- กำหนดตัวแปร D เก็บข้อมูลวันที่และเวลา ณ เวลานั้น -->
const d = new Date();
<!-- กำหนดตัวแปร date เพื่อแยกข้อมูลเฉพาะ Y-M-D -->
const date = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2,'0')}-${String(d.getDate()).padStart(2,'0')}`; 
<!-- กำหนดตัวแปร time เพื่อแยกข้อมูลเฉพาะ H:M:S -->
const time = `${String(d.getHours()).padStart(2,'0')}:${String(d.getMinutes()).padStart(2,'0')}:${String(d.getSeconds()).padStart(2,'0')}`;
<!-- กำหนดตัวแปร dateTime เพื่อรวมข้อมูลของ date และ time มารวมกัน-->
const dateTime = `${date} ${time}`;
<!-- ส่งค่าของวันที่และเวลา กลับไป -->
return dateTime;
---------------
5.ช่อง Product เป็น option โดยมีการตั้งค่า Options Source เป็น custom และ Custom options เป็น Define Options โดยมีตัวเลือกดังนี้
1.D-Malt
2.DNA
3.UHT Milk
4.OTHER
5.D-White Malt
หากผู้ใช้งานเลือกเป็น OTHER จะมี input text fied ของ Products ขึ้นมาให้กรอก Product เอง หากเลือกเป็นส่วนอื่นที่ไม่ได้เป็น OTHER จะไม่มี input Text fied ขึ้นมาให้ โดยมีการกำหนด Onchange ของช่อง โดยการใช้ Update Field Value กำหนด Form: Sampling Forms
Type: set value
Field: Flavour
Value: 
<!-- กำหนดตัวแปร product เก็บ Value ที่เลือกไว้ -->
    let product = $("Field Value");
<!-- เงื่อนไขถ้า product มีค่า = OTHER ให้ส่งค่าว่าง -->
    if(product == "OTHER") {
    return "";
<!-- แต่ถ้าไม่ใช่ให้ส่งค่าที่เก็บไว้ใน Value ไป -->
    } else {
    return product;
    }
---------------
6.ช่อง Flavour จะมีข้อมูลเข้ามาอัตโนมัติเมื่อช่อง Product มีการเลือกข้อมูลตามที่กำหนดไว้ใน javascript ยกเว้น Product มีค่าเป็น OHTER จะเป็นค่าว่างเปล่า ซึงผู้ใช้งานต้องกรอกข้อมูลเอง 
----------------
7.ช่อง Department เป็นการใช้ option กำหนด options source เป็น custom คือการให้ผู้พัฒนาสามารถเข้าไปเพิ่มข้อมูลเอง จากนั้นจะมีการใช้ javascript ใน function on change จะมีการเรียกใช้ update state กำหนด type: set value key: machine value: {{ Field Value}} || */ ช่องกรอกข้อมูลของฟอร์ม /* และเลือกใช้งาน update Field Value: โดยกำหนด Form: Sampling Forms, Type: Set value, Field: SamplingID Value: javascript {
<!-- สร้างตัวแปร dep และ line เก็บข้อมูลจาก update state ของ department และ machine -->
let dep = $("State.department") || "";
let line = $("State.machine") || "";

<!-- กำหนดตัวแปร d เพื่อดึงข้อมูลวันที่ -->
const d = new Date();

<!-- กำหนดตัวแปร today เป็นการแยก D-M-Y -->
const today =
  `${d.getFullYear()}${String(d.getMonth() + 1).padStart(2, '0')}${String(d.getDate()).padStart(2, '0')}`;

<!-- กำหนดตัวแปร rows ดึงข้อมูลจาก Dat Provider-->
const rows = $("Query Data.Rows") || [];

<!-- กำหนดตัวแปร last เพื่อเข้าถึงข้อมูล SamplingID -->
let last = rows[0]?.SamplingID || "";

<!-- กำหนดตัวแปร run เก็บค่าเป็น 1 -->
let run = 1;

<!-- ตรวจสอบว่าตัวแปร Last มีข้อมูลของ SamplingID หรือไม่? -->
if (last) {

<!-- กำหนดตัวแปร parts แปลงข้อมูล SamplingID เป็น String แล้วตัดช่องว่างและข้อความที่เป็น - ทิ้ง -->
  const parts = String(last).trim().split("-");

<!-- โดยรูปของการตัดจะได้เป็น 4 ส่วน ดังนี้ -->
  // parts:
  // [0] = QSM
  // [1] = 20260522
  // [2] = 0101
  // [3] = 12

<!-- กำหนดตัวแปร lastDate เอาข้อมูลเฉพาะวันที่ -->
  const lastDate = parts?.[1] || "";
  <!-- กำหนดตัวแปร lastRun เอาข้อมูลเฉพาะลำดับ หากไม่มีลำดับจะส่งค่าไปเป็น 0 -->
  const lastRun = parseInt(parts?.[3] || "0", 10);

  <!-- // ถ้าเป็นวันเดียวกัน ค่อย +1 -->
  if (lastDate === today) {
    run = lastRun + 1;
  } else {
    run = 1;
  }
}

<!-- กำหนดตัวแปร newID เป็นการสร้าง SamplingID โดยจะนำข้อมูลชื่อตัวแปรมาต่อกัน -->
const newID =
  `QSM-${today}-${dep}${line}-${String(run).padStart(2, '0')}`;
<!-- ส่งช้อมูล NewID กลับไปเพื่อใช้ในการสร้าง ID ต่อไป -->
return newID;
}
-----------------
8.ช่อง Machine เป็นการใช้ option กำหนด options source เป็น Data Provider และ Options Provider กำหนดเป็น data provider ( Machine ) ส่วนของ Label Column กำหนดเป็น machine และ Value column กำหนดเป็น no จากนั้นจะมีการใช้ javascript ใน function on change จะมีการเรียกใช้ update state กำหนด type: set value key: machine value: {{ Field Value}} || */ ช่องกรอกข้อมูลของฟอร์ม /* และเลือกใช้งาน update Field Value: โดยกำหนด Form: Sampling Forms, Type: Set value, Field: SamplingID Value: javascript {
<!-- สร้างตัวแปร dep และ line เก็บข้อมูลจาก update state ของ department และ machine -->
let dep = $("State.department") || "";
let line = $("State.machine") || "";

<!-- กำหนดตัวแปร d เพื่อดึงข้อมูลวันที่ -->
const d = new Date();

<!-- กำหนดตัวแปร today เป็นการแยก D-M-Y -->
const today =
  `${d.getFullYear()}${String(d.getMonth() + 1).padStart(2, '0')}${String(d.getDate()).padStart(2, '0')}`;

<!-- กำหนดตัวแปร rows ดึงข้อมูลจาก Dat Provider-->
const rows = $("Query Data.Rows") || [];

<!-- กำหนดตัวแปร last เพื่อเข้าถึงข้อมูล SamplingID -->
let last = rows[0]?.SamplingID || "";

<!-- กำหนดตัวแปร run เก็บค่าเป็น 1 -->
let run = 1;

<!-- ตรวจสอบว่าตัวแปร Last มีข้อมูลของ SamplingID หรือไม่? -->
if (last) {

<!-- กำหนดตัวแปร parts แปลงข้อมูล SamplingID เป็น String แล้วตัดช่องว่างและข้อความที่เป็น - ทิ้ง -->
  const parts = String(last).trim().split("-");

<!-- โดยรูปของการตัดจะได้เป็น 4 ส่วน ดังนี้ -->
  // parts:
  // [0] = QSM
  // [1] = 20260522
  // [2] = 0101
  // [3] = 12

<!-- กำหนดตัวแปร lastDate เอาข้อมูลเฉพาะวันที่ -->
  const lastDate = parts?.[1] || "";
  <!-- กำหนดตัวแปร lastRun เอาข้อมูลเฉพาะลำดับ หากไม่มีลำดับจะส่งค่าไปเป็น 0 -->
  const lastRun = parseInt(parts?.[3] || "0", 10);

  <!-- // ถ้าเป็นวันเดียวกัน ค่อย +1 -->
  if (lastDate === today) {
    run = lastRun + 1;
  } else {
    run = 1;
  }
}

<!-- กำหนดตัวแปร newID เป็นการสร้าง SamplingID โดยจะนำข้อมูลชื่อตัวแปรมาต่อกัน -->
const newID =
  `QSM-${today}-${dep}${line}-${String(run).padStart(2, '0')}`;
<!-- ส่งช้อมูล NewID กลับไปเพื่อใช้ในการสร้าง ID ต่อไป -->
return newID;
}
-----------------
9.ช่อง Size จะกำหนด option source เป็น data provider และกำหนด option provider เป็น Size และ Label Colmn, Value Colmun เป็น size
-----------------
10.ช่อง SamplingID ขะกำหนดเป็น Read Only
-----------------
11.ป่ม Create Sampling