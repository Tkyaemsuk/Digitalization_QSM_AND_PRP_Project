/*
Application: QSM Microbiological Analysis System
Query name: Update_TPC_BottomPass_Brik
File: Update_TPC_BottomPass_Brik.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_47a1044abe72444089fe55229ca4b0b4
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, tpc, samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_30high
SET Colourcode = '{{code}}',
TPC = '{{tpc}}' WHERE sampID IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT('{{ samplings }}', ',')
);