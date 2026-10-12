/*
Application: QSM Microbiological Analysis System
Query name: CallBackTable
File: CallBackTable.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3d682156e5cf49be9bd35b687fbff626
Source: Budibase latest edited app export, 2026-10-12
Bindings: PageNo, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

DECLARE @PageNo VARCHAR(10) = '{{PageNo}}';

WITH Data AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY id) AS RowNo,
           CONVERT(VARCHAR(5), DATEADD(HOUR, 7, Code), 108) AS [Time]
    FROM temperature_30high
    WHERE SampID = '{{sampID}}'
)
SELECT *
FROM Data
WHERE NULLIF(@PageNo,'') IS NULL
   OR LOWER(@PageNo) = 'all'
   OR RowNo BETWEEN ((TRY_CAST(@PageNo AS INT) - 1) * 30 + 1)
                AND (TRY_CAST(@PageNo AS INT) * 30)
ORDER BY RowNo;