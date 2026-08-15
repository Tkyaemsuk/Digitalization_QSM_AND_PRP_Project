QSM Sampling Check
===================================
    LINK APPS & Department
-> [Department] | [Application]
===================================
Filling (UHT3, UHT2, UHT1 ) -> QSM Sampling Check
===================================
    QSM Sampling Check [Database]
===================================
[ Low Acid ]
- Sampling --> ตารางสำหรับเก็บข้อมูล Sampling
- Machine --> ตารางเก็บข้อมูลเครื่องผลิต
- Machine_size --> ตารางเก็บข้อมูลเครื่องผลิต แต่ละไซล์, แต่ละแผนก
- tb_app1_login --> ตารางสำหรับการ Login
- temperature_30 --> ตารางเก็บข้อมูลการบันทึก Brik อุณหภุมิ 30
- temperature_55 --> ตารางเก็บข้อมูลการบันทึก Brik อุณหภุมิ 55
===================================
            QUERY SQL
===================================
1.CREATE Sampling || บันทึกข้อมูลการสร้าง Sampling ลงใน ตาราง Sampling

2.CallBack Sampling || ดึงข้อมูลจากตาราง Sampling, Machine, Machine_size, temperature_30, temperature_55 มาแสดงผล
โดยมีการแปลงวันที่เป็นเวลาไทยตอนใช้งาน Repeater และ ดึงข้อมูลไซล์ที่ผลิต, ชื่อเครื่องจักร, ชื่อแผนก, จำนวนกล่องของแต่ละอุณหภูมิ

3.CallProduct30 || นับการเช็คกล่องนมแต่ละกล่องว่ามีการตรวจ Colour, หรือไม่ จากตาราง temperature_30

4.ColorCode || อัพเดทข้อมูลการเช็คกล่องนม เมื่อมีการเช็ค query จะไปอัพเดทค่าสีของตาราง temperature_30 ในคอลัมน์ ColourCode เป็น 1 เมื่อ ATP PASS แล้วเมื่อมีการตรวจค่า Colour, Smell จะอัพเดทค่า ColourCode เป็น 2 โดยจะอัพเดทตาม id ของ brik ที่ตรวจตาม Sampling นั้น

5.LOGIN_API || ดึงข้อมูลมาตรวจสอบากตาราง tb_app1_login ว่ามีข้อมูลตรงกับที่ผู้ใช้งานกรอกเข้ามาหรือไม่? ถ้ามีข้อมูลจะส่งค่า array กลับไป

6.Product_Insert || ดึงข้อมูล no จากตาราง temperature_30 และ temperature_55 มาเพื่อตรวจสอบว่าใน Sampling ที่ตรงกันมีจำนวน Brik ของนมอยู่ที่เท่าไร ถ้ามี SamplingID แต่ไม่มีการเพิ่มข้อมูลกล่องนมมา จะแสดงค่ากลับไปเป็น 1 หมายความว่าเป็นกล่องแรก หากมีกล่องนมที่เพิ่มมาอยู่แล้ว เช่น ที่เพิ่มมาล่าสุดอยู่ในกล่องที่ 5 query จะส่งค่ากลับไปเป็น 6 เป็นการนับต่อจากกล่องเดิมที่มีอยู่

7.Sampling_Table || ดึงข้อมูลจากตาราง Sampling, Machine, temperature_30, temperature_55 มาแสดงผลเฉพาะข้อมูลที่ต้องการส่งไปยัง data เพื่อให้ Table สามารถดึงข้อมาโชว์โดยที่ไม่ต้องเขียน javascript ในแปลงเลขของ machine, department แล้วดึงข้อมูล Brik ล่าสุดจากตาราง temperature_30, temperature_55 มาแสดงใน table

8.Summary || เป็นการนับข้อมูล id ทั้งหมดที่มีอยู่ในตาราง temperature_30, temperature_55 มาแสดงผลดังนี้ 1.[อุณหภูมิ 30 || count30 ] 2.[อุณหภูมิ 55 || count55 ]

9.Sup_Production_Update || อัพเดทข้อมูล FillingDate, ExpiredDate และ production_update_uid จากตาราง Sampling โดยอัพเดทเฉพาะ SamplingID ที่ตรงกับที่เลือกไว้เท่านั้น

10.Update Sampling || อัพเดทข้อมูล SendBy, SendBy2, SendBy3, Send4, Locked_Production จากตาราง Sampling โดยอัพเดทเฉพาะ SamplingID ที่ตรงกับที่เลือกไว้เท่านั้น โดยความหมายของตัวแปร SendBy1 - 4 คือรหัสพนักงานของ Production ที่เข้ามาเพิ่มข้อมูลในแต่ละรอบ ส่วน Locked_Production เป็นคอลัมน์สำหรับการล็อคการเพิ่มข้อมูลของ Sampling ถ้า Locked_Production มีค่าเป็น 0 จะสามารถเข้าไปเพิ่มข้อมูลของนมแต่ละ Brik ใน Sampling นั้นได้ แต่ถ้ามีค่าเป็น 1 จะไม่สามารถเข้าไปลงข้อมูลใน Sampling นั้นได้อีก

11.GetList_ID || ดึงข้อมูล SamplingID ที่สร้างล่าสุดตาม id เพื่อนำไว้ใช้สำหรับการสร้าง SamplingID
===================================