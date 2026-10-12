/*
Application: QSM Microbiological Analysis System
Query name: UpdateTemp30
File: UpdateTemp30.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8a4dc084c9b842ad8333281064568b5f
Source: Budibase latest edited app export, 2026-10-12
Bindings: Colour, smell, TPC, id
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_30
SET 
    colour = '{{Colour}}',
    smell = '{{smell}}',
    tpc = {{TPC}}
WHERE id = '{{id}}';