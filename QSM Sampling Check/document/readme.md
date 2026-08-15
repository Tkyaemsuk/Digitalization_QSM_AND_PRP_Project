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