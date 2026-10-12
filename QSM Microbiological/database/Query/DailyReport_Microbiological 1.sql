/*
Application: QSM Microbiological
Query name: DailyReport_Microbiological 1
File: DailyReport_Microbiological 1.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_f8370ae636fb4effb48372cab7c2100a
Budibase function: read
Bindings: Micro
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Get_Micro_InternalQuality_First_MPN_With_Employee_Merged_Item.sql */ 
 
WITH MicroData AS 
( 
    SELECT * 
    FROM Micro 
    WHERE MicroID = '{{ Micro }}' 
), 
 
InternalQuality AS 
( 
    SELECT 
        IQ.*, 
 
        ROW_NUMBER() OVER 
        ( 
            PARTITION BY IQ.MicroID 
            ORDER BY IQ.id 
        ) AS IQ_RowNo 
 
    FROM [Internal_Quality] AS IQ 
    WHERE IQ.MicroID = '{{ Micro }}' 
) 
 
SELECT 
    M.*, 


 
    /* ========================================================= 
       ชื่อพนักงานจาก Employee 
       ========================================================= */ 
    E_Submit.Name      AS Submit_by_Name, 
    E_Received.Name    AS received_by_Name, 
    E_Inspector.Name   AS Inspector_Name, 
    E_Interpretor.Name AS Interpretor_Name, 
    E_Sup.Name         AS Sup_Name, 
 
 
    /* ========================================================= 
       MPN ของ Sampling ตัวแรก 
       ========================================================= */ 
    MPN.SamplingID AS MPN_SamplingID, 
    MPN.No AS MPN_No, 
    MPN.Coliform_MPN, 
    MPN.Ecoli_MPN, 
 
 
    /* ========================================================= 
       Internal Quality สูงสุด 15 รายการ 
 
       Media / Equipment / Other 
       รวมเป็นคอลัมน์เดียวชื่อ Item 
       ========================================================= */ 
    ( 
        SELECT 
            IQ_RowNo, 
            id, 
            No, 
 
            CONCAT_WS( 
                ' / ', 
                NULLIF(LTRIM(RTRIM(Media)), ''), 
                NULLIF(LTRIM(RTRIM(Equipment)), ''), 
                NULLIF(LTRIM(RTRIM(Other)), '') 
            ) AS Item, 
 
            Batch, 
            Pass, 
            No_pass, 
            Positive, 
            Negative 
 
        FROM InternalQuality AS IQ 
 
        WHERE IQ.IQ_RowNo <= 15 
 
        ORDER BY IQ.IQ_RowNo 
 
        FOR JSON PATH 
    ) AS InternalQuality 
 
FROM MicroData AS M 
 
LEFT JOIN Employee AS E_Submit 
    ON E_Submit.code = M.Submit_by 
 
LEFT JOIN Employee AS E_Received 
    ON E_Received.code = M.received_by 
 
LEFT JOIN Employee AS E_Inspector 
    ON E_Inspector.code = M.Inspector 
 
LEFT JOIN Employee AS E_Interpretor 
    ON E_Interpretor.code = M.Interpretor 
 
LEFT JOIN Employee AS E_Sup 
    ON E_Sup.code = M.Sup 
 
OUTER APPLY 
( 
    SELECT TOP 1 
        MS.SamplingID, 
        SR.no AS No, 
        SR.Coliform_MPN, 
        SR.Ecoli_MPN 
 
    FROM [Micro Sampling] AS MS 
 
    INNER JOIN Sampling_Result AS SR 
        ON SR.SampID = MS.SamplingID 
 
    WHERE 
        MS.MicroID = M.MicroID 
        AND MS.SamplingID IS NOT NULL 
 
    ORDER BY 
        MS.SamplingID ASC, 
        TRY_CAST(SR.no AS DECIMAL(18,4)) ASC, 
        SR.id ASC 
 
) AS MPN;
