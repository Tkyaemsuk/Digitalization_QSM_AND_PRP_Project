/*
Application: QSM Microbiological Analysis System
Query name: Update_Physical_highacid
File: Update_Physical_highacid.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_322e64adf23648d1b62eba5c9105a56b
Source: Budibase latest edited app export, 2026-10-12
Bindings: inspect, inspect_date, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE [Sampling high]
SET
    inspector_by = {{inspect}},
    inspector_date = {{inspect_date}}
WHERE SamplingIDH IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT({{SampID}}, ',')
);