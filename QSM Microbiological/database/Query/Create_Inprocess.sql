/*
Application: QSM Microbiological
Query name: Create_Inprocess
File: Create_Inprocess.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_c81d2d5c4b2642378112ee63ec7ef278
Budibase function: create
Bindings: Department, Type, Name, Machine, Tank, Page, Date, Time, Batch
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Insert_Inprocess_MicroSampling_Comma_Mapping_Fixed_V2_Queue_GlobalRunning_Tank_Machine_Page_Inprocess.sql */

SET NOCOUNT ON;
SET XACT_ABORT ON;


/* =========================================================
   0. Queue System
   - Queue แยกตาม Date + Department
   - วันเดียวกัน + Department เดียวกัน ใช้ Queue เดิม
   - Department ใหม่ในวันเดียวกันได้ Queue_No ถัดไป
   ========================================================= */

IF OBJECT_ID('dbo.Micro_Queue', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Micro_Queue
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        Queue_No INT NOT NULL,
        Queue_Date DATE NOT NULL,
        Department NVARCHAR(255) NOT NULL,
        Status NVARCHAR(50) NOT NULL DEFAULT 'Waiting',
        Created_At DATETIME2(0) NOT NULL DEFAULT SYSDATETIME(),
        Started_At DATETIME2(0) NULL,
        Completed_At DATETIME2(0) NULL
    );
END;

IF COL_LENGTH('dbo.Micro Sampling', 'Queue_ID') IS NULL
BEGIN
    ALTER TABLE [Micro Sampling]
    ADD Queue_ID INT NULL;
END;

BEGIN TRANSACTION;

BEGIN TRY


/* ============================================================
   1. รับค่าจาก Budibase
   ============================================================ */

DECLARE @Department NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Department}}')), '');

DECLARE @Type NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Type}}')), '');

DECLARE @Name NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Name}}')), '');

DECLARE @Machine NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Machine}}')), '');
DECLARE @Tank NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Tank}}')), '');
DECLARE @Page NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Page}}')), '');
DECLARE @InputDate DATE =
    TRY_CONVERT(
        DATE,
        NULLIF(LTRIM(RTRIM('{{Date}}')), '')
    );


/* ------------------------------------------------------------
   Time จาก Budibase อาจมาเป็น:
   1900-01-01T15:28:00.000Z

   เก็บ clock time เดิม 15:28
   ไม่บวก/ลบ timezone
   ------------------------------------------------------------ */

DECLARE @TimeRaw NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Time}}')), '');

DECLARE @InputTime DATETIME = NULL;

IF @TimeRaw IS NOT NULL
BEGIN

    SET @InputTime =
        COALESCE
        (
            TRY_CONVERT(DATETIME, @TimeRaw),

            CAST(
                TRY_CONVERT(
                    DATETIMEOFFSET,
                    @TimeRaw,
                    127
                )
                AS DATETIME
            )
        );

END;


/* Batch จะใส่อะไรก็ได้ / ว่างก็ได้ */
DECLARE @Batch NVARCHAR(255) =
    '{{Batch}}';


/* ============================================================
   2. ตัวแปร Mapping
   ============================================================ */

DECLARE @Department_NO NVARCHAR(50) = NULL;
DECLARE @Type_NO NVARCHAR(50) = NULL;

DECLARE @SamplingID NVARCHAR(150) = NULL;

/* ============================================================
   Queue: หา/สร้างตาม Date + Department
   ถ้า Date หรือ Department ว่าง จะไม่สร้าง Queue
   ============================================================ */

DECLARE @Queue_ID INT = NULL;
DECLARE @Queue_No INT = NULL;

IF @InputDate IS NOT NULL
   AND @Department IS NOT NULL
BEGIN
    SELECT TOP 1
        @Queue_ID = Q.id,
        @Queue_No = Q.Queue_No
    FROM dbo.Micro_Queue AS Q WITH (UPDLOCK, HOLDLOCK)
    WHERE
        Q.Queue_Date = @InputDate
        AND LOWER(LTRIM(RTRIM(Q.Department))) = LOWER(@Department)
    ORDER BY Q.id ASC;

    IF @Queue_ID IS NULL
    BEGIN
        SELECT
            @Queue_No = ISNULL(MAX(Q.Queue_No), 0) + 1
        FROM dbo.Micro_Queue AS Q WITH (UPDLOCK, HOLDLOCK)
        WHERE Q.Queue_Date = @InputDate;

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

        SET @Queue_ID = CONVERT(INT, SCOPE_IDENTITY());
    END;

    UPDATE dbo.Micro_Queue
    SET
        Status = 'Waiting',
        Started_At = NULL,
        Completed_At = NULL
    WHERE
        id = @Queue_ID
        AND Status = 'Completed';
END;



/* ============================================================
   3. หา Department_NO + Type_NO จาก Inprocess

   สำคัญ:
   Department และ Department_NO
   จะจับคู่ตำแหน่งกันเอง

   Type และ Type_NO
   จะจับคู่ตำแหน่งกันเอง

   ไม่ให้ตำแหน่ง Department ไปรบกวน Type

   ตัวอย่าง:

   Department     = PRP1,UHT1
   Department_NO  = 03,06

   Type           = DNA,ATP
   Type_NO        = 02,03

   UHT1 -> 06
   DNA  -> 02
   ============================================================ */

IF @Department IS NOT NULL
   AND @Type IS NOT NULL
BEGIN

    ;WITH Numbers AS
    (
        SELECT 1 AS N
        UNION ALL
        SELECT N + 1
        FROM Numbers
        WHERE N < 50
    ),

    /* --------------------------------------------------------
       แปลงข้อมูล comma เป็น XML
       -------------------------------------------------------- */
    Parsed AS
    (
        SELECT
            I.ID,
            I.Department,
            I.Department_NO,
            I.[Type],
            I.Type_NO,
            I.[Name],

            CAST(
                '<x><v>'
                + REPLACE(
                    ISNULL(I.Department, ''),
                    ',',
                    '</v><v>'
                )
                + '</v></x>'
                AS XML
            ) AS DepartmentXml,

            CAST(
                '<x><v>'
                + REPLACE(
                    ISNULL(
                        CONVERT(NVARCHAR(MAX), I.Department_NO),
                        ''
                    ),
                    ',',
                    '</v><v>'
                )
                + '</v></x>'
                AS XML
            ) AS DepartmentNoXml,

            CAST(
                '<x><v>'
                + REPLACE(
                    ISNULL(I.[Type], ''),
                    ',',
                    '</v><v>'
                )
                + '</v></x>'
                AS XML
            ) AS TypeXml,

            CAST(
                '<x><v>'
                + REPLACE(
                    ISNULL(
                        CONVERT(NVARCHAR(MAX), I.Type_NO),
                        ''
                    ),
                    ',',
                    '</v><v>'
                )
                + '</v></x>'
                AS XML
            ) AS TypeNoXml

        FROM Inprocess I
    ),

    /* --------------------------------------------------------
       Department mapping

       PRP1,UHT1
       03,06

       N=1 -> PRP1 / 03
       N=2 -> UHT1 / 06
       -------------------------------------------------------- */
    DepartmentMap AS
    (
        SELECT
            P.ID,

            LTRIM(RTRIM(
                P.DepartmentXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(255)'
                )
            )) AS DepartmentValue,

            LTRIM(RTRIM(
                P.DepartmentNoXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(50)'
                )
            )) AS DepartmentNoValue

        FROM Parsed P

        CROSS JOIN Numbers N

        WHERE
            P.DepartmentXml.exist(
                '/x/v[sql:column("N.N")]'
            ) = 1
    ),

    /* --------------------------------------------------------
       Type mapping แยกออกมาต่างหาก

       DNA,ATP
       02,03

       N=1 -> DNA / 02
       N=2 -> ATP / 03
       -------------------------------------------------------- */
    TypeMap AS
    (
        SELECT
            P.ID,

            LTRIM(RTRIM(
                P.TypeXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(255)'
                )
            )) AS TypeValue,

            LTRIM(RTRIM(
                P.TypeNoXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(50)'
                )
            )) AS TypeNoValue

        FROM Parsed P

        CROSS JOIN Numbers N

        WHERE
            P.TypeXml.exist(
                '/x/v[sql:column("N.N")]'
            ) = 1
    )

    SELECT TOP 1

        @Department_NO =
            NULLIF(
                LTRIM(RTRIM(D.DepartmentNoValue)),
                ''
            ),

        @Type_NO =
            NULLIF(
                LTRIM(RTRIM(T.TypeNoValue)),
                ''
            )

    FROM Parsed P

    INNER JOIN DepartmentMap D
        ON D.ID = P.ID

    INNER JOIN TypeMap T
        ON T.ID = P.ID

    WHERE

        /* Department ที่เลือก */
        LOWER(D.DepartmentValue)
            = LOWER(@Department)

        /* Type ที่เลือก */
        AND LOWER(T.TypeValue)
            = LOWER(@Type)

        /* Name ถ้าเลือกมา ให้ตรวจสอบด้วย */
        AND
        (
            @Name IS NULL

            OR EXISTS
            (
                SELECT 1

                FROM STRING_SPLIT(
                    ISNULL(P.[Name], ''),
                    ','
                ) SN

                WHERE
                    LOWER(
                        LTRIM(RTRIM(SN.value))
                    ) = LOWER(@Name)
            )
        )

    OPTION (MAXRECURSION 50);

END;


/* ============================================================
   4. สร้าง SamplingID เมื่อข้อมูลสำหรับ ID ครบ
   ============================================================ */

IF @InputDate IS NOT NULL
   AND @Department IS NOT NULL
   AND @Department_NO IS NOT NULL
   AND @Type IS NOT NULL
   AND @Type_NO IS NOT NULL
BEGIN


    /* ========================================================
       4.1 Department_NO เป็น 2 หลัก
       ======================================================== */

    IF TRY_CONVERT(INT, @Department_NO) IS NOT NULL
    BEGIN

        SET @Department_NO =
            RIGHT(
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    TRY_CONVERT(INT, @Department_NO)
                ),
                2
            );

    END;


    /* ========================================================
       4.2 Type_NO เป็น 2 หลัก
       ======================================================== */

    IF TRY_CONVERT(INT, @Type_NO) IS NOT NULL
    BEGIN

        SET @Type_NO =
            RIGHT(
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    TRY_CONVERT(INT, @Type_NO)
                ),
                2
            );

    END;


    /* ========================================================
       4.3 Date Code แบบ ค.ศ.

       2026-09-05
       -> 20260905
       ======================================================== */

    DECLARE @DateCode CHAR(8);

    SET @DateCode =
        CONVERT(
            CHAR(8),
            @InputDate,
            112
        );


    /* ========================================================
       4.4 Prefix

       UHT1 -> Department_NO 06
       DNA  -> Type_NO 02

       QSM-20260905-0602-
       ======================================================== */

    DECLARE @Prefix NVARCHAR(100);

    SET @Prefix =
          'qsm-'
        + @DateCode
        + '-'
        + @Department_NO
        + @Type_NO
        + '-';


    /* ========================================================
       4.5 หา Running ล่าสุด
       ใหม่: ต่อเลขท้ายตาม Date + Department
       ไม่สน Type / Type_NO / Prefix
       ======================================================== */

    DECLARE @LastRunning INT = 0;

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
                            LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.SamplingID))),
                            CHARINDEX
                            (
                                '-',
                                REVERSE(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.SamplingID))))
                            ) - 1
                        )
                    )
                ),
                0
            )
    FROM [Micro Sampling] AS MS WITH (UPDLOCK, HOLDLOCK)
    WHERE
        TRY_CONVERT(DATE, MS.[Date]) = @InputDate
        AND LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Department)))) = LOWER(@Department)
        AND NULLIF(LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.SamplingID))), '') IS NOT NULL;


    /* ========================================================
       4.6 Running ใหม่
       ======================================================== */

    DECLARE @RunningNo INT =
        @LastRunning + 1;


    /* ========================================================
       4.7 สร้าง SamplingID

       1   -> 01
       2   -> 02
       99  -> 99
       100 -> 100
       ======================================================== */

    SET @SamplingID =
          @Prefix

        + CASE

            WHEN @RunningNo < 100
            THEN
                RIGHT(
                    '00'
                    + CONVERT(
                        NVARCHAR(20),
                        @RunningNo
                    ),
                    2
                )

            ELSE
                CONVERT(
                    NVARCHAR(20),
                    @RunningNo
                )

          END;

END;


/* ============================================================
   5. Insert Micro Sampling

   ถ้า Mapping หาไม่เจอจริง
   SamplingID จะเป็น NULL ได้
   ============================================================ */

INSERT INTO [Micro Sampling]
(
    SamplingID,
    Department,
    [Type],
	  Machine,
    [Name],
    Tank,
    [Date],
    [Time],
    Batch,
    Page,
    Status,
    DataType,
    Queue_ID
)
VALUES
(
    @SamplingID,
    @Department,
    @Type,
    @Machine,
    @Name,
    @Tank,
    @InputDate,
    @InputTime,
    @Batch,
    @Page,
    'Pending',
    'Inprocess',
    @Queue_ID
);


/* ============================================================
   6. Commit
   ============================================================ */

COMMIT TRANSACTION;


/* ============================================================
   7. Return กลับ Budibase
   ============================================================ */

SELECT
    @SamplingID     AS SamplingID,

    @Department     AS Department,
    @Department_NO  AS Department_NO,

    @Type           AS [Type],
    @Type_NO        AS Type_NO,

    @Name           AS [Name],
		@Machine        AS Machine,  
    @Tank           AS Tank,

    @InputDate      AS [Date],
    @InputTime      AS [Time],

    @Batch           AS Batch,
    @Page            AS Page,

    @Queue_ID        AS Queue_ID,
    @Queue_No        AS Queue_No,

    'Pending'       AS Status;


END TRY

BEGIN CATCH

    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END;

    THROW;

END CATCH;
