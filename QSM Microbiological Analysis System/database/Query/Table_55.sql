/*
Application: QSM Microbiological Analysis System
Query name: Table_55
File: Table_55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_0dd1b2dfa97f4a258c943db960d29fdf
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT *
FROM temperature_55
WHERE sampID = {{sampID}}
ORDER BY id
OFFSET 0 ROWS
FETCH NEXT 15 ROWS ONLY;