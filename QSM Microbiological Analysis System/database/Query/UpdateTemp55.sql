/*
Application: QSM Microbiological Analysis System
Query name: UpdateTemp55
File: UpdateTemp55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6086e94cb9004fa69cae43ae8723a448
Source: Budibase latest edited app export, 2026-10-12
Bindings: Colour, smell, TPC, id
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_55
SET 
    colour = '{{Colour}}',
    smell = '{{smell}}',
    tpc = {{TPC}}
WHERE id = '{{id}}';