/*
Application: QSM Microbiological
Query name: Rawmilk_Create_2
File: Rawmilk_Create_2.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_33f09923ea1d4c938984c00ec880ae53
Budibase function: create
Bindings: Remark
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/


/* =========================================================
   SQL Name: Create_Micro_qsm_With_Latest_Sampling_Date_Item_RawMilk_DataType.sql
   Database: Microsoft SQL Server (MSSQL)

   Logic:
   - อ่าน Pending เฉพาะ DataType = RawMilk
   - Batch 1..3 ตามค่า Batch
   - MicroID ใช้วันที่สร้างจริง
   - Micro.Department = QSM
   - Micro.Date ใช้ Date ของ Sampling ล่าสุดที่ถูกนำมา Create
   - Sampling_Result.Date/Time มาจาก Micro Sampling
   - Sampling_Result.Item ดึงจาก [Micro Sampling].[Sum] โดยตรง
   - Pending -> Created เฉพาะ DataType = RawMilk

   ปรับ:
   - เอาการบันทึก Remark ลง Micro ออก
   - ไม่รับ {{Remark}}
   - Item ของ Sampling_Result ดึงจาก [Micro Sampling].[Sum] โดยตรง
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRY

BEGIN TRANSACTION;


/* ============================================================
   1. Date สำหรับบันทึกลงตาราง Micro

   อ่าน Date จาก Sampling ล่าสุดที่ถูกนำมา Create
   ============================================================ */

DECLARE @MicroDate DATE = NULL;


/* ============================================================
   2. สร้างรายการ CreateList
   อ่านเฉพาะ Pending ที่ DataType = RawMilk
   ============================================================ */

DECLARE @CreateList TABLE
(
    MicroSamplingID INT,
    SamplingID      VARCHAR(100),
    No              INT,
    Batch_Lot_No    INT,
    [Date]          DATETIME,
    [Time]          TIME(0),
    Item            NVARCHAR(500)
);


INSERT INTO @CreateList
(
    MicroSamplingID,
    SamplingID,
    No,
    Batch_Lot_No,
    [Date],
    [Time],
    Item
)

SELECT
    S.ID AS MicroSamplingID,

    S.SamplingID,

    ROW_NUMBER() OVER
    (
        ORDER BY
            S.ID,
            N.n
    ) AS No,

    N.n AS Batch_Lot_No,

    S.[Date],

    /* --------------------------------------------------------
       ดึงเฉพาะเวลาเดิมจากค่า ISO

       ตัวอย่าง:
       2026-08-17T22:00:00.000Z
       -> 22:00:00

       ไม่แปลง Time Zone
       -------------------------------------------------------- */

    COALESCE
    (
        /* กรณีเป็น TIME อยู่แล้ว */
        TRY_CONVERT(
            TIME(0),
            S.[Time]
        ),

        /* กรณีเป็น DATETIME / DATETIME2 */
        CAST(
            TRY_CONVERT(
                DATETIME2,
                S.[Time]
            )
            AS TIME(0)
        ),

        /* กรณีเป็น ISO เช่น 2026-08-17T22:00:00.000Z */
        CAST(
            TRY_CONVERT(
                DATETIMEOFFSET,
                CONVERT(NVARCHAR(100), S.[Time]),
                127
            )
            AS TIME(0)
        ),

        /* fallback: ดึง HH:mm:ss หลังตัว T โดยตรง */
        TRY_CONVERT(
            TIME(0),
            CASE
                WHEN CHARINDEX(
                    'T',
                    CONVERT(NVARCHAR(100), S.[Time])
                ) > 0
                THEN SUBSTRING(
                    CONVERT(NVARCHAR(100), S.[Time]),
                    CHARINDEX(
                        'T',
                        CONVERT(NVARCHAR(100), S.[Time])
                    ) + 1,
                    8
                )
                ELSE NULL
            END
        )
    ) AS [Time],

    /* ========================================================
       Item:
       ดึงจาก [Micro Sampling].[Sum] โดยตรง

       ตัวอย่างค่าใน S.[Sum]:

       สหกรณ์โคนมการเกษตรไชยปราการ จำกัด / 83-6162|Coliform/E-coli

       จะถูกส่งเข้า Sampling_Result.Item
       แบบตรง ๆ โดยไม่แยกหรือประกอบค่าใหม่
       ======================================================== */

    NULLIF(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(500),
                    S.[Sum]
                )
            )
        ),
        ''
    ) AS Item


FROM [Micro Sampling] S

CROSS JOIN
(
    SELECT 1 AS n
    UNION ALL
    SELECT 2
    UNION ALL
    SELECT 3
) N


/* ============================================================
   ไม่ต้อง JOIN Sampling RawMilk แล้ว

   เพราะ Item ดึงจาก [Micro Sampling].[Sum] โดยตรง
   ============================================================ */


WHERE
    S.Status = 'Pending'

    AND LOWER(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(50),
                    S.DataType
                )
            )
        )
    ) = 'rawmilk'

    AND N.n <= TRY_CAST(S.Batch AS INT);


/* ============================================================
   3. ตรวจสอบว่ามีรายการให้สร้างหรือไม่
   ============================================================ */

IF NOT EXISTS
(
    SELECT 1
    FROM @CreateList
)
BEGIN

    ROLLBACK TRANSACTION;

    SELECT
        CAST(NULL AS VARCHAR(100)) AS MicroID,
        CAST(NULL AS VARCHAR(10)) AS Department,
        CAST(NULL AS VARCHAR(50)) AS DataType,
        CAST(NULL AS DATE) AS [Date],
        CAST(NULL AS INT) AS TotalSampling;

    RETURN;
END;


/* ============================================================
   3.1 อ่าน Date ของ Sampling ล่าสุดที่ถูกนำมา Create

   ใช้ MicroSamplingID มากที่สุด
   ============================================================ */

SELECT TOP 1
    @MicroDate = TRY_CONVERT(DATE, C.[Date])

FROM @CreateList AS C

WHERE
    C.[Date] IS NOT NULL

ORDER BY
    C.MicroSamplingID DESC;


/* ============================================================
   4. วันที่สำหรับสร้าง MicroID
      ใช้วันที่สร้างจริง ณ ตอนกด Query
   ============================================================ */

DECLARE @Today DATE =
    CAST(GETDATE() AS DATE);


DECLARE @DateCode CHAR(8) =
    CONVERT(
        CHAR(8),
        @Today,
        112
    );


/* ============================================================
   5. Prefix MicroID
   ============================================================ */

DECLARE @MicroPrefix VARCHAR(50);


SET @MicroPrefix =
      'MICRO-'
    + @DateCode
    + '-';


/* ============================================================
   6. หา Running Number ของ MicroID
   ============================================================ */

DECLARE @RunningNo INT;


SELECT
    @RunningNo =
        ISNULL
        (
            MAX
            (
                TRY_CONVERT
                (
                    INT,
                    SUBSTRING
                    (
                        MicroID,
                        LEN(@MicroPrefix) + 1,
                        50
                    )
                )
            ),
            0
        ) + 1

FROM Micro WITH
(
    UPDLOCK,
    HOLDLOCK
)

WHERE
    MicroID LIKE @MicroPrefix + '%';


/* ============================================================
   7. สร้าง MicroID
   ============================================================ */

DECLARE @MicroID VARCHAR(100);


SET @MicroID =
      @MicroPrefix

    + CASE

        WHEN @RunningNo < 100
        THEN
            RIGHT(
                '00'
                + CONVERT(
                    VARCHAR(20),
                    @RunningNo
                ),
                2
            )

        ELSE
            CONVERT(
                VARCHAR(20),
                @RunningNo
            )

      END;


/* ============================================================
   8. Insert Micro

   - MicroID ใช้วันที่สร้างจริง
   - Department = QSM
   - Date = Date ของ Sampling ล่าสุดที่ถูกนำมา Create
   - ไม่บันทึก Remark
   - ไม่บันทึก Time
   ============================================================ */

INSERT INTO Micro
(
    MicroID,
    Department,
    [Date]
)

VALUES
(
    @MicroID,
    'QSM',
    @MicroDate
);


/* ============================================================
   9. ใส่ MicroID ลง Micro Sampling

   เฉพาะรายการ RawMilk ที่อยู่ใน @CreateList
   ============================================================ */

UPDATE S

SET
    S.MicroID = @MicroID

FROM [Micro Sampling] S

WHERE
    EXISTS
    (
        SELECT 1
        FROM @CreateList C
        WHERE C.MicroSamplingID = S.ID
    )

    AND S.Status = 'Pending'

    AND LOWER(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(50),
                    S.DataType
                )
            )
        )
    ) = 'rawmilk';


/* ============================================================
   10. Insert Sampling_Result

   Date / Time ของ Sampling_Result
   มาจาก Micro Sampling

   Item:
   ดึงจาก [Micro Sampling].[Sum] โดยตรง
   ============================================================ */

INSERT INTO Sampling_Result
(
    SampID,
    No,
    Batch_Lot_no,
    [Date],
    [Time],
    Item
)

SELECT
    SamplingID,
    No,
    Batch_Lot_No,
    [Date],
    [Time],
    Item

FROM @CreateList;


/* ============================================================
   11. เปลี่ยน Pending -> Created

   เฉพาะรายการ RawMilk ที่อยู่ใน @CreateList
   ============================================================ */

UPDATE S

SET
    S.Status = 'Created'

FROM [Micro Sampling] S

WHERE
    EXISTS
    (
        SELECT 1
        FROM @CreateList C
        WHERE C.MicroSamplingID = S.ID
    )

    AND S.Status = 'Pending'

    AND LOWER(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(50),
                    S.DataType
                )
            )
        )
    ) = 'rawmilk';


/* ============================================================
   12. Commit
   ============================================================ */

COMMIT TRANSACTION;


/* ============================================================
   13. Return
   ============================================================ */

SELECT
    @MicroID AS MicroID,
    'QSM' AS Department,
    'RawMilk' AS DataType,
    @MicroDate AS [Date],
    COUNT(*) AS TotalSampling

FROM @CreateList;


END TRY

BEGIN CATCH

    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END;

    THROW;

END CATCH;
