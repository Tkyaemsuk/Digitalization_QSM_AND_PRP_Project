/*
Application: QSM Microbiological Analysis System
Query name: Update_Microbe_highacid
File: Update_Microbe_highacid.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3edef2f1a7814e49bee5aceadf8e88b9
Source: Budibase latest edited app export, 2026-10-12
Bindings: inspect, inspect_date, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update [Sampling high] set interpretor_by = {{inspect}},
interpretor_date = {{inspect_date}} WHERE SamplingIDH IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT({{SampID}}, ',')
);