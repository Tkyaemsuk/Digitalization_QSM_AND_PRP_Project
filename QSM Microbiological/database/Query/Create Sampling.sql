/*
Application: QSM Microbiological
Query name: Create Sampling
File: Create Sampling.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7dddba6194fa45ba91cb1b19852ded20
Budibase function: create
Bindings: MicroID, Department, Type, Item, Selection, Sample, State, Name, Machine, Batch, SidelTank3Extra, SidelTank4Extra, SidelTank5Extra, SidelTank10Extra, SidelTank11Extra, SidelTank12Extra, Time, Date, SampID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   SQL Name :
   Insert_Micro_Sampling_All_Mode_Queue_GlobalRunning_NoError_StateAllSamples_PlanSwab_Sidel6Inputs.sql

   Database :
   Microsoft SQL Server (MSSQL)

   =========================================================
   หลักการ
   =========================================================

   1) Queue แยกตาม:
      Date + Department

   2) Department เดียวกันในวันเดียวกัน:
      ใช้ Queue เดิม

   3) Running ท้าย SamplingID ต่อกันตาม:
      Date + Department

   4) รองรับ 3 MODE เดิม + MODE 0 State=true เลือก Sample ทั้งหมด:

      MODE 1 : มี Type
               Department/Department_No -> Inprocess
               Type/Type_No/Tank        -> Sum_data_type

      MODE 2 : UHT3 + Gr.L + Sidel + หัว Fill 70 หัว

      MODE 3 : Normal

   5) ถ้าข้อมูลไม่ครบ / Mapping ไม่เจอ:
      - ไม่ THROW
      - ไม่ INSERT
      - คืน NULL
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;


/* =========================================================
   0. สร้างตาราง Queue ถ้ายังไม่มี
   ========================================================= */

IF OBJECT_ID('dbo.Micro_Queue', 'U') IS NULL
BEGIN

    CREATE TABLE dbo.Micro_Queue
    (
        id INT IDENTITY(1,1) NOT NULL
            CONSTRAINT PK_Micro_Queue PRIMARY KEY,

        Queue_No INT NOT NULL,

        Queue_Date DATE NOT NULL,

        Department NVARCHAR(255) NOT NULL,

        Status NVARCHAR(50) NOT NULL
            CONSTRAINT DF_Micro_Queue_Status
            DEFAULT 'Waiting',

        Created_At DATETIME2(0) NOT NULL
            CONSTRAINT DF_Micro_Queue_CreatedAt
            DEFAULT SYSDATETIME(),

        Started_At DATETIME2(0) NULL,

        Completed_At DATETIME2(0) NULL
    );

END;


/* =========================================================
   เพิ่ม Queue_ID ให้ Micro Sampling ถ้ายังไม่มี
   ========================================================= */

IF COL_LENGTH('dbo.Micro Sampling', 'Queue_ID') IS NULL
BEGIN

    ALTER TABLE [Micro Sampling]
    ADD Queue_ID INT NULL;

END;


/* =========================================================
   1. INPUT
   ========================================================= */

DECLARE @MicroID NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{MicroID}}')),
        ''
    );

DECLARE @Department NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Department}}')),
        ''
    );

DECLARE @Type NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Type}}')),
        ''
    );

DECLARE @Item NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Item}}')),
        ''
    );

DECLARE @Selection NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Selection}}')),
        ''
    );

DECLARE @Sample NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Sample}}')),
        ''
    );

/* =========================================================
   State = true
   ถ้าเลือก Item + Section(Selection)
   จะอ่าน Sample ทั้งหมดจาก All_Plant_Data
   ========================================================= */
DECLARE @State BIT =
    CASE
        WHEN LOWER(
            LTRIM(
                RTRIM(
                    CONVERT(NVARCHAR(20), '{{State}}')
                )
            )
        ) IN ('true', '1', 'yes', 'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Name NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Name}}')),
        ''
    );

DECLARE @Machine NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Machine}}')),
        ''
    );

DECLARE @Batch NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Batch}}')),
        ''
    );

/* =========================================================
   Sidel Tank Extra - 6 input แยกกัน

   TankOrder 3  -> {{SidelTank3Extra}}
   TankOrder 4  -> {{SidelTank4Extra}}
   TankOrder 5  -> {{SidelTank5Extra}}
   TankOrder 10 -> {{SidelTank10Extra}}
   TankOrder 11 -> {{SidelTank11Extra}}
   TankOrder 12 -> {{SidelTank12Extra}}

   ถ้าช่องไหนว่าง จะไม่ต่อท้าย Tank จุดนั้น
   ทำงานเฉพาะเมื่อ Type = Sidel
   ========================================================= */

DECLARE @SidelTank3Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank3Extra}}')), '');

DECLARE @SidelTank4Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank4Extra}}')), '');

DECLARE @SidelTank5Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank5Extra}}')), '');

DECLARE @SidelTank10Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank10Extra}}')), '');

DECLARE @SidelTank11Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank11Extra}}')), '');

DECLARE @SidelTank12Extra NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SidelTank12Extra}}')), '');

DECLARE @InputTime TIME =
    TRY_CONVERT(
        TIME,
        NULLIF(
            LTRIM(RTRIM('{{Time}}')),
            ''
        )
    );

DECLARE @InputDate DATE =
    COALESCE
    (
        TRY_CONVERT(DATE, NULLIF('{{Date}}', ''), 23),
        TRY_CONVERT(DATE, NULLIF('{{Date}}', ''), 126),
        TRY_CONVERT(DATE, NULLIF('{{Date}}', ''), 101),
        TRY_CONVERT(DATE, NULLIF('{{Date}}', ''), 103)
    );


/* =========================================================
   2. ถ้า Date หรือ Department ว่าง
   ไม่ Error / ไม่ Insert
   ========================================================= */

IF @InputDate IS NULL
   OR @Department IS NULL
BEGIN

    SELECT
        CAST(NULL AS INT) AS Queue_ID,
        CAST(NULL AS INT) AS Queue_No,
        CAST(NULL AS DATE) AS Queue_Date,
        CAST(NULL AS NVARCHAR(255)) AS Department,
        CAST(NULL AS INT) AS Pending_Count,
        CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
        CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
        CAST(NULL AS NVARCHAR(50)) AS Result;

    RETURN;
END;


/* =========================================================
   3. Transaction
   ========================================================= */

BEGIN TRANSACTION;

BEGIN TRY


/* =========================================================
   4. หา / สร้าง Queue
   Date + Department
   ========================================================= */

DECLARE @Queue_ID INT;
DECLARE @Queue_No INT;


SELECT TOP 1

    @Queue_ID = Q.id,
    @Queue_No = Q.Queue_No

FROM dbo.Micro_Queue AS Q
WITH (UPDLOCK, HOLDLOCK)

WHERE
    Q.Queue_Date = @InputDate

    AND LOWER(
            LTRIM(
                RTRIM(Q.Department)
            )
        )
        =
        LOWER(@Department)

ORDER BY
    Q.id ASC;


/* =========================================================
   ถ้ายังไม่มี Queue ของ Department นี้ในวันนี้
   ========================================================= */

IF @Queue_ID IS NULL
BEGIN

    SELECT

        @Queue_No =
            ISNULL(
                MAX(Q.Queue_No),
                0
            ) + 1

    FROM dbo.Micro_Queue AS Q
    WITH (UPDLOCK, HOLDLOCK)

    WHERE
        Q.Queue_Date = @InputDate;


    INSERT INTO dbo.Micro_Queue
    (
        Queue_No,
        Queue_Date,
        Department,
        Status,
        Created_At
    )
    VALUES
    (
        @Queue_No,
        @InputDate,
        @Department,
        'Waiting',
        SYSDATETIME()
    );


    SET @Queue_ID =
        CONVERT(
            INT,
            SCOPE_IDENTITY()
        );

END;


/* =========================================================
   ถ้า Queue เดิม Completed
   แต่มีการสร้าง Pending ใหม่
   เปิดกลับเป็น Waiting
   ========================================================= */

UPDATE dbo.Micro_Queue
SET
    Status = 'Waiting',
    Started_At = NULL,
    Completed_At = NULL
WHERE
    id = @Queue_ID
    AND Status = 'Completed';


/* =========================================================
   5. หา Running ล่าสุด
   ตาม Date + Department

   ไม่สน Prefix / Type / Section
   ========================================================= */

DECLARE @LastRunning INT;


SELECT

    @LastRunning =
        ISNULL
        (
            MAX
            (
                TRY_CONVERT
                (
                    INT,

                    RIGHT
                    (
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(255),
                                    MS.SamplingID
                                )
                            )
                        ),

                        CHARINDEX
                        (
                            '-',

                            REVERSE
                            (
                                LTRIM(
                                    RTRIM(
                                        CONVERT(
                                            NVARCHAR(255),
                                            MS.SamplingID
                                        )
                                    )
                                )
                            )

                        ) - 1
                    )
                )
            ),
            0
        )

FROM [Micro Sampling] AS MS
WITH (UPDLOCK, HOLDLOCK)

WHERE

    TRY_CONVERT(
        DATE,
        MS.[Date]
    ) = @InputDate

    AND LOWER(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        MS.Department
                    )
                )
            )
        )
        =
        LOWER(@Department)

    AND NULLIF(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        MS.SamplingID
                    )
                )
            ),
            ''
        ) IS NOT NULL;


/* =========================================================
   MODE 0 : STATE = TRUE
   เลือก Item + Section แล้วสร้าง Sample ทั้งหมด
   จาก All_Plant_Data.Sample ที่คั่นด้วย comma

   เงื่อนไขเข้า MODE นี้:
   - State = true
   - Item มีค่า
   - Selection มีค่า และใช้แทน Section
   - Type ต้องว่าง เพื่อไม่ให้ MODE 0 แย่ง MODE 1 ตอนเลือก Type

   หมายเหตุ:
   - Logic Queue / Running เดิมทั้งหมดคงไว้
   - 1 Sample = 1 Pending
   - SamplingID Running ต่อจาก @LastRunning
   ========================================================= */

IF @State = 1
   AND @Item IS NOT NULL
   AND @Selection IS NOT NULL
   AND @Type IS NULL
BEGIN

    DECLARE @BulkDepartment_NO NVARCHAR(50);
    DECLARE @BulkSection_NO NVARCHAR(50);
    DECLARE @BulkSampleList NVARCHAR(MAX);
    DECLARE @BulkPrefix NVARCHAR(150);


    /* =====================================================
       อ่าน Department_NO / Section_NO / Sample
       จาก All_Plant_Data

       {{Item}}      -> All_Plant_Data.Item
       {{Selection}} -> All_Plant_Data.Section
       ===================================================== */

    SELECT TOP 1

        @BulkDepartment_NO =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(50),
                            APD.Department_NO
                        )
                    )
                ),
                ''
            ),

        @BulkSection_NO =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(50),
                            APD.Section_NO
                        )
                    )
                ),
                ''
            ),

        @BulkSampleList =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(MAX),
                            APD.Sample
                        )
                    )
                ),
                ''
            )

    FROM [All_Plant_Data] AS APD

    WHERE
        LOWER(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        APD.Department
                    )
                )
            )
        ) = LOWER(@Department)

        AND LOWER(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            APD.Item
                        )
                    )
                )
            ) = LOWER(@Item)

        AND LOWER(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            APD.Section
                        )
                    )
                )
            ) = LOWER(@Selection)

    ORDER BY
        APD.id ASC;


    /* =====================================================
       ถ้า Mapping หรือ Sample ไม่ครบ
       ไม่ Error / ไม่ Insert
       ===================================================== */

    IF @BulkDepartment_NO IS NULL
       OR @BulkSection_NO IS NULL
       OR @BulkSampleList IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


    /* =====================================================
       Department_NO / Section_NO ให้เป็น 2 หลักเมื่อเป็นตัวเลข
       ===================================================== */

    IF TRY_CONVERT(INT, @BulkDepartment_NO) IS NOT NULL
    BEGIN
        SET @BulkDepartment_NO =
            RIGHT(
                '00' + CONVERT(NVARCHAR(20), TRY_CONVERT(INT, @BulkDepartment_NO)),
                2
            );
    END;

    IF TRY_CONVERT(INT, @BulkSection_NO) IS NOT NULL
    BEGIN
        SET @BulkSection_NO =
            RIGHT(
                '00' + CONVERT(NVARCHAR(20), TRY_CONVERT(INT, @BulkSection_NO)),
                2
            );
    END;


    /* =====================================================
       Prefix
       QSM-YYYYMMDD-Department_NOSection_NO-
       ===================================================== */

    SET @BulkPrefix =
          'QSM-'
        + CONVERT(CHAR(8), @InputDate, 112)
        + '-'
        + @BulkDepartment_NO
        + @BulkSection_NO
        + '-';


    /* =====================================================
       แตก Sample ตาม comma โดยรักษาลำดับเดิม

       ตัวอย่าง:
       Sample A,Sample B,Sample C
       -> 1 Sample A
       -> 2 Sample B
       -> 3 Sample C
       ===================================================== */

    ;WITH SampleSplit AS
    (
        SELECT
            1 AS SampleOrder,

            CONVERT(
                NVARCHAR(255),
                NULLIF(
                    LTRIM(
                        RTRIM(
                            LEFT(
                                @BulkSampleList + ',',
                                CHARINDEX(',', @BulkSampleList + ',') - 1
                            )
                        )
                    ),
                    ''
                )
            ) AS SampleValue,

            CONVERT(
                NVARCHAR(MAX),
                STUFF(
                    @BulkSampleList + ',',
                    1,
                    CHARINDEX(',', @BulkSampleList + ','),
                    ''
                )
            ) AS Rest

        UNION ALL

        SELECT
            SampleOrder + 1,

            CONVERT(
                NVARCHAR(255),
                NULLIF(
                    LTRIM(
                        RTRIM(
                            LEFT(
                                Rest,
                                CHARINDEX(',', Rest) - 1
                            )
                        )
                    ),
                    ''
                )
            ),

            CONVERT(
                NVARCHAR(MAX),
                STUFF(
                    Rest,
                    1,
                    CHARINDEX(',', Rest),
                    ''
                )
            )

        FROM SampleSplit

        WHERE
            Rest <> ''
            AND CHARINDEX(',', Rest) > 0
    )


    /* =====================================================
       Insert 1 Sample = 1 Pending
       ===================================================== */

    INSERT INTO [Micro Sampling]
    (
        MicroID,
        SamplingID,

        Department,

        [Type],
        [Name],
        Tank,
        Machine,

        Item,
        Selection,
        Sample,

        [Date],
        [Time],

        Batch,
        Status,
        DataType,

        Queue_ID
    )

    SELECT
        @MicroID,

        @BulkPrefix
        +
        CASE
            WHEN (@LastRunning + SampleOrder) < 100
            THEN RIGHT(
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    @LastRunning + SampleOrder
                ),
                2
            )
            ELSE CONVERT(
                NVARCHAR(20),
                @LastRunning + SampleOrder
            )
        END,

        @Department,

        @Type,
        @Name,
        NULL,
        @Machine,

        @Item,
        @Selection,
        SampleValue,

        @InputDate,
        @InputTime,

        @Batch,
        'Pending',
        'PlanSwab',

        @Queue_ID

    FROM SampleSplit

    WHERE
        SampleValue IS NOT NULL

    ORDER BY
        SampleOrder ASC

    OPTION (MAXRECURSION 1000);

END


/* =========================================================
   MODE 1
   มี Type
   ========================================================= */

ELSE IF @Type IS NOT NULL
BEGIN


    /* =====================================================
       6. Variable
       ===================================================== */

    DECLARE @Department_NO_TypeMode NVARCHAR(50);

    DECLARE @DepartmentList NVARCHAR(MAX);

    DECLARE @DepartmentNoList NVARCHAR(MAX);

    DECLARE @Type_NO NVARCHAR(50);

    DECLARE @TankList NVARCHAR(MAX);


    /* =====================================================
       7. Department + Department_No จาก Sum_data_type
          โดยยึดแถวของ Type ที่เลือก

       เหตุผล:
       - MODE 1 เป็นการเลือก Type
       - Department / Department_No / Type / Type_No / Tank
         ถูกเก็บอยู่ใน Sum_data_type แถวเดียวกัน
       - จึงต้องอ่าน Department mapping จากแถว Type เดียวกัน
       ===================================================== */

    SELECT TOP 1

        @DepartmentList =
            CONVERT(
                NVARCHAR(MAX),
                SD.Department
            ),

        @DepartmentNoList =
            CONVERT(
                NVARCHAR(MAX),
                SD.Department_No
            )

    FROM Sum_data_type AS SD

    CROSS APPLY STRING_SPLIT
    (
        ISNULL(
            CONVERT(
                NVARCHAR(MAX),
                SD.Department
            ),
            ''
        ),
        ','
    ) AS D

    WHERE
        LOWER(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        SD.[Type]
                    )
                )
            )
        )
        =
        LOWER(@Type)

        AND LOWER(
                LTRIM(
                    RTRIM(D.value)
                )
            )
            =
            LOWER(@Department);


    /* =====================================================
       ถ้าหา Department ไม่เจอ
       ===================================================== */

    IF @DepartmentList IS NULL
       OR @DepartmentNoList IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   8. Map Department -> Department_No
   ========================================================= */

    ;WITH DepartmentSplit AS
    (
        SELECT

            1 AS PositionNo,

            CONVERT(
                NVARCHAR(255),

                LTRIM(
                    RTRIM(
                        LEFT
                        (
                            ISNULL(@DepartmentList, '') + ',',

                            CHARINDEX
                            (
                                ',',
                                ISNULL(@DepartmentList, '') + ','
                            ) - 1
                        )
                    )
                )
            ) AS DepartmentValue,

            CONVERT(
                NVARCHAR(MAX),

                STUFF
                (
                    ISNULL(@DepartmentList, '') + ',',

                    1,

                    CHARINDEX
                    (
                        ',',
                        ISNULL(@DepartmentList, '') + ','
                    ),

                    ''
                )
            ) AS Rest


        UNION ALL


        SELECT

            PositionNo + 1,

            CONVERT(
                NVARCHAR(255),

                LTRIM(
                    RTRIM(
                        LEFT
                        (
                            Rest,
                            CHARINDEX(',', Rest) - 1
                        )
                    )
                )
            ),

            CONVERT(
                NVARCHAR(MAX),

                STUFF
                (
                    Rest,
                    1,
                    CHARINDEX(',', Rest),
                    ''
                )
            )

        FROM DepartmentSplit

        WHERE
            Rest <> ''
            AND CHARINDEX(',', Rest) > 0
    ),

    DepartmentNoSplit AS
    (
        SELECT

            1 AS PositionNo,

            CONVERT(
                NVARCHAR(50),

                LTRIM(
                    RTRIM(
                        LEFT
                        (
                            ISNULL(@DepartmentNoList, '') + ',',

                            CHARINDEX
                            (
                                ',',
                                ISNULL(@DepartmentNoList, '') + ','
                            ) - 1
                        )
                    )
                )
            ) AS DepartmentNoValue,

            CONVERT(
                NVARCHAR(MAX),

                STUFF
                (
                    ISNULL(@DepartmentNoList, '') + ',',

                    1,

                    CHARINDEX
                    (
                        ',',
                        ISNULL(@DepartmentNoList, '') + ','
                    ),

                    ''
                )
            ) AS Rest


        UNION ALL


        SELECT

            PositionNo + 1,

            CONVERT(
                NVARCHAR(50),

                LTRIM(
                    RTRIM(
                        LEFT
                        (
                            Rest,
                            CHARINDEX(',', Rest) - 1
                        )
                    )
                )
            ),

            CONVERT(
                NVARCHAR(MAX),

                STUFF
                (
                    Rest,
                    1,
                    CHARINDEX(',', Rest),
                    ''
                )
            )

        FROM DepartmentNoSplit

        WHERE
            Rest <> ''
            AND CHARINDEX(',', Rest) > 0
    )


    SELECT TOP 1

        @Department_NO_TypeMode =
            DN.DepartmentNoValue

    FROM DepartmentSplit AS D

    INNER JOIN DepartmentNoSplit AS DN
        ON DN.PositionNo = D.PositionNo

    WHERE

        LOWER(
            LTRIM(
                RTRIM(D.DepartmentValue)
            )
        )
        =
        LOWER(@Department)

    OPTION (MAXRECURSION 500);


/* =========================================================
   Mapping Department ไม่เจอ
   ========================================================= */

    IF NULLIF(
        LTRIM(
            RTRIM(@Department_NO_TypeMode)
        ),
        ''
    ) IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   9. Type_No + Tank จาก Sum_data_type
   ========================================================= */

    SELECT TOP 1

        @Type_NO =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(50),
                            SD.Type_No
                        )
                    )
                ),
                ''
            ),

        @TankList =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(MAX),
                            SD.Tank
                        )
                    )
                ),
                ''
            )

    FROM Sum_data_type AS SD

    WHERE
        LOWER(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        SD.[Type]
                    )
                )
            )
        )
        =
        LOWER(@Type);


/* =========================================================
   Type_No / Tank ไม่ครบ
   ========================================================= */

    IF @Type_NO IS NULL
       OR @TankList IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   10. Prefix
   ========================================================= */

    DECLARE @TypePrefix NVARCHAR(150);


    SET @TypePrefix =

        'QSM-'

        + CONVERT(
            CHAR(8),
            @InputDate,
            112
        )

        + '-'

        + LTRIM(
            RTRIM(
                @Department_NO_TypeMode
            )
        )

        + LTRIM(
            RTRIM(
                @Type_NO
            )
        )

        + '-';


/* =========================================================
   11. แตก Tank
   ========================================================= */

    ;WITH TankSplit AS
    (
        SELECT

            1 AS TankOrder,

            CONVERT
            (
                NVARCHAR(MAX),

                NULLIF(
                    LTRIM(
                        RTRIM(
                            LEFT
                            (
                                @TankList + ',',

                                CHARINDEX
                                (
                                    ',',
                                    @TankList + ','
                                ) - 1
                            )
                        )
                    ),
                    ''
                )
            ) AS TankValue,

            CONVERT
            (
                NVARCHAR(MAX),

                STUFF
                (
                    @TankList + ',',

                    1,

                    CHARINDEX
                    (
                        ',',
                        @TankList + ','
                    ),

                    ''
                )
            ) AS Rest


        UNION ALL


        SELECT

            TankOrder + 1,

            CONVERT
            (
                NVARCHAR(MAX),

                NULLIF(
                    LTRIM(
                        RTRIM(
                            LEFT
                            (
                                Rest,
                                CHARINDEX(',', Rest) - 1
                            )
                        )
                    ),
                    ''
                )
            ),

            CONVERT
            (
                NVARCHAR(MAX),

                STUFF
                (
                    Rest,
                    1,
                    CHARINDEX(',', Rest),
                    ''
                )
            )

        FROM TankSplit

        WHERE
            Rest <> ''
            AND CHARINDEX(',', Rest) > 0
    )


/* =========================================================
   12. INSERT TYPE MODE
   ========================================================= */

    INSERT INTO [Micro Sampling]
    (
        MicroID,
        SamplingID,

        Department,

        [Type],
        [Name],
        Tank,
        Machine,

        Item,
        Selection,
        Sample,

        [Date],
        [Time],

        Batch,
        Status,
        DataType,

        Queue_ID
    )

    SELECT

        @MicroID,


        @TypePrefix

        +

        CASE

            WHEN (@LastRunning + TankOrder) < 100

            THEN RIGHT
            (
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    @LastRunning + TankOrder
                ),
                2
            )

            ELSE

                CONVERT(
                    NVARCHAR(20),
                    @LastRunning + TankOrder
                )

        END,


        @Department,

        @Type,
        @Name,

        CASE
            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 3
                 AND @SidelTank3Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank3Extra)

            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 4
                 AND @SidelTank4Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank4Extra)

            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 5
                 AND @SidelTank5Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank5Extra)

            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 10
                 AND @SidelTank10Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank10Extra)

            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 11
                 AND @SidelTank11Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank11Extra)

            WHEN LOWER(LTRIM(RTRIM(@Type))) = 'sidel'
                 AND TankOrder = 12
                 AND @SidelTank12Extra IS NOT NULL
            THEN CONCAT(TankValue, ' | ', @SidelTank12Extra)

            ELSE TankValue
        END,

        @Machine,

        @Item,
        @Selection,
        @Sample,

        @InputDate,
        @InputTime,

        @Batch,

        'Pending',
        'PlanSwab',

        @Queue_ID


    FROM TankSplit

    WHERE
        TankValue IS NOT NULL

    ORDER BY
        TankOrder ASC

    OPTION (MAXRECURSION 1000);

END


/* =========================================================
   MODE 2
   UHT3 + Gr.L + Sidel + หัว Fill 70 หัว
   ========================================================= */

ELSE IF LOWER(@Department) = 'uht3'
    AND LOWER(@Item) = 'gr.l'
    AND LOWER(@Selection) = 'sidel'
    AND @Sample = N'หัว Fill 70 หัว'
BEGIN


    DECLARE @Department_NO NVARCHAR(50);

    DECLARE @Section_NO NVARCHAR(50);


/* =========================================================
   13. Department_NO + Section_NO
   ========================================================= */

    SELECT TOP 1

        @Department_NO =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(50),
                            Department_NO
                        )
                    )
                ),
                ''
            ),

        @Section_NO =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(50),
                            Section_NO
                        )
                    )
                ),
                ''
            )

    FROM All_Plant_Data

    WHERE

        LOWER(
            LTRIM(
                RTRIM(Department)
            )
        )
        =
        LOWER(@Department)

        AND

        LOWER(
            LTRIM(
                RTRIM(Section)
            )
        )
        =
        LOWER(@Selection);


/* =========================================================
   Mapping ไม่เจอ
   ========================================================= */

    IF @Department_NO IS NULL
       OR @Section_NO IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   14. Prefix
   ========================================================= */

    DECLARE @Prefix NVARCHAR(100);


    SET @Prefix =

        'QSM-'

        + CONVERT(
            CHAR(8),
            @InputDate,
            112
        )

        + '-'

        + @Department_NO

        + @Section_NO

        + '-';


/* =========================================================
   15. Numbers 1 - 70
   ========================================================= */

    ;WITH Numbers AS
    (
        SELECT
            1 AS N

        UNION ALL

        SELECT
            N + 1

        FROM Numbers

        WHERE
            N < 70
    )


    INSERT INTO [Micro Sampling]
    (
        MicroID,
        SamplingID,

        Department,

        [Type],
        [Name],
        Tank,
        Machine,

        Item,
        Selection,
        Sample,

        [Date],
        [Time],

        Batch,
        Status,
        DataType,

        Queue_ID
    )


    SELECT

        @MicroID,


        @Prefix

        +

        CASE

            WHEN (@LastRunning + N) < 100

            THEN RIGHT
            (
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    @LastRunning + N
                ),
                2
            )

            ELSE

                CONVERT(
                    NVARCHAR(20),
                    @LastRunning + N
                )

        END,


        @Department,

        @Type,
        @Name,
        NULL,
        @Machine,

        @Item,
        @Selection,
        @Sample,

        @InputDate,
        @InputTime,

        @Batch,

        'Pending',
        'PlanSwab',

        @Queue_ID


    FROM Numbers

    ORDER BY
        N

    OPTION (MAXRECURSION 70);

END


/* =========================================================
   MODE 3
   NORMAL
   ========================================================= */

ELSE
BEGIN


/* =========================================================
   16. รับ SampID เดิม
   ========================================================= */

    DECLARE @InputSamplingID NVARCHAR(255) =
        NULLIF(
            LTRIM(
                RTRIM(
                    '{{SampID}}'
                )
            ),
            ''
        );


/* =========================================================
   ถ้า SampID ว่าง
   ไม่ Error / ไม่ Insert
   ========================================================= */

    IF @InputSamplingID IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   17. ตัด Running เดิมออก
   ========================================================= */

    DECLARE @NormalPrefix NVARCHAR(255);


    IF CHARINDEX(
           '-',
           REVERSE(@InputSamplingID)
       ) > 0
    BEGIN

        SET @NormalPrefix =

            LEFT
            (
                @InputSamplingID,

                LEN(@InputSamplingID)

                -

                CHARINDEX
                (
                    '-',
                    REVERSE(@InputSamplingID)
                )

                + 1
            );

    END

    ELSE
    BEGIN

        SET @NormalPrefix =
            NULL;

    END;


/* =========================================================
   Prefix ไม่ถูกต้อง
   ========================================================= */

    IF @NormalPrefix IS NULL
    BEGIN

        ROLLBACK TRANSACTION;

        SELECT
            CAST(NULL AS INT) AS Queue_ID,
            CAST(NULL AS INT) AS Queue_No,
            CAST(NULL AS DATE) AS Queue_Date,
            CAST(NULL AS NVARCHAR(255)) AS Department,
            CAST(NULL AS INT) AS Pending_Count,
            CAST(NULL AS NVARCHAR(255)) AS FirstSamplingID,
            CAST(NULL AS NVARCHAR(255)) AS LastSamplingID,
            CAST(NULL AS NVARCHAR(50)) AS Result;

        RETURN;
    END;


/* =========================================================
   18. SamplingID ใหม่
   ========================================================= */

    DECLARE @NormalSamplingID NVARCHAR(255);


    SET @NormalSamplingID =

        @NormalPrefix

        +

        CASE

            WHEN (@LastRunning + 1) < 100

            THEN RIGHT
            (
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    @LastRunning + 1
                ),
                2
            )

            ELSE

                CONVERT(
                    NVARCHAR(20),
                    @LastRunning + 1
                )

        END;


/* =========================================================
   19. INSERT NORMAL
   ========================================================= */

    INSERT INTO [Micro Sampling]
    (
        MicroID,
        SamplingID,

        Department,

        [Type],
        [Name],
        Tank,
        Machine,

        Item,
        Selection,
        Sample,

        [Date],
        [Time],

        Batch,
        Status,
        DataType,

        Queue_ID
    )

    VALUES
    (
        @MicroID,
        @NormalSamplingID,

        @Department,

        @Type,
        @Name,
        NULL,
        @Machine,

        @Item,
        @Selection,
        @Sample,

        @InputDate,
        @InputTime,

        @Batch,

        'Pending',
        'PlanSwab',

        @Queue_ID
    );

END;


/* =========================================================
   20. COMMIT
   ========================================================= */

COMMIT TRANSACTION;


/* =========================================================
   21. RETURN
   ========================================================= */

SELECT

    @Queue_ID AS Queue_ID,

    @Queue_No AS Queue_No,

    @InputDate AS Queue_Date,

    @Department AS Department,


    (
        SELECT COUNT(*)

        FROM [Micro Sampling] AS MS

        WHERE
            MS.Queue_ID = @Queue_ID
            AND MS.Status = 'Pending'
    ) AS Pending_Count,


    (
        SELECT
            MIN(MS.SamplingID)

        FROM [Micro Sampling] AS MS

        WHERE
            MS.Queue_ID = @Queue_ID
    ) AS FirstSamplingID,


    (
        SELECT
            MAX(MS.SamplingID)

        FROM [Micro Sampling] AS MS

        WHERE
            MS.Queue_ID = @Queue_ID
    ) AS LastSamplingID,


    CAST(
        'PENDING_CREATED'
        AS NVARCHAR(50)
    ) AS Result;


END TRY


BEGIN CATCH

    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END;

    THROW;

END CATCH;
