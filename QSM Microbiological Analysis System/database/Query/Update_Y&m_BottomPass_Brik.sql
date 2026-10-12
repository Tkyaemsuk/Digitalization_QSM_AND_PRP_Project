/*
Application: QSM Microbiological Analysis System
Query name: Update_Y&m_BottomPass_Brik
File: Update_Y&m_BottomPass_Brik.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8c1d57a6703446a4823ab4bb8ab73b53
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, ym, samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_30high
SET Colourcode = '{{code}}',
Y_M = '{{ym}}'
WHERE sampID IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT('{{ samplings }}', ',')
);