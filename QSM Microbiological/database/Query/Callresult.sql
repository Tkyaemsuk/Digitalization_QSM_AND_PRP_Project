/*
Application: QSM Microbiological
Query name: Callresult
File: Callresult.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_6861b11e1c3d4c7a8af6d92c136562da
Budibase function: read
Bindings: MicroID, State, Direction
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   SQL Name :
   Navigate_MicroSampling_State_BasicData_MultiResult_Item_State0_ResultOrderFixed.sql

   Database :
   Microsoft SQL Server (MSSQL)

   หลักการ:
   - Direction = 1  -> Next
   - Direction = -1 -> Previous
   - Direction = 0  -> State เดิม
   - State 0 = หน้าเริ่มต้น ยังไม่เลือก Sampling_Result
   - State 1 = ข้อมูลแถวแรก
   - รองรับ SamplingID เดียวมี Sampling_Result หลายแถว
   - ใช้ Sampling_Result.id เป็นตัวระบุแถวแบบเจาะจง
   - Return Date / Time / Batch_Lot_no / Item
   - คง logic เดิมของ MultiResult
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRANSACTION;


/* =========================================================
   1. รับค่า
   ========================================================= */

DECLARE @MicroID NVARCHAR(100) =
    NULLIF(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(100),
                    {{MicroID}}
                )
            )
        ),
        ''
    );

DECLARE @State INT =
    ISNULL(
        TRY_CONVERT(
            INT,
            {{State}}
        ),
        0
    );

DECLARE @Direction INT =
    ISNULL(
        TRY_CONVERT(
            INT,
            {{Direction}}
        ),
        0
    );


/* =========================================================
   2. ถ้า MicroID ไม่มีค่า
   ไม่ Error
   ========================================================= */

IF @MicroID IS NULL
BEGIN

    ROLLBACK TRANSACTION;

    SELECT
        CAST(NULL AS NVARCHAR(20)) AS No,
        CAST(NULL AS NVARCHAR(100)) AS SamplingID,
        CAST(NULL AS INT) AS SamplingRunning,
        CAST(NULL AS INT) AS SamplingResultID,
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(NULL AS DATE) AS [Date],
        CAST(NULL AS TIME) AS [Time],
        CAST(NULL AS NVARCHAR(255)) AS Batch_Lot_no,
        CAST(NULL AS NVARCHAR(255)) AS Item,

        CAST(0 AS INT) AS State,
        CAST(0 AS INT) AS FirstPage,
        CAST(0 AS INT) AS LastPage,
        CAST(0 AS INT) AS MaxState,

        CAST(1 AS INT) AS IsFirst,
        CAST(1 AS INT) AS IsLast;

    RETURN;
END;


/* =========================================================
   3. สร้างรายการหน้า
   ========================================================= */

DECLARE @Pages TABLE
(
    State             INT,
    SamplingID        NVARCHAR(100),
    SamplingRunning   INT,
    SamplingResultID  INT,
    MicroID           NVARCHAR(100)
);


/* =========================================================
   4. สร้าง Page จาก Micro Sampling + Sampling_Result

   @Pages เริ่มข้อมูลจริงที่ State = 1
   ========================================================= */

INSERT INTO @Pages
(
    State,
    SamplingID,
    SamplingRunning,
    SamplingResultID,
    MicroID
)
SELECT

    ROW_NUMBER() OVER
    (
        ORDER BY

            /* =================================================
               เรียง State ตามลำดับ Sampling_Result.id จริง
               เพื่อให้:
               State 1 -> No 3.1
               State 2 -> No 3.2
               State 3 -> No 3.3
               State 4 -> No 3.4
               ...
               โดยไม่เอาเลขท้าย SamplingID มาจัดลำดับก่อน
               ================================================= */

            CASE
                WHEN sr.id IS NULL THEN 1
                ELSE 0
            END,

            sr.id ASC,

            ms.id ASC
    ) AS State,

    LTRIM(
        RTRIM(
            CONVERT(
                NVARCHAR(100),
                ms.SamplingID
            )
        )
    ) AS SamplingID,

    TRY_CONVERT
    (
        INT,
        RIGHT
        (
            CONVERT(
                NVARCHAR(100),
                ms.SamplingID
            ),
            CHARINDEX
            (
                '-',
                REVERSE
                (
                    CONVERT(
                        NVARCHAR(100),
                        ms.SamplingID
                    )
                )
            ) - 1
        )
    ) AS SamplingRunning,

    sr.id AS SamplingResultID,

    LTRIM(
        RTRIM(
            CONVERT(
                NVARCHAR(100),
                ms.MicroID
            )
        )
    ) AS MicroID

FROM [Micro Sampling] AS ms

OUTER APPLY
(
    SELECT
        SR.id

    FROM Sampling_Result AS SR

    WHERE
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(100),
                    SR.SampID
                )
            )
        )
        =
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(100),
                    ms.SamplingID
                )
            )
        )
) AS sr

WHERE
    LTRIM(
        RTRIM(
            CONVERT(
                NVARCHAR(100),
                ms.MicroID
            )
        )
    ) = @MicroID;


/* =========================================================
   5. Pagination
   ========================================================= */

DECLARE @FirstPage INT = 0;
DECLARE @FirstDataPage INT = 1;
DECLARE @LastPage INT;
DECLARE @MaxState INT;

SELECT
    @LastPage = COUNT(*)
FROM @Pages;

SET @MaxState = @LastPage;


/* =========================================================
   6. ไม่มีข้อมูล
   ========================================================= */

IF ISNULL(@MaxState, 0) = 0
BEGIN

    ROLLBACK TRANSACTION;

    SELECT
        CAST(NULL AS NVARCHAR(20)) AS No,
        CAST(NULL AS NVARCHAR(100)) AS SamplingID,
        CAST(NULL AS INT) AS SamplingRunning,
        CAST(NULL AS INT) AS SamplingResultID,
        @MicroID AS MicroID,
        CAST(NULL AS DATE) AS [Date],
        CAST(NULL AS TIME) AS [Time],
        CAST(NULL AS NVARCHAR(255)) AS Batch_Lot_no,
        CAST(NULL AS NVARCHAR(255)) AS Item,

        CAST(0 AS INT) AS State,
        CAST(0 AS INT) AS FirstPage,
        CAST(0 AS INT) AS LastPage,
        CAST(0 AS INT) AS MaxState,

        CAST(1 AS INT) AS IsFirst,
        CAST(1 AS INT) AS IsLast;

    RETURN;
END;


/* =========================================================
   7. คำนวณ State ใหม่
   ========================================================= */

DECLARE @NextState INT;

IF @State < 0
BEGIN
    SET @NextState = 0;
END
ELSE IF @State = 0
BEGIN
    IF @Direction = 1
        SET @NextState = @FirstDataPage;
    ELSE
        SET @NextState = 0;
END
ELSE IF @Direction = 1
BEGIN
    SET @NextState = @State + 1;
END
ELSE IF @Direction = -1
BEGIN
    SET @NextState = @State - 1;
END
ELSE
BEGIN
    SET @NextState = @State;
END;


/* =========================================================
   8. จำกัดขอบเขต
   ========================================================= */

IF @NextState < 0
    SET @NextState = 0;

IF @NextState > @MaxState
    SET @NextState = @MaxState;


/* =========================================================
   9. ถ้า State = 0
   ========================================================= */

IF @NextState = 0
BEGIN

    UPDATE ms
    SET ms.State = 0
    FROM [Micro Sampling] AS ms
    WHERE
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(100),
                    ms.MicroID
                )
            )
        ) = @MicroID;

    COMMIT TRANSACTION;

    SELECT
        CAST(NULL AS NVARCHAR(20)) AS No,
        CAST(NULL AS NVARCHAR(100)) AS SamplingID,
        CAST(NULL AS INT) AS SamplingRunning,
        CAST(NULL AS INT) AS SamplingResultID,
        @MicroID AS MicroID,
        CAST(NULL AS DATE) AS [Date],
        CAST(NULL AS TIME) AS [Time],
        CAST(NULL AS NVARCHAR(255)) AS Batch_Lot_no,
        CAST(NULL AS NVARCHAR(255)) AS Item,

        CAST(0 AS INT) AS State,
        CAST(0 AS INT) AS FirstPage,
        @LastPage AS LastPage,
        @MaxState AS MaxState,

        CAST(1 AS INT) AS IsFirst,
        CASE WHEN @MaxState = 0 THEN 1 ELSE 0 END AS IsLast;

    RETURN;
END;


/* =========================================================
   10. หา Current Page
   ========================================================= */

DECLARE @CurrentSamplingID NVARCHAR(100);
DECLARE @CurrentSamplingRunning INT;
DECLARE @CurrentSamplingResultID INT;
DECLARE @CurrentMicroID NVARCHAR(100);

SELECT
    @CurrentSamplingID = SamplingID,
    @CurrentSamplingRunning = SamplingRunning,
    @CurrentSamplingResultID = SamplingResultID,
    @CurrentMicroID = MicroID
FROM @Pages
WHERE State = @NextState;


/* =========================================================
   11. Update State
   ========================================================= */

UPDATE ms
SET ms.State = @NextState
FROM [Micro Sampling] AS ms
WHERE
    LTRIM(
        RTRIM(
            CONVERT(
                NVARCHAR(100),
                ms.MicroID
            )
        )
    ) = @CurrentMicroID;


/* =========================================================
   12. Return Current Result
   ========================================================= */

SELECT TOP 1

    CONVERT(
        NVARCHAR(50),
        sr.No
    ) AS No,

    @CurrentSamplingID AS SamplingID,

    @CurrentSamplingRunning AS SamplingRunning,

    sr.id AS SamplingResultID,

    @CurrentMicroID AS MicroID,

    sr.[Date],

    sr.[Time],

    CONVERT(
        NVARCHAR(255),
        sr.Batch_Lot_no
    ) AS Batch_Lot_no,

    CONVERT(
        NVARCHAR(255),
        sr.Item
    ) AS Item,

    @NextState AS State,

    @FirstPage AS FirstPage,

    @LastPage AS LastPage,

    @MaxState AS MaxState,

    CASE
        WHEN @NextState = 0 THEN 1
        ELSE 0
    END AS IsFirst,

    CASE
        WHEN @NextState = @MaxState THEN 1
        ELSE 0
    END AS IsLast

FROM Sampling_Result AS sr

WHERE
    (
        @CurrentSamplingResultID IS NOT NULL
        AND sr.id = @CurrentSamplingResultID
    )
    OR
    (
        @CurrentSamplingResultID IS NULL
        AND
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(100),
                    sr.SampID
                )
            )
        )
        =
        LTRIM(
            RTRIM(
                @CurrentSamplingID
            )
        )
    )

ORDER BY
    sr.id ASC;


/* =========================================================
   13. Commit
   ========================================================= */

COMMIT TRANSACTION;
