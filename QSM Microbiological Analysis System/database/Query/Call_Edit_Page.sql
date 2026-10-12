/*
Application: QSM Microbiological Analysis System
Query name: Call_Edit_Page
File: Call_Edit_Page.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_85e1570168e34e1db0a29eea593189ba
Source: Budibase latest edited app export, 2026-10-12
Bindings: Sampling
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT
    SH.*,
    M.machine AS machine_name
FROM [Sampling High] AS SH
LEFT JOIN [machine] AS M
    ON TRY_CONVERT(INT, SH.machine) = TRY_CONVERT(INT, M.no)
WHERE SH.SamplingIDH = '{{Sampling}}';