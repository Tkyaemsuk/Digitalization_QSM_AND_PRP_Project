/*
Application: QSM Microbiological
Query name: Genarate_Sampling
File: Genarate_Sampling.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_bdfda38f9bab47f99dd8e628d4124513
Budibase function: read
Bindings: dep, machine, item, Date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

DECLARE @Dep VARCHAR(100) = NULLIF('{{dep}}', '');
DECLARE @Machine VARCHAR(100) = NULLIF('{{machine}}', '');
DECLARE @Item VARCHAR(100) = NULLIF('{{item}}', '');
DECLARE @Date DATE = TRY_CAST(NULLIF('{{Date}}', '') AS DATE);

DECLARE @Running INT;
DECLARE @DepartmentNo VARCHAR(20);
DECLARE @SectionNo VARCHAR(20);


/* ============================================
   1. ตรวจสอบค่าที่ส่งเข้ามา
   ถ้าค่าไม่ครบ Return NULL
   ============================================ */

IF @Dep IS NULL
   OR @Machine IS NULL
   OR @Item IS NULL
   OR @Date IS NULL
BEGIN
    SELECT
        NULL AS SamplingID,
        NULL AS RunningNo,
        @Dep AS dep,
        @Machine AS machine,
        @Item AS Item,
        @Date AS SampleDate;

    RETURN;
END;


/* ============================================
   2. หา Department_NO / Section_NO
   ============================================ */

SELECT TOP 1
    @DepartmentNo = Department_NO,
    @SectionNo = Section_NO
FROM All_Plant_Data
WHERE Department = @Dep
  AND Section = @Machine
  AND Item = @Item;


/* ============================================
   3. ถ้าไม่พบข้อมูล Return NULL
   ============================================ */

IF @DepartmentNo IS NULL
   OR @SectionNo IS NULL
BEGIN
    SELECT
        NULL AS SamplingID,
        NULL AS RunningNo,
        @Dep AS dep,
        @Machine AS machine,
        @Item AS Item,
        @Date AS SampleDate;

    RETURN;
END;


/* ============================================
   4. หา Running
   ============================================ */

SELECT
    @Running =
        ISNULL(
            MAX(
                TRY_CAST(
                    RIGHT(SamplingID, 2) AS INT
                )
            ),
            0
        ) + 1
FROM [Micro Sampling]
WHERE Department = @Dep AND CAST([Date] AS DATE) = @Date;


/* ============================================
   5. สร้าง SamplingID
   ============================================ */

SELECT
    CONCAT(
        'QSM-',
        CONVERT(VARCHAR(8), @Date, 112),
        '-',
        @DepartmentNo,
        @SectionNo,
        '-',
        RIGHT('00' + CAST(@Running AS VARCHAR(10)), 2)
    ) AS SamplingID,

    @Running AS RunningNo,

    @Dep AS dep,

    @Machine AS machine,

    @Item AS Item,

    @Date AS SampleDate;
