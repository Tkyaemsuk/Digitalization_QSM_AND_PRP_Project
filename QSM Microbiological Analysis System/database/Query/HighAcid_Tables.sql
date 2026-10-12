/*
Application: QSM Microbiological Analysis System
Query name: HighAcid_Tables
File: HighAcid_Tables.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7bb97b95d99e40fb983cfbd919117c90
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampid, MFG, ActualDate, mac
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT  
    h.SamplingIDH AS SamplingID,  
    h.[Group] AS [Group],  
    h.amount AS Amount,  
    m.machine AS Machine,
		h.check_date,
    CONVERT(VARCHAR(10), h.MFG_code, 103) AS MFG_Code,  
    CONVERT(VARCHAR(10), h.EXP_code, 103) AS EXP_Code,  

    CASE  
        WHEN h.QSM_Sup_by IS NOT NULL THEN 'success' 
        WHEN h.Submit_by IS NOT NULL  
             AND h.recieved_by IS NOT NULL THEN 'pending' 
        ELSE 'waiting' 
    END AS status  

FROM [Sampling high] h  

LEFT JOIN machine m  
    ON h.machine = m.no  

WHERE  
    -- Sampling ID
    ('{{sampid}}' = '' OR h.SamplingIDH = '{{sampid}}') 
 
    -- MFG Date
    AND (
        '{{MFG}}' = ''  
        OR CAST(h.MFG_code AS DATE) = CAST('{{MFG}}' AS DATE)
    )

    -- Actual Date = check_date
    -- check_date มีทั้งวันที่และเวลา แต่ค้นหาเฉพาะวันที่
    AND (
        '{{ActualDate}}' = ''
        OR CAST(h.check_date AS DATE) = CAST('{{ActualDate}}' AS DATE)
    )

    -- Machine
    AND (
        '{{mac}}' = ''  
        OR m.no = '{{mac}}' 
    );