/*
Application: QSM Microbiological
Query name: Genarate_MicroID
File: Genarate_MicroID.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_367eb22c82754f78905ef0df7485f56a
Budibase function: read
Bindings: dep, selection, item, Date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

DECLARE @Department VARCHAR(100) = '{{dep}}';
DECLARE @Selection VARCHAR(100) = '{{selection}}';
DECLARE @Item VARCHAR(100) = '{{item}}';
DECLARE @Date DATE = CAST('{{Date}}' AS DATE);

DECLARE @DepNo VARCHAR(2);
DECLARE @Selected VARCHAR(100);
DECLARE @Running INT;


/* ============================================
   1. ดึง Department_NO และ Section_NO
      โดยใช้ Item เป็นเงื่อนไขด้วย
   ============================================ */

SELECT TOP 1
    @DepNo = Department_NO,
    @Selected = Section_NO
FROM All_Plant_Data
WHERE Department = @Department
  AND Section = @Selection
  AND Item = @Item;


/* ============================================
   2. ตรวจสอบว่า Department + Section + Item
      มีข้อมูลใน All_Plant_Data หรือไม่
   ============================================ */



/* ============================================
   3. เช็คว่า Department นี้
      เคยสร้าง Sampling ในวันนี้หรือยัง

      ถ้ามี → ใช้ Running เดิม
      ถ้าไม่มี → สร้างเลขใหม่ +1
   ============================================ */

SELECT
    @Running = MAX(
        TRY_CAST(
            RIGHT(MicroID, 2) AS INT
        )
    )
FROM [Micro Sampling]
WHERE CAST([Date] AS DATE) = @Date
  AND Department = @Department;


/* ============================================
   4. ถ้าแผนกนี้ยังไม่มีในวันนี้
      ให้หา Running สูงสุดของวันนี้ + 1
   ============================================ */

IF @Running IS NULL
BEGIN

    SELECT
        @Running =
            ISNULL(
                MAX(
                    TRY_CAST(
                        RIGHT(MicroID, 2) AS INT
                    )
                ),
                0
            ) + 1
    FROM [Micro Sampling]
    WHERE CAST([Date] AS DATE) = @Date;

END;


/* ============================================
   5. สร้าง SamplingID
      Item ไม่ถูกนำมาต่อใน ID
   ============================================ */

SELECT
    CONCAT(
        'MICRO-',
        CONVERT(VARCHAR(8), @Date, 112),
        '-',
        @DepNo,
        '-',
        RIGHT('00' + CAST(@Running AS VARCHAR(2)), 2)
    ) AS SamplingID,

    @Running AS RunningNo,

    @DepNo AS Department_NO,

    @Selected AS Selection,

    @Date AS SampleDate;
