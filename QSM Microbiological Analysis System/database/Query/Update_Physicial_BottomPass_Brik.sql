/*
Application: QSM Microbiological Analysis System
Query name: Update_Physicial_BottomPass_Brik
File: Update_Physicial_BottomPass_Brik.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_75fa09ee3f2f4d0192fa781c2b3d8811
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, colour, smell, aprance, samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_30high
SET Colourcode = '{{code}}',
Colour = {{colour}}, Smell = {{smell}}, Appearance = {{aprance}} WHERE sampID IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT('{{ samplings }}', ',')
);