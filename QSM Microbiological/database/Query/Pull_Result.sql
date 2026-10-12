/*
Application: QSM Microbiological
Query name: Pull_Result
File: Pull_Result.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_02695c662ff2481db482c986b41b50f4
Budibase function: read
Bindings: MicroID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT 
    SR.*, 
    MS.MicroID, 
    MS.Batch AS Sampling_Batch,

    SR.Batch_Lot_no AS Batch_Lot_No,

    M.Coliform_unit, 
    M.Ecoli_unit, 
    M.Salmonella_unit, 
    M.Staphylococcus_unit, 
    M.Bacillus_unit,

    CASE 
        WHEN LTRIM(RTRIM(CONVERT(NVARCHAR(255), SR.Batch_Lot_no))) =
             LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Batch)))
        THEN 'ตรง'
        ELSE 'ไม่ตรง'
    END AS Batch_Check

FROM [Sampling_Result] AS SR

INNER JOIN [Micro Sampling] AS MS
    ON SR.SampID = MS.SamplingID

LEFT JOIN [Micro] AS M
    ON MS.MicroID = M.MicroID

WHERE 
    MS.MicroID = '{{MicroID}}'

ORDER BY 
    SR.SampID,
    SR.No ASC;
