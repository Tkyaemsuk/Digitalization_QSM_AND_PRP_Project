/*
Application: QSM Microbiological
Query name: Genarate_Inprocess
File: Genarate_Inprocess.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_fb06ae31362b4cfd886c4cdd38baa2be
Budibase function: read
Bindings: Department, Type, Name, Date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Generate_Inprocess_SamplingID_Preview_Comma_Mapping_Fixed.sql */

SET NOCOUNT ON;


/* ============================================================
   1. รับค่าจาก Budibase
   ============================================================ */

DECLARE @Department NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Department}}')), '');

DECLARE @Type NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Type}}')), '');

DECLARE @Name NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{Name}}')), '');

DECLARE @Date DATE =
    TRY_CONVERT(
        DATE,
        NULLIF(LTRIM(RTRIM('{{Date}}')), '')
    );


/* ============================================================
   2. ตัวแปร
   ============================================================ */

DECLARE @Department_NO NVARCHAR(50) = NULL;
DECLARE @Type_NO NVARCHAR(50) = NULL;

DECLARE @Running INT = NULL;
DECLARE @SamplingID NVARCHAR(150) = NULL;


/* ============================================================
   3. ถ้าข้อมูลสำคัญยังไม่ครบ
      SamplingID = NULL
   ============================================================ */

IF @Department IS NULL
   OR @Type IS NULL
   OR @Date IS NULL
BEGIN

    SELECT
        NULL AS SamplingID,
        NULL AS RunningNo,

        @Department AS Department,
        NULL AS Department_NO,

        @Type AS [Type],
        NULL AS Type_NO,

        @Name AS [Name],
        @Date AS SampleDate;

    RETURN;
END;


/* ============================================================
   4. สร้างลำดับ 1 - 50
      สำหรับจับคู่ค่าที่คั่นด้วย comma
   ============================================================ */

;WITH Numbers AS
(
    SELECT 1 AS N

    UNION ALL

    SELECT N + 1
    FROM Numbers
    WHERE N < 50
),


/* ============================================================
   5. แปลงข้อมูลจาก Inprocess เป็น XML

   รองรับ:

   Department
   PRP1,UHT1

   Department_NO
   03,06

   Type
   DNA,ATP

   Type_NO
   02,03

   Name
   corn base,DNA-J-rice (NEW)
   ============================================================ */

Parsed AS
(
    SELECT
        I.ID,
        I.Department,
        I.Department_NO,
        I.[Type],
        I.Type_NO,
        I.[Name],


        /* Department */
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


        /* Department_NO */
        CAST(
            '<x><v>'
            + REPLACE(
                ISNULL(
                    CONVERT(
                        NVARCHAR(MAX),
                        I.Department_NO
                    ),
                    ''
                ),
                ',',
                '</v><v>'
            )
            + '</v></x>'
            AS XML
        ) AS DepartmentNoXml,


        /* Type */
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


        /* Type_NO */
        CAST(
            '<x><v>'
            + REPLACE(
                ISNULL(
                    CONVERT(
                        NVARCHAR(MAX),
                        I.Type_NO
                    ),
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


/* ============================================================
   6. จับคู่ Department กับ Department_NO

   ตัวอย่าง:

   Department:
   PRP1,UHT1

   Department_NO:
   03,06

   ผล:

   PRP1 -> 03
   UHT1 -> 06
   ============================================================ */

DepartmentMap AS
(
    SELECT
        P.ID,

        LTRIM(
            RTRIM(
                P.DepartmentXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(255)'
                )
            )
        ) AS DepartmentValue,

        LTRIM(
            RTRIM(
                P.DepartmentNoXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(50)'
                )
            )
        ) AS DepartmentNoValue

    FROM Parsed P

    CROSS JOIN Numbers N

    WHERE
        P.DepartmentXml.exist(
            '/x/v[sql:column("N.N")]'
        ) = 1
),


/* ============================================================
   7. จับคู่ Type กับ Type_NO แยกต่างหาก

   ตัวอย่าง:

   Type:
   DNA,ATP

   Type_NO:
   02,03

   ผล:

   DNA -> 02
   ATP -> 03

   ไม่ให้ตำแหน่ง Department มากระทบ Type
   ============================================================ */

TypeMap AS
(
    SELECT
        P.ID,

        LTRIM(
            RTRIM(
                P.TypeXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(255)'
                )
            )
        ) AS TypeValue,

        LTRIM(
            RTRIM(
                P.TypeNoXml.value(
                    '(/x/v[sql:column("N.N")]/text())[1]',
                    'NVARCHAR(50)'
                )
            )
        ) AS TypeNoValue

    FROM Parsed P

    CROSS JOIN Numbers N

    WHERE
        P.TypeXml.exist(
            '/x/v[sql:column("N.N")]'
        ) = 1
)


/* ============================================================
   8. หา Department_NO + Type_NO
   ============================================================ */

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
    LOWER(LTRIM(RTRIM(D.DepartmentValue)))
        = LOWER(@Department)


    /* Type ที่เลือก */
    AND LOWER(LTRIM(RTRIM(T.TypeValue)))
        = LOWER(@Type)


    /* --------------------------------------------------------
       ถ้าเลือก Name มา
       ตรวจสอบ Name ด้วย

       รองรับ:
       corn base,DNA-J-rice (NEW)
       -------------------------------------------------------- */

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


/* ============================================================
   9. ถ้า Mapping ไม่เจอ
   ============================================================ */

IF @Department_NO IS NULL
   OR @Type_NO IS NULL
BEGIN

    SELECT
        NULL AS SamplingID,
        NULL AS RunningNo,

        @Department AS Department,
        @Department_NO AS Department_NO,

        @Type AS [Type],
        @Type_NO AS Type_NO,

        @Name AS [Name],
        @Date AS SampleDate;

    RETURN;
END;


/* ============================================================
   10. จัด Department_NO เป็น 2 หลัก

   3 -> 03
   6 -> 06
   ============================================================ */

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


/* ============================================================
   11. จัด Type_NO เป็น 2 หลัก
   ============================================================ */

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


/* ============================================================
   12. DateCode แบบ ค.ศ.

   2026-09-05
   ->
   20260905
   ============================================================ */

DECLARE @DateCode CHAR(8);

SET @DateCode =
    CONVERT(
        CHAR(8),
        @Date,
        112
    );


/* ============================================================
   13. สร้าง Prefix

   ตัวอย่าง:

   UHT1 -> 06
   DNA  -> 02

   QSM-20260905-0602-
   ============================================================ */

DECLARE @Prefix NVARCHAR(100);

SET @Prefix =
      'QSM-'
    + @DateCode
    + '-'
    + @Department_NO
    + @Type_NO
    + '-';


/* ============================================================
   14. หา Running ล่าสุด

   ตัวอย่าง:

   QSM-20260905-0602-01
   QSM-20260905-0602-02

   ตัวใหม่ = 03
   ============================================================ */

SELECT
    @Running =
        ISNULL
        (
            MAX
            (
                TRY_CONVERT
                (
                    INT,

                    SUBSTRING(
                        SamplingID,
                        LEN(@Prefix) + 1,
                        50
                    )
                )
            ),
            0
        ) + 1

FROM [Micro Sampling]

WHERE
    SamplingID LIKE @Prefix + '%';


/* ============================================================
   15. สร้าง SamplingID

   1   -> 01
   2   -> 02
   99  -> 99
   100 -> 100
   ============================================================ */

SET @SamplingID =
      @Prefix

    + CASE

        WHEN @Running < 100
        THEN
            RIGHT(
                '00'
                + CONVERT(
                    NVARCHAR(20),
                    @Running
                ),
                2
            )

        ELSE
            CONVERT(
                NVARCHAR(20),
                @Running
            )

      END;


/* ============================================================
   16. Return
   ============================================================ */

SELECT
    @SamplingID AS SamplingID,

    @Running AS RunningNo,

    @Department AS Department,
    @Department_NO AS Department_NO,

    @Type AS [Type],
    @Type_NO AS Type_NO,

    @Name AS [Name],

    @Date AS SampleDate;
