/* =========================================================
   SQL Name : Budibase_Micro_Result_Power9_Checkbox_Fixed.sql
   Database : Microsoft SQL Server (MSSQL)

   - รองรับ Check / Dilution ถึง 10^9
   - Result เก็บเฉพาะค่าตัวเลข เช่น 190000
   - คงสูตรคำนวณและการปัดเศษเดิม
   - ระบุแถวด้วย SampID + Batch_Lot_no + No
   ========================================================= */

/* =========================================================
รูปแบบในการคำนวณโดยใช้ให้เลือกว่าต้องคำนวณค่าไหนโดยมี TPC , Y&M , SPORE 35C , SPORE 55C , Coliform , E.coli
========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @CalculateType NVARCHAR(50) =
    UPPER(LTRIM(RTRIM(NULLIF('{{CalculateType}}', ''))));

SET @CalculateType =
    CASE
        WHEN @CalculateType IN (
            N'Y_M', N'YM', N'Y-M', N'Y_M_RESULT', N'YM_RESULT',
            N'YEAST AND MOLD', N'YEAST&MOLD'
        ) THEN N'YM'

        WHEN @CalculateType IN (
            N'TPC', N'TPC_RESULT', N'TOTAL PLATE COUNT'
        ) THEN N'TPC'

        WHEN @CalculateType IN (
            N'35', N'35C', N'35°C', N'35C_RESULT'
        ) THEN N'35C'

        WHEN @CalculateType IN (
            N'55', N'55C', N'55°C', N'55C_RESULT'
        ) THEN N'55C'

        WHEN @CalculateType IN (
            N'COLIFORM', N'COLI', N'COLIFORM_RESULT'
        ) THEN N'COLIFORM'

        WHEN @CalculateType IN (
            N'ECOLI', N'E.COLI', N'E_COLI', N'E. COLI',
            N'ECOLI_RESULT', N'E.COLI_RESULT', N'E_COLI_RESULT'
        ) THEN N'ECOLI'

        ELSE @CalculateType
    END;

/* =========================================================
   BUDIBASE CHECKBOX INPUT NORMALIZATION
   - รองรับ 1/0, true/false, yes/no, on/off, ว่าง/null
   - 
   - ใช้สำหรับการอ่าน Checkbox ว่ามีการเลือกหรือติ๊ก หากมี จะเข้าเงื่อนไขต่อไป
   ========================================================= */
DECLARE @Check1 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check1}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check2 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check2}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check3 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check3}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check4 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check4}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check5 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check5}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check6 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check6}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check7 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check7}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check8 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check8}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check9 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check9}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check10 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check10}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check11 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check11}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check12 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check12}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check13 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check13}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check14 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check14}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check15 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check15}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check16 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check16}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check17 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check17}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check18 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check18}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check19 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check19}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;

DECLARE @Check20 BIT =
    CASE
        WHEN LOWER(LTRIM(RTRIM(CONVERT(NVARCHAR(20), '{{Check20}}'))))
             IN (N'1', N'true', N'yes', N'on')
        THEN 1
        ELSE 0
    END;



/* ---------------------------------------------------------
   เก็บผลลัพธ์ของแถวที่ถูก UPDATE ไว้ชั่วคราว
   เพื่อส่งต่อไปยังตาราง [Sampling RawMilk]

   สำคัญ:
   Batch_Lot_no ใช้ NVARCHAR
   เพื่อรองรับ Batch ที่เป็นข้อความ เช่น

       1
       2
       3
       266/155
       A001
       BATCH-01

   จะไม่เกิด Conversion failed ... nvarchar ... int
   --------------------------------------------------------- */
DECLARE @UpdatedResult TABLE
(
    SampID             NVARCHAR(255) NULL,
    Batch_Lot_no       NVARCHAR(255) NULL,
    TPC_Numeric        NVARCHAR(100) NULL,
    Coliform_Numeric   NVARCHAR(100) NULL,
    Ecoli_Numeric      NVARCHAR(100) NULL,
    Coliform_Result    NVARCHAR(255) NULL,
    Ecoli_Result       NVARCHAR(255) NULL
);


/* =========================================================
   ตรวจสอบ Checkbox pattern ใน template
   ถ้าไม่ตรง จะแจ้ง error แทนการไม่ UPDATE แบบเงียบ ๆ
     จะเป็นการอ่าน Checkbox ในก่อนหน้านี้ว่ามีรูปแบบตรงกับในตาราง Template ที่ตั้งไว้หรือไม่ หากไม่มีจะไม่สามารถใช้งานได้แต่หากมี จะเข้าเงื่อนไขต่อไป
   ========================================================= */
IF NOT EXISTS
(
    SELECT 1
    FROM template t
    WHERE ISNULL(TRY_CAST(t.check1 AS BIT), 0) = @Check1
      AND ISNULL(TRY_CAST(t.check2 AS BIT), 0) = @Check2
      AND ISNULL(TRY_CAST(t.check3 AS BIT), 0) = @Check3
      AND ISNULL(TRY_CAST(t.check4 AS BIT), 0) = @Check4
      AND ISNULL(TRY_CAST(t.check5 AS BIT), 0) = @Check5
      AND ISNULL(TRY_CAST(t.check6 AS BIT), 0) = @Check6
      AND ISNULL(TRY_CAST(t.check7 AS BIT), 0) = @Check7
      AND ISNULL(TRY_CAST(t.check8 AS BIT), 0) = @Check8
      AND ISNULL(TRY_CAST(t.check9 AS BIT), 0) = @Check9
      AND ISNULL(TRY_CAST(t.check10 AS BIT), 0) = @Check10
      AND ISNULL(TRY_CAST(t.check11 AS BIT), 0) = @Check11
      AND ISNULL(TRY_CAST(t.check12 AS BIT), 0) = @Check12
      AND ISNULL(TRY_CAST(t.check13 AS BIT), 0) = @Check13
      AND ISNULL(TRY_CAST(t.check14 AS BIT), 0) = @Check14
      AND ISNULL(TRY_CAST(t.check15 AS BIT), 0) = @Check15
      AND ISNULL(TRY_CAST(t.check16 AS BIT), 0) = @Check16
      AND ISNULL(TRY_CAST(t.check17 AS BIT), 0) = @Check17
      AND ISNULL(TRY_CAST(t.check18 AS BIT), 0) = @Check18
      AND ISNULL(TRY_CAST(t.check19 AS BIT), 0) = @Check19
      AND ISNULL(TRY_CAST(t.check20 AS BIT), 0) = @Check20
)
BEGIN
    THROW 50020, 'ไม่พบรูปแบบ Check1-Check20 ที่ตรงกันในตาราง template', 1;
END;

/* =========================================================
   หลังจากอ่าน Template แล้วจะเป็นการดูว่า Checkbox ที่ติ๊กหรือเลือกตรงกับรูปแบบไหนจากนั้นจะเอาค่าที่ต้องใช้ หาร และ ยกกำลัง มาใช้คำนวณ
   ========================================================= */


;WITH Matched AS
(
    SELECT TOP 1

        TRY_CAST(t.result AS DECIMAL(18,6)) AS result,

        TRY_CAST(t.Power AS DECIMAL(18,6)) AS Power

    FROM template t

    WHERE ISNULL(TRY_CAST(t.check1 AS BIT), 0) = @Check1

      AND ISNULL(TRY_CAST(t.check2 AS BIT), 0) = @Check2

      AND ISNULL(TRY_CAST(t.check3 AS BIT), 0) = @Check3

      AND ISNULL(TRY_CAST(t.check4 AS BIT), 0) = @Check4

      AND ISNULL(TRY_CAST(t.check5 AS BIT), 0) = @Check5

      AND ISNULL(TRY_CAST(t.check6 AS BIT), 0) = @Check6

      AND ISNULL(TRY_CAST(t.check7 AS BIT), 0) = @Check7

      AND ISNULL(TRY_CAST(t.check8 AS BIT), 0) = @Check8

      AND ISNULL(TRY_CAST(t.check9 AS BIT), 0) = @Check9

      AND ISNULL(TRY_CAST(t.check10 AS BIT), 0) = @Check10

      AND ISNULL(TRY_CAST(t.check11 AS BIT), 0) = @Check11

      AND ISNULL(TRY_CAST(t.check12 AS BIT), 0) = @Check12

      AND ISNULL(TRY_CAST(t.check13 AS BIT), 0) = @Check13

      AND ISNULL(TRY_CAST(t.check14 AS BIT), 0) = @Check14

      AND ISNULL(TRY_CAST(t.check15 AS BIT), 0) = @Check15

      AND ISNULL(TRY_CAST(t.check16 AS BIT), 0) = @Check16

      AND ISNULL(TRY_CAST(t.check17 AS BIT), 0) = @Check17

      AND ISNULL(TRY_CAST(t.check18 AS BIT), 0) = @Check18

      AND ISNULL(TRY_CAST(t.check19 AS BIT), 0) = @Check19

      AND ISNULL(TRY_CAST(t.check20 AS BIT), 0) = @Check20
),


/* =========================================================
   หา checkbox ที่มีทั้งหมดของ TPC แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
   ========================================================= */
Sums AS
(
    SELECT

        /* -------------------------------------------------
           TPC
           ------------------------------------------------- */
        TPC_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{TPC_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END),


        /* -------------------------------------------------
           หา checkbox ที่มีทั้งหมดของ Y&M แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
           ------------------------------------------------- */
        YM_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{Y_M_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END),


        /* -------------------------------------------------
           หา checkbox ที่มีทั้งหมดของ Spore 35C แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
           ------------------------------------------------- */
        C35_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{35C_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END),


        /* -------------------------------------------------
           หา checkbox ที่มีทั้งหมดของ Spore 55C แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
           ------------------------------------------------- */
        C55_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{55C_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END),


        /* -------------------------------------------------
           หา checkbox ที่มีทั้งหมดของ Coliform แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
           ------------------------------------------------- */
        Coli_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{Coliform_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END),


        /* -------------------------------------------------
           หา checkbox ที่มีทั้งหมดของ E.coli แล้วนำมารวมถ้าไม่มีจะไม่เกิดอะไรขึ้นหากมีจะถูกนำมารวมกันแล้ว หาร กับ ยกกำลังตามค่าใน Template ที่อ่านได้
           ------------------------------------------------- */
        Ecoli_raw =

            (CASE
                WHEN @Check1 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check2 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check3 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check4 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check5 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check6 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check7 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check8 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check9 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check10 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check11 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check12 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check13 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check14 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check15 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check16 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_10000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check17 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check18 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_100000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check19 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000000000_1}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)

          + (CASE
                WHEN @Check20 = 1
                THEN ISNULL(
                    TRY_CAST({{Ecoli_1000000000_2}} AS DECIMAL(18,6)),
                    0
                )
                ELSE 0
             END)
),


/* =========================================================
   เป็นการกันค่าไม่ให้เกินหลักที่ใช้สำหรับการคำนวณในบางกรณีที่อาจมีจำนวณต่อท้ายมากเกินที่ทำให้เกิด Error
   ========================================================= */
Vals AS
(
    SELECT

        TPC =
            CAST(s.TPC_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        YM =
            CAST(s.YM_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        C35 =
            CAST(s.C35_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        C55 =
            CAST(s.C55_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        Coli =
            CAST(s.Coli_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        Ecoli =
            CAST(s.Ecoli_raw AS DECIMAL(38,12))
            /
            NULLIF(
                CAST(m.result AS DECIMAL(38,12)),
                0
            ),

        m.Power

    FROM Sums s
    CROSS JOIN Matched m
),


/* =========================================================
   เป็นการนับจำนวนหลักที่ได้รับมาเช่น 280000.23564 จะตัดเป็น 280000 แล้วบอกว่าเป็นเลขกี่หลักอย่างหลังจากที่ตัดแล้วก็จะเป็น 6 หลัก แต่ถ้าเป็น ทศนิยมจะถูกนับเป็น 1
   ========================================================= */
Nums AS
(
    SELECT
        v.*,

        n_TPC =
            CASE
                WHEN ABS(v.TPC) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.TPC))
                            AS BIGINT
                        )
                    )
            END,

        n_YM =
            CASE
                WHEN ABS(v.YM) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.YM))
                            AS BIGINT
                        )
                    )
            END,

        n_C35 =
            CASE
                WHEN ABS(v.C35) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.C35))
                            AS BIGINT
                        )
                    )
            END,

        n_C55 =
            CASE
                WHEN ABS(v.C55) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.C55))
                            AS BIGINT
                        )
                    )
            END,

        n_Coli =
            CASE
                WHEN ABS(v.Coli) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.Coli))
                            AS BIGINT
                        )
                    )
            END,

        n_Ecoli =
            CASE
                WHEN ABS(v.Ecoli) < 1
                    THEN 1
                ELSE
                    LEN(
                        CAST(
                            FLOOR(ABS(v.Ecoli))
                            AS BIGINT
                        )
                    )
            END

    FROM Vals v
),


/* =========================================================
   การปัดจำนวน โดยหลังจากผ่านขั้นตอนต่างๆมาจะเป็น จะนำผลที่ได้ก่อนกำลังหรือหลังจากการหารเสร็จจะนำมา นับเลขสามหลักหน้า แล้วดูว่าเป็น 5 หรือไม่โดยถ้าเป็น >= 6 หรือ <= 4 จะปัดขั้นลงตามปกติแต่หากเป็น 5 จะดูเลขข้างหน้าว่าเป็นคู่หรือคี่หากเป็นคู่จะปัดเลขหลักสามทิ้งไปเลยแต่หากเป็นคี่จะปัดเลขหลักสองขึ้น เช่น 8.5 = 8.0 | 7.5 = 8.0
   ========================================================= */
Steps AS
(
    SELECT
        n.*,

        /* =====================================================
           กำหนดตำแหน่งการปัด

           n >= 3
               ใช้ Logic เดิม
               เช่น
               n = 3  -> 10
               n = 4  -> 100
               n = 7  -> 100000

           n < 3
               ให้ step = 1
               เพื่อให้ค่าทศนิยม เช่น
               7.5 / 8.5
               ถูกนำเข้าสู่ Logic การปัดเดียวกัน
           ===================================================== */

        step_TPC =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_TPC < 3 THEN 0
                        ELSE n_TPC - 2
                    END
                )
                AS DECIMAL(38,10)
            ),

        step_YM =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_YM < 3 THEN 0
                        ELSE n_YM - 2
                    END
                )
                AS DECIMAL(38,10)
            ),

        step_C35 =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_C35 < 3 THEN 0
                        ELSE n_C35 - 2
                    END
                )
                AS DECIMAL(38,10)
            ),

        step_C55 =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_C55 < 3 THEN 0
                        ELSE n_C55 - 2
                    END
                )
                AS DECIMAL(38,10)
            ),

        step_Coli =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_Coli < 3 THEN 0
                        ELSE n_Coli - 2
                    END
                )
                AS DECIMAL(38,10)
            ),

        step_Ecoli =
            CAST(
                POWER(
                    CAST(10 AS DECIMAL(38,10)),
                    CASE
                        WHEN n_Ecoli < 3 THEN 0
                        ELSE n_Ecoli - 2
                    END
                )
                AS DECIMAL(38,10)
            )

    FROM Nums n
),


/* =========================================================
   ยังไม่ได้ปัดเศษค่า และยังไม่ได้เลือกว่าจะปัดขึ้นหรือปัดลง แต่กำลังหาว่าแต่ละค่ามีขนาดเป็นกี่เท่าของ step ที่กำหนด
   ========================================================= */
Q AS
(
    SELECT
        s.*,

        CAST(
            ABS(s.TPC)
            /
            NULLIF(s.step_TPC, 0)
            AS DECIMAL(38,12)
        ) AS q_TPC,

        CAST(
            ABS(s.YM)
            /
            NULLIF(s.step_YM, 0)
            AS DECIMAL(38,12)
        ) AS q_YM,

        CAST(
            ABS(s.C35)
            /
            NULLIF(s.step_C35, 0)
            AS DECIMAL(38,12)
        ) AS q_C35,

        CAST(
            ABS(s.C55)
            /
            NULLIF(s.step_C55, 0)
            AS DECIMAL(38,12)
        ) AS q_C55,

        CAST(
            ABS(s.Coli)
            /
            NULLIF(s.step_Coli, 0)
            AS DECIMAL(38,12)
        ) AS q_Coli,

        CAST(
            ABS(s.Ecoli)
            /
            NULLIF(s.step_Ecoli, 0)
            AS DECIMAL(38,12)
        ) AS q_Ecoli

    FROM Steps s
),


/* =========================================================
   อ่านเลขที่เป็น 5 แล้วทำการปัดหากไม่มีปัดตามปกติ
   ========================================================= */
Rounded AS
(
    SELECT
        q.*,


        /* -------------------------------------------------
           TPC
           ------------------------------------------------- */
        r_TPC =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_TPC) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_TPC) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_TPC)

                        ELSE FLOOR(q.q_TPC) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_TPC) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_TPC) + 1

                ELSE
                    FLOOR(q.q_TPC)

            END,


        /* -------------------------------------------------
           YM
           ------------------------------------------------- */
        r_YM =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_YM) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_YM) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_YM)

                        ELSE FLOOR(q.q_YM) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_YM) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_YM) + 1

                ELSE
                    FLOOR(q.q_YM)

            END,


        /* -------------------------------------------------
           35C
           ------------------------------------------------- */
        r_C35 =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_C35) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_C35) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_C35)

                        ELSE FLOOR(q.q_C35) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_C35) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_C35) + 1

                ELSE
                    FLOOR(q.q_C35)

            END,


        /* -------------------------------------------------
           55C
           ------------------------------------------------- */
        r_C55 =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_C55) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_C55) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_C55)

                        ELSE FLOOR(q.q_C55) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_C55) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_C55) + 1

                ELSE
                    FLOOR(q.q_C55)

            END,


        /* -------------------------------------------------
           Coliform
           ------------------------------------------------- */
        r_Coli =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_Coli) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_Coli) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_Coli)

                        ELSE FLOOR(q.q_Coli) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_Coli) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_Coli) + 1

                ELSE
                    FLOOR(q.q_Coli)

            END,


        /* -------------------------------------------------
           E.coli
           ------------------------------------------------- */
        r_Ecoli =
            CASE

                WHEN
                    CAST(
                        ABS(q.q_Ecoli) * 10
                        AS BIGINT
                    ) % 10 = 5

                THEN

                    CASE

                        WHEN
                            (
                                CAST(
                                    ABS(q.q_Ecoli) * 10
                                    AS BIGINT
                                ) / 10
                            ) % 2 = 0

                        THEN FLOOR(q.q_Ecoli)

                        ELSE FLOOR(q.q_Ecoli) + 1

                    END

                WHEN
                    CAST(
                        ABS(q.q_Ecoli) * 10
                        AS BIGINT
                    ) % 10 > 5

                THEN
                    FLOOR(q.q_Ecoli) + 1

                ELSE
                    FLOOR(q.q_Ecoli)

            END

    FROM Q q
)


/* =========================================================
   UPDATE Sampling_Result
   ========================================================= */
UPDATE sr

SET

    /* =====================================================
       TPC
       ===================================================== */
    TPC_Result =

        CASE

            WHEN @CalculateType = 'TPC'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.TPC)
                        * r.r_TPC
                        * r.step_TPC
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.TPC_Result

        END,


    /* =====================================================
       YM
       รูปแบบผล: ตัวเลขล้วน เช่น 190000
       ===================================================== */
    Y_M_Result =

        CASE

            WHEN @CalculateType = 'YM'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.YM)
                        * r.r_YM
                        * r.step_YM
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.Y_M_Result

        END,


    /* =====================================================
       35C
       รูปแบบผล: ตัวเลขล้วน เช่น 190000
       ===================================================== */
    [35C_Result] =

        CASE

            WHEN @CalculateType = '35C'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.C35)
                        * r.r_C35
                        * r.step_C35
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.[35C_Result]

        END,


    /* =====================================================
       55C
       รูปแบบผล: ตัวเลขล้วน เช่น 190000
       ===================================================== */
    [55C_Result] =

        CASE

            WHEN @CalculateType = '55C'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.C55)
                        * r.r_C55
                        * r.step_C55
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.[55C_Result]

        END,


    /* =====================================================
       Coliform
       รูปแบบผล: ตัวเลขล้วน เช่น 190000
       ===================================================== */
    Coliform_Result =

        CASE

            WHEN @CalculateType = 'COLIFORM'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.Coli)
                        * r.r_Coli
                        * r.step_Coli
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.Coliform_Result

        END,


    /* =====================================================
       E.coli
       รูปแบบผล: ตัวเลขล้วน เช่น 190000
       ===================================================== */
    Ecoli_result =

        CASE

            WHEN @CalculateType = 'ECOLI'

            THEN


                CONVERT(
                    NVARCHAR(50),
                    CAST(
                        SIGN(r.Ecoli)
                        * r.r_Ecoli
                        * r.step_Ecoli
                        * r.Power
                        AS DECIMAL(18,0)
                    )
                )


            ELSE
                sr.Ecoli_result

        END


/* =========================================================
   OUTPUT
   ========================================================= */
OUTPUT

    CONVERT(
        NVARCHAR(255),
        inserted.SampID
    ),

    /* -----------------------------------------------------
       สำคัญ:
       แปลง Batch เป็น NVARCHAR ทันที
       ไม่บังคับเป็น INT
       ----------------------------------------------------- */
    CONVERT(
        NVARCHAR(255),
        inserted.Batch_Lot_no
    ),


    /* -----------------------------------------------------
       TPC_Numeric
       ผลคำนวณ TPC แบบตัวเลขล้วน
       ใช้ค่าคำนวณตัวเลขล้วนสำหรับส่ง Sampling RawMilk
       ----------------------------------------------------- */
    CASE
        WHEN @CalculateType = 'TPC'
        THEN CONVERT(
            NVARCHAR(100),
            CAST(
                SIGN(r.TPC)
                * r.r_TPC
                * r.step_TPC
                * r.Power
                AS DECIMAL(18,0)
            )
        )
        ELSE NULL
    END,


    CASE
        WHEN @CalculateType = 'COLIFORM'
        THEN CONVERT(
            NVARCHAR(100),
            CAST(
                SIGN(r.Coli)
                * r.r_Coli
                * r.step_Coli
                * r.Power
                AS DECIMAL(18,0)
            )
        )
        ELSE NULL
    END,

    CASE
        WHEN @CalculateType = 'ECOLI'
        THEN CONVERT(
            NVARCHAR(100),
            CAST(
                SIGN(r.Ecoli)
                * r.r_Ecoli
                * r.step_Ecoli
                * r.Power
                AS DECIMAL(18,0)
            )
        )
        ELSE NULL
    END,

    CONVERT(
        NVARCHAR(255),
        inserted.Coliform_Result
    ),

    CONVERT(
        NVARCHAR(255),
        inserted.Ecoli_result
    )


INTO @UpdatedResult
(
    SampID,
    Batch_Lot_no,
    TPC_Numeric,
    Coliform_Numeric,
    Ecoli_Numeric,
    Coliform_Result,
    Ecoli_Result
)


FROM Sampling_Result sr

CROSS JOIN Rounded r


/* =========================================================
   IMPORTANT:
   ใช้ SampID + Batch_Lot_no + No เป็นเงื่อนไขระบุแถว

   No รองรับค่าทศนิยม เช่น 1.1 / 1.2 / 1.3 / 1.4
   ห้าม CAST No เป็น INT

   เปรียบเทียบ Batch เป็นข้อความ
   เพื่อรองรับค่า เช่น

       1
       2
       3
       266/155
       A001

   โดยไม่ให้ SQL พยายามแปลงเป็น INT
   ========================================================= */
WHERE CONVERT(
          NVARCHAR(255),
          sr.SampID
      )
      =
      CONVERT(
          NVARCHAR(255),
          {{SampID}}
      )

  AND CONVERT(
          NVARCHAR(255),
          sr.Batch_Lot_no
      )
      =
      CONVERT(
          NVARCHAR(255),
          {{Batch_Lot_No}}
      )

  AND TRY_CONVERT(
          DECIMAL(18,6),
          sr.No
      )
      =
      TRY_CONVERT(
          DECIMAL(18,6),
          {{No}}
      );


/* =========================================================
   ส่งผล Micro ลงตาราง [Sampling RawMilk]

   Mapping สำหรับ Batch ที่เป็นตัวเลข:

   Batch 1
      TPC      -> SPC_Tank_1
      Coliform -> Coliform_1
      E.coli   -> E_Tank_1

   Batch 2
      TPC      -> SPC_Tank_2
      Coliform -> Coliform_2
      E.coli   -> E_Tank_2

   Batch 3
      TPC      -> SPC_Tank_3
      Coliform -> Coliform_3
      E.coli   -> E_Tank_3

   Batch ที่เป็นข้อความ เช่น 266/155:
      - ไม่ error
      - ไม่ถูก map เข้า Tank 1-3
      - แต่ยังสามารถ UPDATE Sampling_Result ได้ตามปกติ

   TRY_CONVERT สำคัญมาก:
      TRY_CONVERT(INT, '266/155') = NULL

   ดังนั้นจะไม่เกิด:
      Conversion failed when converting the nvarchar
      value '266/155' to data type int.
   ========================================================= */

UPDATE rm

SET


    /* =====================================================
       TPC -> SPC Tank 1
       ===================================================== */
    rm.SPC_Tank_1 =

        CASE

            WHEN @CalculateType = 'TPC'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 1

            THEN
                u.TPC_Numeric

            ELSE
                rm.SPC_Tank_1

        END,


    /* =====================================================
       TPC -> SPC Tank 2
       ===================================================== */
    rm.SPC_Tank_2 =

        CASE

            WHEN @CalculateType = 'TPC'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 2

            THEN
                u.TPC_Numeric

            ELSE
                rm.SPC_Tank_2

        END,


    /* =====================================================
       TPC -> SPC Tank 3
       ===================================================== */
    rm.SPC_Tank_3 =

        CASE

            WHEN @CalculateType = 'TPC'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 3

            THEN
                u.TPC_Numeric

            ELSE
                rm.SPC_Tank_3

        END,


    /* =====================================================
       Coliform -> Tank 1
       ===================================================== */
    rm.Coliform_1 =

        CASE

            WHEN @CalculateType = 'COLIFORM'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 1

            THEN
                u.Coliform_Numeric

            ELSE
                rm.Coliform_1

        END,


    /* =====================================================
       Coliform -> Tank 2
       ===================================================== */
    rm.Coliform_2 =

        CASE

            WHEN @CalculateType = 'COLIFORM'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 2

            THEN
                u.Coliform_Numeric

            ELSE
                rm.Coliform_2

        END,


    /* =====================================================
       Coliform -> Tank 3
       ===================================================== */
    rm.Coliform_3 =

        CASE

            WHEN @CalculateType = 'COLIFORM'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 3

            THEN
                u.Coliform_Numeric

            ELSE
                rm.Coliform_3

        END,


    /* =====================================================
       E.coli -> Tank 1
       ===================================================== */
    rm.E_Tank_1 =

        CASE

            WHEN @CalculateType = 'ECOLI'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 1

            THEN
                u.Ecoli_Numeric

            ELSE
                rm.E_Tank_1

        END,


    /* =====================================================
       E.coli -> Tank 2
       ===================================================== */
    rm.E_Tank_2 =

        CASE

            WHEN @CalculateType = 'ECOLI'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 2

            THEN
                u.Ecoli_Numeric

            ELSE
                rm.E_Tank_2

        END,


    /* =====================================================
       E.coli -> Tank 3
       ===================================================== */
    rm.E_Tank_3 =

        CASE

            WHEN @CalculateType = 'ECOLI'

             AND TRY_CONVERT(
                    INT,
                    u.Batch_Lot_no
                 ) = 3

            THEN
                u.Ecoli_Numeric

            ELSE
                rm.E_Tank_3

        END


FROM [Sampling RawMilk] AS rm

INNER JOIN @UpdatedResult AS u

    ON CONVERT(
           NVARCHAR(255),
           rm.SamplingID
       )
       =
       u.SampID


/* =========================================================
   สำคัญ:
   ไม่ใช้

       u.Batch_Lot_no BETWEEN 1 AND 3

   เพราะจะทำให้ Batch เช่น 266/155
   ถูกพยายามแปลงเป็น INT

   ใช้ TRY_CONVERT แทน
   ========================================================= */
WHERE TRY_CONVERT(
          INT,
          u.Batch_Lot_no
      ) BETWEEN 1 AND 3;


/* =========================================================
   Return ผลหลังทำงาน
   ========================================================= */

SELECT
    @CalculateType AS CalculateType,
    CONVERT(NVARCHAR(255), {{SampID}}) AS SampID_Input,
    CONVERT(NVARCHAR(255), {{Batch_Lot_No}}) AS Batch_Lot_No_Input,
    TRY_CONVERT(DECIMAL(18,6), {{No}}) AS No_Input;

SELECT

    rm.SamplingID,

    rm.SPC_Tank_1,
    rm.SPC_Tank_2,
    rm.SPC_Tank_3,

    rm.Coliform_1,
    rm.Coliform_2,
    rm.Coliform_3,

    rm.E_Tank_1,
    rm.E_Tank_2,
    rm.E_Tank_3

FROM [Sampling RawMilk] AS rm

INNER JOIN @UpdatedResult AS u

    ON CONVERT(
           NVARCHAR(255),
           rm.SamplingID
       )
       =
       u.SampID;
