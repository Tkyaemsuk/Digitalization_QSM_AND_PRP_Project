QSM Sampling Check
===================================
    LINK APPS & Department
-> [Department] | [Application]
===================================
Filling (UHT3, UHT2, UHT1 ) -> QSM Sampling Check
===================================
    QSM Sampling Check [APP PATH]
===================================
FOLDER            |     URL
===================================
login             |     /login
menus             |     /menus
document          |     /document
create-sampling   |     /create-sampling
Sampling-tables   |     /Sampling-tables
record-data       |     /record-data/:sampid
report-production |     /report-production/sampling-data/:samp
sampling-sending  |     /sampling-sending
sampling-tracker  |     /sampling-tracker:sampid
===================================
        LOGIN DETAILS
===================================
หน้าแรกสำหรับการเข้าใช้งานระบบ โดยมีการกำหนดสิทธ์การใช้งาน โดยรหัสที้เข้าใช้จะมี [ uht1, uht2, uht3 ] โดย Username, Password จะเหมือนกัน
===================================
        menus DETAILS
===================================
หน้าเมนู้หลักของแอพพลิเคชั่น เมื่อผู้ใช้งานมีการ Login เข้่ามาจะมาเจอหน้าเมนู โดยจะแยกการเข้าใช้งานเป็น 2 ส่วนๆ หลักดังนี้
1.Low Acid 
2.High Acid
====================================
        LOW ACID SELECTED
====================================
เมื่อผู้ใช้งานกดที่ปุ่ม Create Sampling ( Low-Acid ) จะบบจะพาไปยังหน้า /create-sampling
เมื่อผู้ใช้งานกดที่ปุ่ม Production CheckList Sampling ( Low-Acid ) จะบบจะพาไปยังหน้า /Sampling-tables
====================================
        HIGH ACID SELECTED
====================================
เมื่อผู้ใช้งานกดที่ปุ่ม Create Sampling ( High-Acid ) จะบบจะพาไปยังหน้า /create-sampling
เมื่อผู้ใช้งานกดที่ปุ่ม Production CheckList Sampling ( High-Acid ) จะบบจะพาไปยังหน้า /Sampling-tables
===================================
    create-sampling DETAILS
===================================
หน้าที่ใช้สำหรับสร้าง Sampling และ QRCODE สำหรับการเก็บตัวอย่างนมเป็นขั้นตอนแรกในส่วนของทาง Production เป็นคนสร้างขึ้นใช้สำหรับบันทึกข้อมูลตามช่วงเวลาของแต่ละกะ โดยในหน้านี้จะมีช่องให้กรอกข้อมูลทั้งมด 9 ช่อง ตามลำดับ
1.FillingDate // วันที่ผลิตสินค้า
2.ExpiredDate // วันหมดอายุของสินค้า
3.Product   // ชื่อสินค้าที่ผลิตใน List [D-malt, D-Whitemalt, UHT-Mik, Other]
4.Products  // ชื่อสินค้าที่นอกเหนือจาก List ที่มีให้ ช่องนี้จะแสดงต่อเมื่อ Product มีค่าด้านในเป็น [Other] เท่านั้น
5.Flavour  // รสชาติ, กลิ่น ที่ผลิตของสินค้านั้นๆ
6.Department // ชื่อแผนกที่เป็นคนสร้าง Sampling ใช้การเลือกแบบ [ Dropdown ]
7.Machine // เครื่องที่ผลิตโดยใช้การเลือกแบบ [ Dropdown ] โดยข้อมูลของ Machine จะเชื่อมต่อมาจาก Data Provider [ Query Get All Machine ]
8.Size // ขนาดของผลิตภัณท์ของสินค้าจะลิ้งก์จาก Database ของ Machine โดยใช้การเลือกแบบ [ Dropdown ]
9.SamplingID // เลขรหัส Sampling โดยการเจน Qr-Sampling จะใช้หลักการคือ [ชื่อแผนก-วันที่ผลิต-ลำดับแผนก,ลำดับเครื่องที่ผลิต-ลำดับต่อวัน] == [QSM-07012026-06014-01] โดยลำต่อวันเมื่อสร้างรอบแรกจะเริ่มต้นที่ 01 ไปเรื่อย หากเป็นวันใหม่ ระบบจะ reset เริ่มนับ 01 ใหม่อีกครั้ง
===================================
    sampling-tables Details
===================================
หน้าตารางรวม Sampling ของแต่ละแผนก ในหน้านี้จะแสดงข้อมูลทั้งหมดของ Sampling โดยในตารางจะแสดงข้อมูล
1.รหัส Sampling
2.วันที่ผลิต // FillingDate 
3.ชื่อสินค้า // Product
4.ชื่อเครื่อง // Machine
5.จำนวน Brik ของอุณหภูมิ 30 องคา // Quanity (30°C)
6.จำนวน Brik ของอุณหภูมิ 55 องคา // Quanity (55°C)
7.Record Data [ Button ] // ปุ่มสำหรับเข้าหน้าบันทึกของมูลของการเก็บตัวอย่างนมของแต่ละ brik จะส่งไปที่หน้าของ /record-data/:sampid [:sampid] จะใช้การดึงรหัส Sampling ในตารางของตัวนั้นๆ เพื่อใช้ส่งข้อมูลไปยังหน้า /record-data
8.Document [ Button ] // ปุ่มสำหรับเปิดหน้าเอกสารในแต่ของละ Sampling นั้นโดยจะส่งไปที่หน้าของ /document
===================================
    Record-Data Details
===================================
เมื่อผู้ใช้งานกดปุ่ม Record data มาแล้ว URL PATH จะรับข้อมูล :sampid มาด้วยเช่น [/record-data/QSM-07012026-06014-01] เป็นต้น
เมื่อเข้ามาแล้ว Data Provider จะรับค่า SampID จาก url เพื่อไปค้นหาข้อมูลที่มีอยู่ในระบบว่ามี SamplingID ที่รับมาหรือไม่ ถ้ามีอยู่ในระบบจะแสดงข้อมูลกรอกข้อมูลตัวอย่างนม
เป็น 2 อุณหภูมื จะเริ่มจาก อุณหภูมิ 30 องศาขึ้นก่อน ตามด้วย อุณหภูมิของ 55 องศา ดังนี้
==================================   
    [ Record Data || UI ]
   -*-*-*-*-*-*-*-*-*-*-*-*-
===================================
SamplingID: QSM-07012026-06014-01
Temperature:30°C
===================================
No      Code/Time              Status           Amount      [Save || ปุ่มบันทึกข้อมูล]
ลำดับ, เวลาที่เก็บตัวอย่าง, สถานะ[ Start, Stop, Hr.],  จำนวน
===================================
    [ Record Data || UI ]
   -*-*-*-*-*-*-*-*-*-*-*-*-
===================================
SamplingID: QSM-07012026-06014-01
Temperature:55°C
===================================
No      Code/Time              Status          [Save || ปุ่มบันทึกข้อมูล]
ลำดับ, เวลาที่เก็บตัวอย่าง, สถานะ[ Start, Stop, Hr.]
===================================
โดยที่ No ของแต่ละอุณหภูมิจะใช้ Query ในการตรวจเช็คว่าถ้า SamplingID นี้มีกล่องนมที่บันทึกไว้ไหม ถ้ามีการเก็บข้อมูลอยู่ล่าสุด 10 กล่องระบบจะนับกล่องใหม่โดยจะรันเลขเป็นลำดับที่ 11 เมื่อกรอกข้อมูลเสร็จ ระบบจะเปลี่ยนเลข Brik เป็นกล่องที่ 12 อัตโนมัติ แต่ถ้า SamplingID นั้น ไม่มีการบันทึกข้อมูลทิ้งไว้ระบบจะรันเลขลำดับที่ 1 ให้ทันที และ เมื่อกดบันทึกข้อมูลหมดในกะของตัวเองให้กดปุ่ม Send Sampling
==================================
        Sending Sampling
==================================
หลังจากที่ผู้ใช้งานกด Send Sampling มาแล้วระบบจะมาพามาทีหน้าเหมือนกับหน้า /create-sampling แต่หน้านี้จะไม่สามารถแก้ไขข้อมูลได้ ระบบจะดึงข้อมูลของ Sampling มาให้ดูอีกครั้ง พร้อมรายงานข้อมูลนมที่มีอยู่ใน Sampling แต่อุณหภูมิว่ามีอยู่เท่าไร จากนั้น เมื่อผู้ใช้งานดูตรวจสอบจนแน่ใจแล้ว จะมีช่อง Shift_1 หรือคือ ช่องสำหรับกรอกรหัสพนักงานที่เข้ากะ ของแต่ละกะ โดยระบบจนวนลูปทั้งหมด 4 รอบ เมื่อกะแรกมีการกรอกข้อมูลพนักงานแล้ว ช่องกรอกข้อมูล Shift_2, 3, 4 จะแสดงขึ้นมาตามลำดับ เมื่อพนักงานทำครบหมดแล้ว และต้องการปิดการลงข้อมูลใน Sampling ให้กดปุ่ม [End of Product Sampling] ระบบจะทำการล็อก Sampling ซึ่งจะทำให้ไม่สามารถบันทึกข้อมูลลงไปใน Sampling ได้อีก
===================================
            Document
===================================
หลังจากที่ผู้ใช้งานกด Document มาแล้วระบบจะมาพามาทีหน้า /Document โดยหน้านี้จะลิ้งก์ SamplingID จาก Update State โดยจะเก็บค่า SamplingID ไว้ด้านใน
โดยหน้า Document จะมีเมนูให้เลือกทั้งหมด 3 รายการ ดังนี้
1.Sampling Status [ หน้าติดตามสถานะ ]
2.Report Production [ หน้ารายงานเอกสาร สำหรับปริ้น ]
3.Production CheckList Sampling [ หน้าสำหรับกลับไปที่ตาราง /sampling-tables ]
===================================
        Sampling Status
===================================
หลัจากที่ผู้ใช้งานกดปุ่ม Sampling Status เข้ามาระบบจะตรวจสอบ SamplingID ในระบบว่ามีหรือไม่ถ้า มีจะแสดงหน้าติดตามสถานะของ Sampling นั้นโดยจะมี
- Sampling Details
    - SamplingID รหัส SamplingID
    - Department ชื่อแผนกที่สร้าง
    - Machine ชื่อเครื่องที่ผลิต
    - Create By ชื่อผู้สร้าง
    - Create AT วันที่สร้าง
- Product Detail
    - Product ชื่อสินค้า
    - Flavour รสชาติ, กลิ่น ของสินค้า
    - Size  ขนาดของสินค้า
    - FillingDate วันที่ผลิต
    - ExpiredDate วันหมดอายุ
    - Temperature 30°C จำนวนนมของอุณหภูมิ 30°C
    - Temperature 55°C จำนวนนมของอุณหภูมิ 55°C
ด้านล่างจะเป็นส่วนของ Activity Center
จะมีด้วยกันทั้งหมด 10 Step
Step 1 [ Create in Process ]
Step 2 [ Work in Process ]
Step 3 [ Sending Detail ]
    - Product ชื่อสินค้า
    - Flavour รสชาติ, กลิ่น ของสินค้า
    - Size  ขนาดของสินค้า
    - FillingDate วันที่ผลิต
    - ExpiredDate วันหมดอายุ
    - Shift1 Send By [ ชื่อผู้บันทึกนมของกะที่ 1 ]
    - Shift2 Send By [ ชื่อผู้บันทึกนมของกะที่ 2 ]
    - Shift3 Send By [ ชื่อผู้บันทึกนมของกะที่ 3 ]
    - Shift4 Send By [ ชื่อผู้บันทึกนมของกะที่ 4 ]
Step 4 [ Waiting For Receive ]
Step 5 [ Receive Details ]
    - Product ชื่อสินค้า
    - Plan Check วันที่นมของอุณหภูมิ 30°C
    - Plan Check55 วันที่นมของอุณหภูมิ 55°C
    - Example Condition
    - Indication
    - Packaging
    - Amount of Sampling [ จำนวนนมรวมทั้งหมดของ Sampling ]
    - Send By: [ผู้รับนมจาก Production]
    - Recevie By: [ผู้รับนมจาก Staff ของ QA]
Step 6 [Wating For Result]
Step 7 [Wating For Physical]
Step 8 [SuperVisor Approve]
Step 9 [Finish Sampling]
===================================
        Report Production
===================================
หลังจากที่ผู้ใช้งานกดปุ่ม Report Production ระบบจะมายังหน้าเอกสารที่แสดงข้อมูลทั้งหมดของ Sampling โดยจะมีข้อมูลที่แสดงผลดังนี้
1.รหัส Sampling
2.วันที่ผลิต // FillingDate 
3.ชื่อสินค้า // Product
4.ชื่อเครื่อง // Machine
5.จำนวน Brik ของอุณหภูมิ 30 องคา // Quanity (30°C)
6.จำนวน Brik ของอุณหภูมิ 55 องคา // Quanity (55°C).
7.ลำดับนมแต่ Brik
8.เวลาที่เก็บตัวอย่างนมแต่ Brik
9.สถานะนมแต่ Brik [Start, Stop, Hr.]
10.ด้านบนจะเป็นของอุณหภูมิ 30 องคา
11.ด้านบนจะเป็นของอุณหภูมิ 55 องคา
===================================
        Menus Page UI
===================================
            LOGO
        Production Menu
===================================
    Create Sampling [Low-Acid]
    Production CheckList Sampling [Low-Acid]
    Create Sampling [High-Acid]
    Production CheckList Sampling [High-Acid]
====================================