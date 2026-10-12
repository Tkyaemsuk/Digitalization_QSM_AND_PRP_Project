/*
Application: QSM Microbiological Analysis System
Query name: UPDATE_IMPORT
File: UPDATE_IMPORT.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_487feda73adb45319ad456b7af59684e
Source: Budibase latest edited app export, 2026-10-12
Bindings: data
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

DECLARE @json NVARCHAR(MAX) = {{data}};

UPDATE t
SET 
    t.pH = j.pH,
    t.atp = j.atp
FROM temperature_30 t
JOIN OPENJSON(@json)
WITH (
    sampID NVARCHAR(50),
    no NVARCHAR(10),
    pH NVARCHAR(10),
    atp NVARCHAR(10)
) j
ON t.sampID = j.sampID
AND t.no = j.no;