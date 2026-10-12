/*
Application: QSM Microbiological Analysis System
Query name: Table_30
File: Table_30.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3be9cf5f48fb41fcab0320568bd7d59b
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT *
FROM temperature_30
WHERE sampID = {{sampID}}
ORDER BY id