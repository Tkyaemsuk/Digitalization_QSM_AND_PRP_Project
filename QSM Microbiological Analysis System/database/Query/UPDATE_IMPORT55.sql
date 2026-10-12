/*
Application: QSM Microbiological Analysis System
Query name: UPDATE_IMPORT55
File: UPDATE_IMPORT55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2781257b4d244ec8a3bb96370cc22424
Source: Budibase latest edited app export, 2026-10-12
Bindings: data
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

DECLARE @json NVARCHAR(MAX) = {{data}};

UPDATE t
SET 
    t.ph= j.ph,
    t.atp = j.atp
FROM temperature_55 t
JOIN OPENJSON(@json)
WITH (
    sampID NVARCHAR(50),
    no NVARCHAR(10),
    ph NVARCHAR(10),
    atp NVARCHAR(10)
) j
ON t.sampID = j.sampID
AND t.no = j.no;