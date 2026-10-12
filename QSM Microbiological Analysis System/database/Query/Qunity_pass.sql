/*
Application: QSM Microbiological Analysis System
Query name: Qunity_pass
File: Qunity_pass.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d446973d6a704925b3c5bc2ca5f01256
Source: Budibase latest edited app export, 2026-10-12
Bindings: Pass, samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Quanity_Control_Sampling_highacid
SET Pass = '{{Pass}}'
WHERE sampID IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT('{{samplings}}', ',')
);