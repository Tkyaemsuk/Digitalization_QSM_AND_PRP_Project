/*
Application: QSM Microbiological Analysis System
Query name: SamplingTable
File: SamplingTable.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef417db2fbf44754bd6a28c849b67a09
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampid, FillingDate, ActualDate, mac
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT  
    s.SamplingID AS SamplingID,  
    s.[Group] AS [Group],  
    m.dep AS Department,  
    CONVERT(VARCHAR(10), s.FillingDate, 103) AS FillingDate,  
    m.machine AS machine,
		s.Actual_CheckDate,
    s.Product AS Product,   
    s.Flavour AS Flavour,  
    s.submitBy AS submitBy,  
    s.RecevieBy AS RecevieBy,  
    s.SupervisorBy AS SupervisorID,
 
    CASE  
        WHEN s.SupervisorBy IS NOT NULL THEN 'success' 
        WHEN s.submitBy IS NOT NULL  
             AND s.RecevieBy IS NOT NULL THEN 'pending' 
        ELSE 'waiting' 
    END AS status  
 
FROM Sampling s 
 
LEFT JOIN machine m  
    ON s.machine = m.no  
 
WHERE  
    -- Sampling ID
    ('{{sampid}}' = '' OR s.SamplingID = '{{sampid}}') 
 
    -- Filling Date
    AND (
        '{{FillingDate}}' = ''  
        OR CAST(s.FillingDate AS DATE) = CAST('{{FillingDate}}' AS DATE)
    )

    -- Actual Date = FillingDate + dayFinished
    AND (
        '{{ActualDate}}' = ''
        OR CAST(
            DATEADD(
                DAY,
                ISNULL(
                    TRY_CONVERT(
                        INT,
                        NULLIF(LTRIM(RTRIM(s.dayFinished)), '')
                    ),
                    0
                ),
                s.FillingDate
            ) AS DATE
        ) = CAST('{{ActualDate}}' AS DATE)
    )
 
    -- Machine
    AND (
        '{{mac}}' = ''  
        OR m.no = '{{mac}}' 
    );