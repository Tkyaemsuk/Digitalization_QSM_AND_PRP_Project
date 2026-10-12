/*
Application: QSM Microbiological
Query name: Update_Result
File: Update_Result.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_c88711b9b7b74b97b0d68a4694be1e25
Budibase function: update
Bindings: Action, SampID, Batch_Lot_No, No, TPC_1_1, TPC_1_2, TPC_10_1, TPC_10_2, TPC_100_1, TPC_100_2, TPC_1000_1, TPC_1000_2, TPC_10000_1, TPC_10000_2, TPC_100000_1, TPC_100000_2, TPC_1000000_1, TPC_1000000_2, TPC_10000000_1, TPC_10000000_2, TPC_100000000_1, TPC_100000000_2, TPC_1000000000_1, TPC_1000000000_2, TPC_Result, Y_M_1_1, Y_M_1_2, Y_M_10_1, Y_M_10_2, Y_M_100_1, Y_M_100_2, Y_M_1000_1, Y_M_1000_2, Y_M_10000_1, Y_M_10000_2, Y_M_100000_1, Y_M_100000_2, Y_M_1000000_1, Y_M_1000000_2, Y_M_10000000_1, Y_M_10000000_2, Y_M_100000000_1, Y_M_100000000_2, Y_M_1000000000_1, Y_M_1000000000_2, Y_M_Result, 35C_1_1, 35C_1_2, 35C_10_1, 35C_10_2, 35C_100_1, 35C_100_2, 35C_1000_1, 35C_1000_2, 35C_10000_1, 35C_10000_2, 35C_100000_1, 35C_100000_2, 35C_1000000_1, 35C_1000000_2, 35C_10000000_1, 35C_10000000_2, 35C_100000000_1, 35C_100000000_2, 35C_1000000000_1, 35C_1000000000_2, 35C_Result, 55C_1_1, 55C_1_2, 55C_10_1, 55C_10_2, 55C_100_1, 55C_100_2, 55C_1000_1, 55C_1000_2, 55C_10000_1, 55C_10000_2, 55C_100000_1, 55C_100000_2, 55C_1000000_1, 55C_1000000_2, 55C_10000000_1, 55C_10000000_2, 55C_100000000_1, 55C_100000000_2, 55C_1000000000_1, 55C_1000000000_2, 55C_Result, Coliform_1_1, Coliform_1_2, Coliform_10_1, Coliform_10_2, Coliform_100_1, Coliform_100_2, Coliform_1000_1, Coliform_1000_2, Coliform_10000_1, Coliform_10000_2, Coliform_100000_1, Coliform_100000_2, Coliform_1000000_1, Coliform_1000000_2, Coliform_10000000_1, Coliform_10000000_2, Coliform_100000000_1, Coliform_100000000_2, Coliform_1000000000_1, Coliform_1000000000_2, Coliform_Result, Coliform_MPN_Result, Ecoli_1_1, Ecoli_1_2, Ecoli_10_1, Ecoli_10_2, Ecoli_100_1, Ecoli_100_2, Ecoli_1000_1, Ecoli_1000_2, Ecoli_10000_1, Ecoli_10000_2, Ecoli_100000_1, Ecoli_100000_2, Ecoli_1000000_1, Ecoli_1000000_2, Ecoli_10000000_1, Ecoli_10000000_2, Ecoli_100000000_1, Ecoli_100000000_2, Ecoli_1000000000_1, Ecoli_1000000000_2, Ecoli_result, Ecoli_MPN_Result, S_aureus, B_cereus, Salmonella, Other_1_1, Other_1_2, Other_10_1, Other_10_2, Other_100_1, Other_100_2, Other_1000_1, Other_1000_2, Other_10000_1, Other_10000_2, Other_100000_1, Other_100000_2, Other_1000000_1, Other_1000000_2, Other_10000000_1, Other_10000000_2, Other_100000000_1, Other_100000000_2, Other_1000000000_1, Other_1000000000_2, Other_Result
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* ============================================================
   SQL Name :
   Update_Sampling_Result_Power9_Result_By_No_Fixed.sql

   Database :
   Microsoft SQL Server (MSSQL)

   รองรับ Batch_Lot_no แบบ NVARCHAR เช่น:
   - 1
   - 001
   - 11/101
   - 266/155
   - A001
   - BATCH-01

   Coliform รองรับ:
   - ตัวเลข เช่น 0, 1, 10
   - N
   - ค่าว่าง -> NULL

   หมายเหตุ:
   - Batch_Lot_no จะไม่ CAST เป็น INT
   - ระบุแถวแบบเจาะจงด้วย SampID + Batch_Lot_no + No
   - Coliform_MPN_Result และ Coliform_MPN เป็นคนละคอลัมน์
   - Ecoli_MPN_Result และ Ecoli_MPN เป็นคนละคอลัมน์
   - Query นี้แก้เฉพาะ *_MPN_Result ตาม Action เดิม ไม่แตะ *_MPN
   ============================================================ */

SET NOCOUNT ON;


/* ============================================================
   1. รับค่า
   ============================================================ */

DECLARE @Action NVARCHAR(50) =
    NULLIF(
        UPPER(LTRIM(RTRIM('{{Action}}'))),
        ''
    );

DECLARE @SampID NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{SampID}}')),
        ''
    );

DECLARE @Batch_Lot_No NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{Batch_Lot_No}}')),
        ''
    );


DECLARE @No DECIMAL(18,6) =
    TRY_CONVERT(
        DECIMAL(18,6),
        NULLIF(LTRIM(RTRIM('{{No}}')), '')
    );


/* ============================================================
   2. Action ว่าง = ไม่ Update และ Return NULL
   ============================================================ */

IF @Action IS NULL
BEGIN

    SELECT
        CAST(NULL AS NVARCHAR(50))  AS Action,
        CAST(NULL AS INT)           AS UpdatedRows,
        CAST(NULL AS NVARCHAR(255)) AS SampID,
        CAST(NULL AS NVARCHAR(255)) AS Batch_Lot_No,
        CAST(NULL AS DECIMAL(18,6)) AS No;

    RETURN;

END;


/* ============================================================
   2.1 ตรวจสอบ Key สำหรับระบุแถว
   ต้องมีครบ SampID + Batch_Lot_no + No
   ============================================================ */

IF @SampID IS NULL
BEGIN
    THROW 50002, N'SampID is required.', 1;
END;

IF @Batch_Lot_No IS NULL
BEGIN
    THROW 50003, N'Batch_Lot_No is required.', 1;
END;

IF @No IS NULL
BEGIN
    THROW 50004, N'No is required.', 1;
END;


/* ============================================================
   ตัวแปรเก็บจำนวนแถวที่ Update
   ============================================================ */

DECLARE @UpdatedRows INT = 0;


/* ============================================================
   3. TPC
   ============================================================ */

IF @Action = 'TPC'
BEGIN

    UPDATE sr
    SET
        TPC_1_1 = TRY_CAST(NULLIF('{{TPC_1_1}}', '') AS INT),
        TPC_1_2 = TRY_CAST(NULLIF('{{TPC_1_2}}', '') AS INT),
        TPC_10_1 = TRY_CAST(NULLIF('{{TPC_10_1}}', '') AS INT),
        TPC_10_2 = TRY_CAST(NULLIF('{{TPC_10_2}}', '') AS INT),
        TPC_100_1 = TRY_CAST(NULLIF('{{TPC_100_1}}', '') AS INT),
        TPC_100_2 = TRY_CAST(NULLIF('{{TPC_100_2}}', '') AS INT),
        TPC_1000_1 = TRY_CAST(NULLIF('{{TPC_1000_1}}', '') AS INT),
        TPC_1000_2 = TRY_CAST(NULLIF('{{TPC_1000_2}}', '') AS INT),
        TPC_10000_1 = TRY_CAST(NULLIF('{{TPC_10000_1}}', '') AS INT),
        TPC_10000_2 = TRY_CAST(NULLIF('{{TPC_10000_2}}', '') AS INT),
        TPC_100000_1 = TRY_CAST(NULLIF('{{TPC_100000_1}}', '') AS INT),
        TPC_100000_2 = TRY_CAST(NULLIF('{{TPC_100000_2}}', '') AS INT),
        TPC_1000000_1 = TRY_CAST(NULLIF('{{TPC_1000000_1}}', '') AS INT),
        TPC_1000000_2 = TRY_CAST(NULLIF('{{TPC_1000000_2}}', '') AS INT),
        TPC_10000000_1 = TRY_CAST(NULLIF('{{TPC_10000000_1}}', '') AS INT),
        TPC_10000000_2 = TRY_CAST(NULLIF('{{TPC_10000000_2}}', '') AS INT),
        TPC_100000000_1 = TRY_CAST(NULLIF('{{TPC_100000000_1}}', '') AS INT),
        TPC_100000000_2 = TRY_CAST(NULLIF('{{TPC_100000000_2}}', '') AS INT),
        TPC_1000000000_1 = TRY_CAST(NULLIF('{{TPC_1000000000_1}}', '') AS INT),
        TPC_1000000000_2 = TRY_CAST(NULLIF('{{TPC_1000000000_2}}', '') AS INT),
        TPC_Result = NULLIF(LTRIM(RTRIM('{{TPC_Result}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   4. YM
   ============================================================ */

ELSE IF @Action IN ('YM', 'Y_M')
BEGIN

    UPDATE sr
    SET
        Y_M_1_1 = TRY_CAST(NULLIF('{{Y_M_1_1}}', '') AS INT),
        Y_M_1_2 = TRY_CAST(NULLIF('{{Y_M_1_2}}', '') AS INT),
        Y_M_10_1 = TRY_CAST(NULLIF('{{Y_M_10_1}}', '') AS INT),
        Y_M_10_2 = TRY_CAST(NULLIF('{{Y_M_10_2}}', '') AS INT),
        Y_M_100_1 = TRY_CAST(NULLIF('{{Y_M_100_1}}', '') AS INT),
        Y_M_100_2 = TRY_CAST(NULLIF('{{Y_M_100_2}}', '') AS INT),
        Y_M_1000_1 = TRY_CAST(NULLIF('{{Y_M_1000_1}}', '') AS INT),
        Y_M_1000_2 = TRY_CAST(NULLIF('{{Y_M_1000_2}}', '') AS INT),
        Y_M_10000_1 = TRY_CAST(NULLIF('{{Y_M_10000_1}}', '') AS INT),
        Y_M_10000_2 = TRY_CAST(NULLIF('{{Y_M_10000_2}}', '') AS INT),
        Y_M_100000_1 = TRY_CAST(NULLIF('{{Y_M_100000_1}}', '') AS INT),
        Y_M_100000_2 = TRY_CAST(NULLIF('{{Y_M_100000_2}}', '') AS INT),
        Y_M_1000000_1 = TRY_CAST(NULLIF('{{Y_M_1000000_1}}', '') AS INT),
        Y_M_1000000_2 = TRY_CAST(NULLIF('{{Y_M_1000000_2}}', '') AS INT),
        Y_M_10000000_1 = TRY_CAST(NULLIF('{{Y_M_10000000_1}}', '') AS INT),
        Y_M_10000000_2 = TRY_CAST(NULLIF('{{Y_M_10000000_2}}', '') AS INT),
        Y_M_100000000_1 = TRY_CAST(NULLIF('{{Y_M_100000000_1}}', '') AS INT),
        Y_M_100000000_2 = TRY_CAST(NULLIF('{{Y_M_100000000_2}}', '') AS INT),
        Y_M_1000000000_1 = TRY_CAST(NULLIF('{{Y_M_1000000000_1}}', '') AS INT),
        Y_M_1000000000_2 = TRY_CAST(NULLIF('{{Y_M_1000000000_2}}', '') AS INT),
        Y_M_Result = NULLIF(LTRIM(RTRIM('{{Y_M_Result}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   5. 35C
   ============================================================ */

ELSE IF @Action = '35C'
BEGIN

    UPDATE sr
    SET
        [35C_1_1] = TRY_CAST(NULLIF('{{35C_1_1}}', '') AS INT),
        [35C_1_2] = TRY_CAST(NULLIF('{{35C_1_2}}', '') AS INT),
        [35C_10_1] = TRY_CAST(NULLIF('{{35C_10_1}}', '') AS INT),
        [35C_10_2] = TRY_CAST(NULLIF('{{35C_10_2}}', '') AS INT),
        [35C_100_1] = TRY_CAST(NULLIF('{{35C_100_1}}', '') AS INT),
        [35C_100_2] = TRY_CAST(NULLIF('{{35C_100_2}}', '') AS INT),
        [35C_1000_1] = TRY_CAST(NULLIF('{{35C_1000_1}}', '') AS INT),
        [35C_1000_2] = TRY_CAST(NULLIF('{{35C_1000_2}}', '') AS INT),
        [35C_10000_1] = TRY_CAST(NULLIF('{{35C_10000_1}}', '') AS INT),
        [35C_10000_2] = TRY_CAST(NULLIF('{{35C_10000_2}}', '') AS INT),
        [35C_100000_1] = TRY_CAST(NULLIF('{{35C_100000_1}}', '') AS INT),
        [35C_100000_2] = TRY_CAST(NULLIF('{{35C_100000_2}}', '') AS INT),
        [35C_1000000_1] = TRY_CAST(NULLIF('{{35C_1000000_1}}', '') AS INT),
        [35C_1000000_2] = TRY_CAST(NULLIF('{{35C_1000000_2}}', '') AS INT),
        [35C_10000000_1] = TRY_CAST(NULLIF('{{35C_10000000_1}}', '') AS INT),
        [35C_10000000_2] = TRY_CAST(NULLIF('{{35C_10000000_2}}', '') AS INT),
        [35C_100000000_1] = TRY_CAST(NULLIF('{{35C_100000000_1}}', '') AS INT),
        [35C_100000000_2] = TRY_CAST(NULLIF('{{35C_100000000_2}}', '') AS INT),
        [35C_1000000000_1] = TRY_CAST(NULLIF('{{35C_1000000000_1}}', '') AS INT),
        [35C_1000000000_2] = TRY_CAST(NULLIF('{{35C_1000000000_2}}', '') AS INT),
        [35C_Result] = NULLIF(LTRIM(RTRIM('{{35C_Result}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   6. 55C
   ============================================================ */

ELSE IF @Action = '55C'
BEGIN

    UPDATE sr
    SET
        [55C_1_1] = TRY_CAST(NULLIF('{{55C_1_1}}', '') AS INT),
        [55C_1_2] = TRY_CAST(NULLIF('{{55C_1_2}}', '') AS INT),
        [55C_10_1] = TRY_CAST(NULLIF('{{55C_10_1}}', '') AS INT),
        [55C_10_2] = TRY_CAST(NULLIF('{{55C_10_2}}', '') AS INT),
        [55C_100_1] = TRY_CAST(NULLIF('{{55C_100_1}}', '') AS INT),
        [55C_100_2] = TRY_CAST(NULLIF('{{55C_100_2}}', '') AS INT),
        [55C_1000_1] = TRY_CAST(NULLIF('{{55C_1000_1}}', '') AS INT),
        [55C_1000_2] = TRY_CAST(NULLIF('{{55C_1000_2}}', '') AS INT),
        [55C_10000_1] = TRY_CAST(NULLIF('{{55C_10000_1}}', '') AS INT),
        [55C_10000_2] = TRY_CAST(NULLIF('{{55C_10000_2}}', '') AS INT),
        [55C_100000_1] = TRY_CAST(NULLIF('{{55C_100000_1}}', '') AS INT),
        [55C_100000_2] = TRY_CAST(NULLIF('{{55C_100000_2}}', '') AS INT),
        [55C_1000000_1] = TRY_CAST(NULLIF('{{55C_1000000_1}}', '') AS INT),
        [55C_1000000_2] = TRY_CAST(NULLIF('{{55C_1000000_2}}', '') AS INT),
        [55C_10000000_1] = TRY_CAST(NULLIF('{{55C_10000000_1}}', '') AS INT),
        [55C_10000000_2] = TRY_CAST(NULLIF('{{55C_10000000_2}}', '') AS INT),
        [55C_100000000_1] = TRY_CAST(NULLIF('{{55C_100000000_1}}', '') AS INT),
        [55C_100000000_2] = TRY_CAST(NULLIF('{{55C_100000000_2}}', '') AS INT),
        [55C_1000000000_1] = TRY_CAST(NULLIF('{{55C_1000000000_1}}', '') AS INT),
        [55C_1000000000_2] = TRY_CAST(NULLIF('{{55C_1000000000_2}}', '') AS INT),
        [55C_Result] = NULLIF(LTRIM(RTRIM('{{55C_Result}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   7. COLIFORM

   สำคัญ:
   ไม่ CAST เป็น INT เพราะต้องรองรับค่า N

   ตัวอย่าง:
   N    -> N
   0    -> 0
   10   -> 10
   ว่าง -> NULL
   ============================================================ */

ELSE IF @Action IN ('COLIFORM','Coliform_MPN')
BEGIN

    UPDATE sr
    SET
        Coliform_1_1 = NULLIF(LTRIM(RTRIM('{{Coliform_1_1}}')), ''),
        Coliform_1_2 = NULLIF(LTRIM(RTRIM('{{Coliform_1_2}}')), ''),
        Coliform_10_1 = NULLIF(LTRIM(RTRIM('{{Coliform_10_1}}')), ''),
        Coliform_10_2 = NULLIF(LTRIM(RTRIM('{{Coliform_10_2}}')), ''),
        Coliform_100_1 = NULLIF(LTRIM(RTRIM('{{Coliform_100_1}}')), ''),
        Coliform_100_2 = NULLIF(LTRIM(RTRIM('{{Coliform_100_2}}')), ''),
        Coliform_1000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_1000_1}}')), ''),
        Coliform_1000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_1000_2}}')), ''),
        Coliform_10000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_10000_1}}')), ''),
        Coliform_10000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_10000_2}}')), ''),
        Coliform_100000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_100000_1}}')), ''),
        Coliform_100000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_100000_2}}')), ''),
        Coliform_1000000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_1000000_1}}')), ''),
        Coliform_1000000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_1000000_2}}')), ''),
        Coliform_10000000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_10000000_1}}')), ''),
        Coliform_10000000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_10000000_2}}')), ''),
        Coliform_100000000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_100000000_1}}')), ''),
        Coliform_100000000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_100000000_2}}')), ''),
        Coliform_1000000000_1 = NULLIF(LTRIM(RTRIM('{{Coliform_1000000000_1}}')), ''),
        Coliform_1000000000_2 = NULLIF(LTRIM(RTRIM('{{Coliform_1000000000_2}}')), ''),
        Coliform_Result = NULLIF(LTRIM(RTRIM('{{Coliform_Result}}')), ''),

        /* MPN Result ยังคงเป็นตัวเลข */
        Coliform_MPN_Result =
            TRY_CAST(
                NULLIF(
                    LTRIM(RTRIM('{{Coliform_MPN_Result}}')),
                    ''
                )
                AS DECIMAL(18,4)
            )

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   8. ECOLI
   ============================================================ */

ELSE IF @Action IN ('ECOLI', 'E.COLI', 'E_COLI')
BEGIN

    UPDATE sr
    SET
        Ecoli_1_1 = TRY_CAST(NULLIF('{{Ecoli_1_1}}', '') AS INT),
        Ecoli_1_2 = TRY_CAST(NULLIF('{{Ecoli_1_2}}', '') AS INT),
        Ecoli_10_1 = TRY_CAST(NULLIF('{{Ecoli_10_1}}', '') AS INT),
        Ecoli_10_2 = TRY_CAST(NULLIF('{{Ecoli_10_2}}', '') AS INT),
        Ecoli_100_1 = TRY_CAST(NULLIF('{{Ecoli_100_1}}', '') AS INT),
        Ecoli_100_2 = TRY_CAST(NULLIF('{{Ecoli_100_2}}', '') AS INT),
        Ecoli_1000_1 = TRY_CAST(NULLIF('{{Ecoli_1000_1}}', '') AS INT),
        Ecoli_1000_2 = TRY_CAST(NULLIF('{{Ecoli_1000_2}}', '') AS INT),
        Ecoli_10000_1 = TRY_CAST(NULLIF('{{Ecoli_10000_1}}', '') AS INT),
        Ecoli_10000_2 = TRY_CAST(NULLIF('{{Ecoli_10000_2}}', '') AS INT),
        Ecoli_100000_1 = TRY_CAST(NULLIF('{{Ecoli_100000_1}}', '') AS INT),
        Ecoli_100000_2 = TRY_CAST(NULLIF('{{Ecoli_100000_2}}', '') AS INT),
        Ecoli_1000000_1 = TRY_CAST(NULLIF('{{Ecoli_1000000_1}}', '') AS INT),
        Ecoli_1000000_2 = TRY_CAST(NULLIF('{{Ecoli_1000000_2}}', '') AS INT),
        Ecoli_10000000_1 = TRY_CAST(NULLIF('{{Ecoli_10000000_1}}', '') AS INT),
        Ecoli_10000000_2 = TRY_CAST(NULLIF('{{Ecoli_10000000_2}}', '') AS INT),
        Ecoli_100000000_1 = TRY_CAST(NULLIF('{{Ecoli_100000000_1}}', '') AS INT),
        Ecoli_100000000_2 = TRY_CAST(NULLIF('{{Ecoli_100000000_2}}', '') AS INT),
        Ecoli_1000000000_1 = TRY_CAST(NULLIF('{{Ecoli_1000000000_1}}', '') AS INT),
        Ecoli_1000000000_2 = TRY_CAST(NULLIF('{{Ecoli_1000000000_2}}', '') AS INT),
        Ecoli_result = NULLIF(LTRIM(RTRIM('{{Ecoli_result}}')), ''),
        Ecoli_MPN_Result = TRY_CAST(NULLIF('{{Ecoli_MPN_Result}}', '') AS DECIMAL(18,4))

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   9. S. aureus
   ============================================================ */

ELSE IF @Action = 'S_AUREUS'
BEGIN

    UPDATE sr
    SET
        sr.S_aureus = NULLIF(LTRIM(RTRIM('{{S_aureus}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   10. B. cereus
   ============================================================ */

ELSE IF @Action = 'B_CEREUS'
BEGIN

    UPDATE sr
    SET
        sr.B_cereus = NULLIF(LTRIM(RTRIM('{{B_cereus}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   11. Salmonella
   ============================================================ */

ELSE IF @Action = 'SALMONELLA'
BEGIN

    UPDATE sr
    SET
        sr.Salmonella = NULLIF(LTRIM(RTRIM('{{Salmonella}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   12. OTHER (Added Block)
   ============================================================ */

ELSE IF @Action = 'OTHER'
BEGIN

    UPDATE sr
    SET
        Other_1_1 = TRY_CAST(NULLIF('{{Other_1_1}}', '') AS INT),
        Other_1_2 = TRY_CAST(NULLIF('{{Other_1_2}}', '') AS INT),
        Other_10_1 = TRY_CAST(NULLIF('{{Other_10_1}}', '') AS INT),
        Other_10_2 = TRY_CAST(NULLIF('{{Other_10_2}}', '') AS INT),
        Other_100_1 = TRY_CAST(NULLIF('{{Other_100_1}}', '') AS INT),
        Other_100_2 = TRY_CAST(NULLIF('{{Other_100_2}}', '') AS INT),
        Other_1000_1 = TRY_CAST(NULLIF('{{Other_1000_1}}', '') AS INT),
        Other_1000_2 = TRY_CAST(NULLIF('{{Other_1000_2}}', '') AS INT),
        Other_10000_1 = TRY_CAST(NULLIF('{{Other_10000_1}}', '') AS INT),
        Other_10000_2 = TRY_CAST(NULLIF('{{Other_10000_2}}', '') AS INT),
        Other_100000_1 = TRY_CAST(NULLIF('{{Other_100000_1}}', '') AS INT),
        Other_100000_2 = TRY_CAST(NULLIF('{{Other_100000_2}}', '') AS INT),
        Other_1000000_1 = TRY_CAST(NULLIF('{{Other_1000000_1}}', '') AS INT),
        Other_1000000_2 = TRY_CAST(NULLIF('{{Other_1000000_2}}', '') AS INT),
        Other_10000000_1 = TRY_CAST(NULLIF('{{Other_10000000_1}}', '') AS INT),
        Other_10000000_2 = TRY_CAST(NULLIF('{{Other_10000000_2}}', '') AS INT),
        Other_100000000_1 = TRY_CAST(NULLIF('{{Other_100000000_1}}', '') AS INT),
        Other_100000000_2 = TRY_CAST(NULLIF('{{Other_100000000_2}}', '') AS INT),
        Other_1000000000_1 = TRY_CAST(NULLIF('{{Other_1000000000_1}}', '') AS INT),
        Other_1000000000_2 = TRY_CAST(NULLIF('{{Other_1000000000_2}}', '') AS INT),
        Other_Result = NULLIF(LTRIM(RTRIM('{{Other_Result}}')), '')

    FROM dbo.Sampling_Result AS sr

    WHERE
        CONVERT(NVARCHAR(255), sr.SampID) = @SampID
        AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.Batch_Lot_no))) = @Batch_Lot_No
        AND TRY_CONVERT(DECIMAL(18,6), sr.No) = @No;

    SET @UpdatedRows = @@ROWCOUNT;

END


/* ============================================================
   13. Action ไม่ถูกต้อง
   ============================================================ */

ELSE
BEGIN

    THROW 50001,
        N'Action ไม่ถูกต้อง ต้องเป็น TPC, YM, 35C, 55C, COLIFORM, ECOLI, S_AUREUS, B_CEREUS, SALMONELLA หรือ OTHER',
        1;

END;


/* ============================================================
   14. Return Result
   ============================================================ */

SELECT
    @Action AS Action,
    @UpdatedRows AS UpdatedRows,
    @SampID AS SampID,
    @Batch_Lot_No AS Batch_Lot_No;
