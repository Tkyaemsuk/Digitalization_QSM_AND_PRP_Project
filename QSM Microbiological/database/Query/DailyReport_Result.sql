/*
Application: QSM Microbiological
Query name: DailyReport_Result
File: DailyReport_Result.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8eee1abead074cdcae0d37fe7287d66a
Budibase function: read
Bindings: StartNo, EndNo, Micro
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Get_Micro_Result_By_No_Suffix_Range_Fixed_Item.sql */ 
 
DECLARE @StartNo INT = 
    TRY_CAST(NULLIF('{{StartNo}}', '') AS INT); 
 
DECLARE @EndNo INT = 
    TRY_CAST(NULLIF('{{EndNo}}', '') AS INT); 
 
 
/* ========================================================= 
   ถ้า input ว่าง ให้คืน NULL row แทน RETURN เปล่า 
   ========================================================= */ 
IF @StartNo IS NULL OR @EndNo IS NULL 
BEGIN 
    SELECT 
        CAST(NULL AS NVARCHAR(255)) AS MicroID, 
        CAST(NULL AS NVARCHAR(255)) AS SamplingID, 
        CAST(NULL AS INT) AS SamplingResultID, 
        CAST(NULL AS NVARCHAR(255)) AS SampID, 
        CAST(NULL AS NVARCHAR(50)) AS No, 
        CAST(NULL AS NVARCHAR(50)) AS No2, 
        CAST(NULL AS INT) AS NoIndex, 
        CAST(NULL AS DATE) AS [Date], 
        CAST(NULL AS TIME) AS [Time], 
        CAST(NULL AS NVARCHAR(255)) AS Batch_Lot_no, 

        /* เพิ่ม Item */
        CAST(NULL AS NVARCHAR(255)) AS Item,
 
        CAST(NULL AS NVARCHAR(255)) AS TPC_Result, 
        CAST(NULL AS NVARCHAR(255)) AS Y_M_Result, 
        CAST(NULL AS NVARCHAR(255)) AS [35C_Result], 
        CAST(NULL AS NVARCHAR(255)) AS [55C_Result], 
 
        CAST(NULL AS NVARCHAR(255)) AS Coliform_MPN, 
        CAST(NULL AS NVARCHAR(255)) AS Coliform_Result, 
 
        CAST(NULL AS NVARCHAR(255)) AS Ecoli_MPN, 
        CAST(NULL AS NVARCHAR(255)) AS Ecoli_result, 
 
        CAST(NULL AS NVARCHAR(255)) AS S_aureus, 
        CAST(NULL AS NVARCHAR(255)) AS B_cereus, 
        CAST(NULL AS NVARCHAR(255)) AS Salmonella,
				CAST(NULL AS NVARCHAR(255)) AS Other_Result;
 
    RETURN; 
END; 
 
 
/* ========================================================= 
   ป้องกันช่วงกลับกัน 
   ========================================================= */ 
IF @StartNo > @EndNo 
BEGIN 
    THROW 50001, 'StartNo must not be greater than EndNo.', 1; 
END; 
 
 
/* ========================================================= 
   Query หลัก 
   ========================================================= */ 
WITH MicroSampling AS 
( 
    SELECT DISTINCT 
        MS.MicroID, 
        MS.SamplingID 
    FROM [Micro Sampling] AS MS 
    WHERE MS.MicroID = '{{ Micro }}' 
      AND MS.SamplingID IS NOT NULL 
), 
 
ResultData AS 
( 
    SELECT 
        MS.MicroID, 
        MS.SamplingID, 
 
        SR.id AS SamplingResultID, 
        SR.SampID, 
 
        CAST(SR.no AS NVARCHAR(50)) AS No, 
        CAST(SR.no AS NVARCHAR(50)) AS No2, 
 
        /* 6.1 -> 1 / 6.2 -> 2 / 6.10 -> 10 */ 
       TRY_CAST(
    CASE
        WHEN CHARINDEX('.', CAST(SR.no AS NVARCHAR(50))) > 0
        THEN SUBSTRING(
            CAST(SR.no AS NVARCHAR(50)),
            CHARINDEX('.', CAST(SR.no AS NVARCHAR(50))) + 1,
            LEN(CAST(SR.no AS NVARCHAR(50)))
        )
        ELSE CAST(SR.no AS NVARCHAR(50))
    END
    AS INT
) AS NoIndex,
 
        SR.Date, 
        SR.Time, 
        SR.Batch_Lot_no, 

        /* เพิ่ม Item จาก Sampling_Result */
        SR.Item,
 
        SR.TPC_Result, 
        SR.Y_M_Result, 
        SR.[35C_Result], 
        SR.[55C_Result], 
 
        SR.Coliform_MPN, 
        SR.Coliform_Result, 
 
        SR.Ecoli_MPN, 
        SR.Ecoli_result, 
 
        SR.S_aureus, 
        SR.B_cereus, 
        SR.Salmonella,
	      SR.Other_Result
 
    FROM MicroSampling AS MS 
 
    INNER JOIN Sampling_Result AS SR 
        ON SR.SampID = MS.SamplingID 
) 
 
SELECT 
    MicroID, 
    SamplingID, 
 
    SamplingResultID, 
    SampID, 
 
    No, 
    No2, 
    NoIndex, 
 
    Date, 
    Time, 
    Batch_Lot_no, 

    /* เพิ่ม Item */
    Item,
 
    TPC_Result, 
    Y_M_Result, 
    [35C_Result], 
    [55C_Result], 
 
    Coliform_MPN, 
    Coliform_Result, 
 
    Ecoli_MPN, 
    Ecoli_result, 
 
    S_aureus, 
    B_cereus, 
    Salmonella,
		Other_Result
 
FROM ResultData 
 
WHERE NoIndex BETWEEN @StartNo AND @EndNo 
 
ORDER BY 
    NoIndex ASC, 
    SamplingResultID ASC;
