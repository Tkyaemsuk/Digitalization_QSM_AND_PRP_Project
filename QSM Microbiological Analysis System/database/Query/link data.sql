/*
Application: QSM Microbiological Analysis System
Query name: link data
File: link data.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3fbbae07294d4ad4bef8081e15434571
Source: Budibase latest edited app export, 2026-10-12
Bindings: none
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE t
SET t.Machine1 = s.Machine
FROM temperature_30 t
INNER JOIN Sampling s
ON t.sampID = s.SamplingID;