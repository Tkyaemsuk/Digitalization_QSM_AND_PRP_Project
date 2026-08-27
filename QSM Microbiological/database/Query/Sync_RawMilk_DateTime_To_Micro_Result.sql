/* =========================================================
   MSSQL / SQL Server
   จุดประสงค์:
   1. รับค่า Action จาก Budibase
   2. ถ้า Action = 'load'
      - อัปเดต Date / Time ไปยัง Micro Sampling
      - อัปเดต Date / Time ไปยัง Sampling Result
   3. ถ้า Action ว่าง หรือ NULL
      - แสดงข้อมูลจาก Sampling RawMilk
   ========================================================= */

SET NOCOUNT ON;


/* =========================================================
   1. รับค่า Action จาก Budibase

   NULLIF ใช้แปลงค่าว่าง '' ให้เป็น NULL
   LTRIM/RTRIM ใช้ตัดช่องว่างหน้า-หลัง
   ========================================================= */

DECLARE @Actions NVARCHAR(50) =
    NULLIF(
        LTRIM(RTRIM('{{Action}}')),
        ''
    );


/* =========================================================
   2. Action = load
   ========================================================= */

IF @Actions = 'load'
BEGIN

    /* -----------------------------------------------------
       Update ตาราง Micro Sampling

       Mapping:
       Micro Sampling.SamplingID
       =
       Sampling RawMilk.SamplingID

       Date <- Sampling RawMilk.Date
       Time <- Sampling RawMilk.Plan
       ----------------------------------------------------- */

    UPDATE ms
    SET
        ms.[Date] = srm.[Date],
        ms.[Time] = srm.[Plan]
    FROM [Micro Sampling] AS ms

    INNER JOIN [Sampling RawMilk] AS srm
        ON srm.[SamplingID] = ms.[SamplingID];


    /* -----------------------------------------------------
       Update ตาราง Sampling Result

       Mapping:
       Sampling Result.SampID
       =
       Sampling RawMilk.SamplingID

       Date <- Sampling RawMilk.Date
       Time <- Sampling RawMilk.Plan
       ----------------------------------------------------- */

    UPDATE sr
    SET
        sr.[Date] = srm.[Date],
        sr.[Time] = srm.[Plan]
    FROM [Sampling_Result] AS sr

    INNER JOIN [Sampling RawMilk] AS srm
        ON srm.[SamplingID] = sr.[SampID];


    /* -----------------------------------------------------
       Return ผลลัพธ์หลัง Update
       เพื่อให้ Budibase รู้ว่า Query ทำงานเสร็จแล้ว
       ----------------------------------------------------- */

    SELECT
        'success' AS [Status],
        'Update completed' AS [Message];

END;


/* =========================================================
   3. ถ้า Action ว่าง / NULL

   แสดงรายการจาก Sampling RawMilk
   ========================================================= */

ELSE IF @Actions IS NULL
BEGIN

    SELECT
        NULL AS [Status],
        CONCAT(
            'Unknown Action',
            @Actions
        ) AS [Message];

END;


/* =========================================================
   4. กรณี Action เป็นค่าอื่น
   ========================================================= */

ELSE
BEGIN

    SELECT
        NULL AS [Status],
        CONCAT(
            'Unknown Action: ',
            @Actions
        ) AS [Message];

END;