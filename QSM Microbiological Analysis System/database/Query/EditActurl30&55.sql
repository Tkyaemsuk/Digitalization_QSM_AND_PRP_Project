/*
Application: QSM Microbiological Analysis System
Query name: EditActurl30&55
File: EditActurl30&55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9bf319f443d24ba091306917bc15170f
Source: Budibase latest edited app export, 2026-10-12
Bindings: CheckType, CheckDate, samplingID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE [Sampling]
SET
    Actual_CheckDate =
        CASE
            WHEN '{{ CheckType }}' = '30'
            THEN '{{ CheckDate }}'
            ELSE Actual_CheckDate
        END,
    Actual_CheckDate55 =
        CASE
            WHEN '{{ CheckType }}' = '55'
            THEN '{{ CheckDate }}'
            ELSE Actual_CheckDate55
        END
WHERE samplingID = '{{ samplingID }}';