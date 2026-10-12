/*
Application: QSM Microbiological
Query name: Selection_Inprocess
File: Selection_Inprocess.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_1748888cc8b4490abf2ca73a02010a7c
Budibase function: read
Bindings: Department, Type
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Get_Inprocess_Dependent_Options_No_CrossJoin.sql */

SET NOCOUNT ON;


/* ============================================================
   1. รับค่าจาก Budibase
   ============================================================ */

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


/* ============================================================
   2. เตรียมข้อมูล Department
   ============================================================ */

;WITH DepartmentList AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(D.value)) AS Department

    FROM Inprocess I

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.Department, ''),
        ','
    ) D

    WHERE
        LTRIM(RTRIM(D.value)) <> ''
),


/* ============================================================
   3. Type ตาม Department ที่เลือก
   ============================================================ */

TypeList AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(I.[Type])) AS [Type]

    FROM Inprocess I

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.Department, ''),
        ','
    ) D

    WHERE
        @Department IS NOT NULL

        AND LOWER(
            LTRIM(RTRIM(D.value))
        ) = LOWER(@Department)

        AND NULLIF(
            LTRIM(RTRIM(I.[Type])),
            ''
        ) IS NOT NULL
),


/* ============================================================
   4. Name ตาม Department + Type
   ============================================================ */

NameList AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(N.value)) AS [Name]

    FROM Inprocess I

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.Department, ''),
        ','
    ) D

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.[Name], ''),
        ','
    ) N

    WHERE
        @Department IS NOT NULL
        AND @Type IS NOT NULL

        AND LOWER(
            LTRIM(RTRIM(D.value))
        ) = LOWER(@Department)

        AND LOWER(
            LTRIM(RTRIM(I.[Type]))
        ) = LOWER(@Type)

        AND LTRIM(RTRIM(N.value)) <> ''
),


/* ============================================================
   5. Tank ตาม Department + Type

   สำคัญ:
   Tank แยกของ Tank เอง
   ไม่ JOIN กับ Name
   ============================================================ */

TankList AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(T.value)) AS Tank

    FROM Inprocess I

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.Department, ''),
        ','
    ) D

    CROSS APPLY STRING_SPLIT(
        ISNULL(I.Tank, ''),
        ','
    ) T

    WHERE
        @Department IS NOT NULL
        AND @Type IS NOT NULL

        AND LOWER(
            LTRIM(RTRIM(D.value))
        ) = LOWER(@Department)

        AND LOWER(
            LTRIM(RTRIM(I.[Type]))
        ) = LOWER(@Type)

        AND LTRIM(RTRIM(T.value)) <> ''
)


/* ============================================================
   6. รวม Options เป็น Provider เดียว

   Department / Type / Name / Tank
   จะไม่ Cross Join กัน
   ============================================================ */

SELECT
    Department,
    CAST(NULL AS NVARCHAR(255)) AS [Type],
    CAST(NULL AS NVARCHAR(255)) AS [Name],
    CAST(NULL AS NVARCHAR(255)) AS Tank

FROM DepartmentList


UNION ALL


SELECT
    NULL AS Department,
    [Type],
    NULL AS [Name],
    NULL AS Tank

FROM TypeList


UNION ALL


SELECT
    NULL AS Department,
    NULL AS [Type],
    [Name],
    NULL AS Tank

FROM NameList


UNION ALL


SELECT
    NULL AS Department,
    NULL AS [Type],
    NULL AS [Name],
    Tank

FROM TankList;
