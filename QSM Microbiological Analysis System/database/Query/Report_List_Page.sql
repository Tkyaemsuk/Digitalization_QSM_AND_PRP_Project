/*
Application: QSM Microbiological Analysis System
Query name: Report_List_Page
File: Report_List_Page.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6d94a8115e3c4605a27938b0e9125133
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID, PageNo
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH Data AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY id) AS RowNo
    FROM temperature_30
    WHERE sampID = {{sampID}}
)
SELECT *
FROM Data
WHERE RowNo BETWEEN (({{ PageNo }} - 1) * 30 + 1)
                AND ({{ PageNo }} * 30)
ORDER BY RowNo;