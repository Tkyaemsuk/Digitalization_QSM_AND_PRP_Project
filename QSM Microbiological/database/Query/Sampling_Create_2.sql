/*
Application: QSM Microbiological
Query name: Sampling_Create_2
File: Sampling_Create_2.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a1d610ddd2f74991a1b6be72402a6d7f
Budibase function: create
Bindings: Remark, Product, Flavour, DataType, Department, Page
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   Create Micro From Pending - ไม่ผูกกับ Queue_ID
   ---------------------------------------------------------
   สิ่งที่เปลี่ยนจากเวอร์ชันเดิม:
   - เลือกแถว [Micro Sampling] จาก Status = 'Pending' + DataType
     + Department (+ Page ถ้าเป็น Inprocess) เท่านั้น
     -> ไม่กรอง Queue_ID แล้ว จึงได้ทุกวันที่ (เช่น 09-27 และ 09-28)
        ใน MicroID เดียวกัน
   - ไม่หา "Queue แรก" อีกต่อไป
   - ยังอัปเดตสถานะ Micro_Queue ให้ (เฉพาะ Queue ที่มีแถวถูกสร้างรอบนี้)
       Waiting -> Processing แล้ว -> Completed ถ้าไม่เหลือ Pending
   - Logic อื่นคงเดิม:
       MicroID ใช้วันที่ปัจจุบัน / Sampling_Result.Date = [Micro Sampling].[Date]
       สูตร Item เหมือนเดิม
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRANSACTION;

DECLARE @Remark  NVARCHAR(MAX) = NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(MAX), {{Remark}}))), '');
DECLARE @Product NVARCHAR(MAX) = NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(MAX), {{Product}}))), '');
DECLARE @Flavour NVARCHAR(MAX) = NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(MAX), {{Flavour}}))), '');

DECLARE @DataType   NVARCHAR(50)  = NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(50),  '{{DataType}}'))), '');
DECLARE @Department NVARCHAR(255) = NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), '{{Department}}'))), '');
DECLARE @Page       INT           = TRY_CONVERT(INT, NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(50), '{{Page}}'))), ''));


/* Normalize DataType */
IF LOWER(@DataType) = 'planswab'
    SET @DataType = 'PlanSwab';
ELSE IF LOWER(@DataType) = 'inprocess'
    SET @DataType = 'Inprocess';
ELSE
BEGIN
    ROLLBACK TRANSACTION;

    SELECT
        CAST(NULL AS INT)           AS Queue_ID,
        CAST(NULL AS INT)           AS Queue_No,
        CAST(NULL AS NVARCHAR(255)) AS Department,
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(0 AS INT)              AS Created_Count,
        @DataType                   AS DataType,
        CAST('INVALID_DATATYPE' AS NVARCHAR(50)) AS Result;

    RETURN;
END;


/* =========================================================
   1. วันที่สำหรับ MicroID (ใช้วันที่ปัจจุบันเหมือนเดิม)
   ========================================================= */

DECLARE @Today    DATE    = CAST(GETDATE() AS DATE);
DECLARE @DateCode CHAR(8) = CONVERT(CHAR(8), @Today, 112);


/* =========================================================
   2. รวบรวมรายการ Pending ทั้งหมด (ไม่สน Queue_ID / ไม่สนวันที่)
   ========================================================= */

DECLARE @CreateList TABLE
(
    RowNo           INT,
    MicroSamplingID INT,
    Queue_ID        INT,            -- เก็บไว้ใช้อัปเดต Micro_Queue เท่านั้น
    SamplingID      NVARCHAR(255),
    Department      NVARCHAR(255),
    ItemValue       NVARCHAR(MAX),
    [Date]          DATE,
    [Time]          TIME,
    Batch_Lot_No    NVARCHAR(255)
);

INSERT INTO @CreateList
(
    RowNo, MicroSamplingID, Queue_ID, SamplingID, Department,
    ItemValue, [Date], [Time], Batch_Lot_No
)
SELECT
    ROW_NUMBER() OVER (ORDER BY MS.id ASC) AS RowNo,
    MS.id                                  AS MicroSamplingID,
    MS.Queue_ID                            AS Queue_ID,
    X.SamplingID,
    X.Department,

    /* ItemValue: ถ้ามี Type + Machine + Tank ครบ -> Machine / Tank
       กรณีอื่น -> Item / Type / Sample / Name / Tank / Machine (เฉพาะที่มีค่า) */
    NULLIF(
        CASE
            WHEN X.ty IS NOT NULL AND X.mc IS NOT NULL AND X.tk IS NOT NULL
                THEN CONCAT_WS(' / ', X.mc, X.tk)
            ELSE CONCAT_WS(' / ', X.it, X.ty, X.sa, X.nm, X.tk, X.mc)
        END,
        ''
    ) AS ItemValue,

    TRY_CONVERT(DATE, MS.[Date]) AS [Date],
    TRY_CONVERT(TIME, MS.[Time]) AS [Time],
    X.Batch AS Batch_Lot_No

FROM [Micro Sampling] AS MS

CROSS APPLY
(
    SELECT
        LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.SamplingID)))                AS SamplingID,
        LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Department)))                AS Department,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Item))), '')          AS it,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.[Type]))), '')        AS ty,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Sample))), '')        AS sa,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.[Name]))), '')        AS nm,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Tank))), '')          AS tk,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Machine))), '')       AS mc,
        NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Batch))), '')         AS Batch
) AS X

WHERE
    MS.Status = 'Pending'

    AND LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(50), MS.DataType)))) = LOWER(@DataType)

    AND LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Department)))) = LOWER(@Department)

    /* Inprocess: เฉพาะ Page ที่ส่งมา / PlanSwab: ไม่ใช้ Page */
    AND
    (
        LOWER(@DataType) <> 'inprocess'
        OR TRY_CONVERT(INT, MS.Page) = @Page
    )

    AND NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.SamplingID))), '') IS NOT NULL;


/* =========================================================
   3. ไม่มีรายการให้สร้าง
   ========================================================= */

IF NOT EXISTS (SELECT 1 FROM @CreateList)
BEGIN
    DECLARE @HasPendingNoSamplingID BIT =
        CASE WHEN EXISTS
        (
            SELECT 1
            FROM [Micro Sampling] AS MS
            WHERE MS.Status = 'Pending'
              AND LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(50), MS.DataType)))) = LOWER(@DataType)
              AND LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Department)))) = LOWER(@Department)
              AND (LOWER(@DataType) <> 'inprocess' OR TRY_CONVERT(INT, MS.Page) = @Page)
        )
        THEN 1 ELSE 0 END;

    ROLLBACK TRANSACTION;

    SELECT
        CAST(NULL AS INT)           AS Queue_ID,
        CAST(NULL AS INT)           AS Queue_No,
        CAST(NULL AS NVARCHAR(255)) AS Department,
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(0 AS INT)              AS Created_Count,
        @DataType                   AS DataType,
        CAST(CASE WHEN @HasPendingNoSamplingID = 1
                  THEN 'NO_VALID_SAMPLING'
                  ELSE 'NO_QUEUE' END AS NVARCHAR(50)) AS Result;

    RETURN;
END;


/* =========================================================
   4. Queue ที่เกี่ยวข้อง -> Processing (ไม่ได้ใช้เลือกข้อมูล แค่อัปเดตสถานะ)
   ========================================================= */

UPDATE Q
SET
    Q.Status     = 'Processing',
    Q.Started_At = CASE WHEN Q.Started_At IS NULL THEN SYSDATETIME() ELSE Q.Started_At END
FROM dbo.Micro_Queue AS Q
WHERE
    Q.Status IN ('Waiting', 'Processing')
    AND Q.id IN (SELECT DISTINCT Queue_ID FROM @CreateList WHERE Queue_ID IS NOT NULL);


/* =========================================================
   5. MicroID ใหม่: MICRO-YYYYMMDD-01, 02, ...
   ========================================================= */

DECLARE @LastMicroRunning INT;

SELECT
    @LastMicroRunning =
        ISNULL(
            MAX(
                TRY_CONVERT(
                    INT,
                    RIGHT(K.ID, CHARINDEX('-', REVERSE(K.ID)) - 1)
                )
            ),
            0
        )
FROM Micro AS M
CROSS APPLY
(
    SELECT LTRIM(RTRIM(CONVERT(NVARCHAR(100), M.MicroID))) AS ID
) AS K
WHERE K.ID LIKE 'MICRO-' + @DateCode + '-%';

DECLARE @NewMicroRunning INT = @LastMicroRunning + 1;
DECLARE @MicroID NVARCHAR(100);

SET @MicroID =
    'MICRO-' + @DateCode + '-' +
    CASE
        WHEN @NewMicroRunning < 100
            THEN RIGHT('00' + CONVERT(NVARCHAR(20), @NewMicroRunning), 2)
        ELSE CONVERT(NVARCHAR(20), @NewMicroRunning)
    END;


/* =========================================================
   6. Department ของ Micro (ใช้ค่าจริงในข้อมูลที่ถูกเลือก)
   ========================================================= */

DECLARE @MicroDepartment NVARCHAR(255);

SELECT TOP 1
    @MicroDepartment = NULLIF(Department, '')
FROM @CreateList
ORDER BY RowNo ASC;

IF @MicroDepartment IS NULL
    SET @MicroDepartment = @Department;


/* =========================================================
   7. INSERT Micro
   ========================================================= */

INSERT INTO Micro
(
    MicroID,
    Department,
    [Date],
    Remark,
    Product,
    Flavour
)
VALUES
(
    @MicroID,
    @MicroDepartment,
    @Today,
    @Remark,
    @Product,
    @Flavour
);


/* =========================================================
   8. INSERT Sampling_Result (1 Pending = 1 Result)
   Date ใช้ตาม [Micro Sampling].[Date] -> ได้ทั้ง 09-27 และ 09-28
   ========================================================= */

INSERT INTO Sampling_Result
(
    SampID,
    No,
    [Date],
    [Time],
    Batch_Lot_no,
    Item
)
SELECT
    C.SamplingID,
    CONVERT(NVARCHAR(20), C.RowNo) AS No,
    C.[Date],
    C.[Time],
    C.Batch_Lot_No,
    C.ItemValue
FROM @CreateList AS C
ORDER BY C.RowNo ASC;


/* =========================================================
   9. UPDATE Micro Sampling -> Created (เฉพาะแถวที่เพิ่งสร้าง)
   ========================================================= */

UPDATE MS
SET
    MS.MicroID = @MicroID,
    MS.Status  = 'Created',
    MS.State   = 0
FROM [Micro Sampling] AS MS
INNER JOIN @CreateList AS C
    ON C.MicroSamplingID = MS.id
WHERE
    MS.Status = 'Pending';


/* =========================================================
   10. ปิด Queue ที่ไม่เหลือ Pending
   ========================================================= */

UPDATE Q
SET
    Q.Status       = 'Completed',
    Q.Completed_At = SYSDATETIME()
FROM dbo.Micro_Queue AS Q
WHERE
    Q.id IN (SELECT DISTINCT Queue_ID FROM @CreateList WHERE Queue_ID IS NOT NULL)
    AND Q.Status <> 'Completed'
    AND NOT EXISTS
    (
        SELECT 1
        FROM [Micro Sampling] AS MS
        WHERE MS.Queue_ID = Q.id
          AND MS.Status = 'Pending'
    );


/* =========================================================
   11. จำนวนที่สร้าง + Commit
   ========================================================= */

DECLARE @CreatedCount INT;

SELECT @CreatedCount = COUNT(*) FROM @CreateList;

COMMIT TRANSACTION;


/* =========================================================
   12. Return
   Queue_ID / Queue_No คืนเป็น NULL (ไม่ผูก Queue แล้ว)
   เก็บคอลัมน์ไว้เพื่อไม่ให้ Binding ใน Budibase พัง
   ========================================================= */

SELECT
    CAST(NULL AS INT)   AS Queue_ID,
    CAST(NULL AS INT)   AS Queue_No,
    @MicroDepartment    AS Department,
    @MicroID            AS MicroID,
    @CreatedCount       AS Created_Count,
    @DataType           AS DataType,

    CASE
        WHEN LOWER(@DataType) = 'inprocess' THEN @Page
        ELSE NULL
    END AS Page,

    CAST(
        CASE
            WHEN EXISTS
            (
                SELECT 1
                FROM dbo.Micro_Queue AS Q
                WHERE Q.id IN (SELECT DISTINCT Queue_ID FROM @CreateList WHERE Queue_ID IS NOT NULL)
                  AND Q.Status <> 'Completed'
            )
            THEN 'PROCESSING'
            ELSE 'COMPLETED'
        END
        AS NVARCHAR(50)
    ) AS Result;
