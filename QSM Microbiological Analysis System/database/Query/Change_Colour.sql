/*
Application: QSM Microbiological Analysis System
Query name: Change_Colour
File: Change_Colour.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_0a97273678ed47eb9f4471a15fcdab7d
Source: Budibase latest edited app export, 2026-10-12
Bindings: CC, SID, idno, temp
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE "temperature_30"
SET "ColourCode" = {{CC}}
WHERE "sampID" = {{SID}} AND "Id_no" = {{idno}} AND "temp_type" = {{temp}}