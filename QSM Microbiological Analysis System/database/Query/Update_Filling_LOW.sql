/*
Application: QSM Microbiological Analysis System
Query name: Update_Filling_LOW
File: Update_Filling_LOW.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ef40da05eded48dea86f879918c269ab
Source: Budibase latest edited app export, 2026-10-12
Bindings: Fdate, Edate, EditBy, SamID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling
SET
    FillingDate = '{{Fdate}}',
    ExpiredDate = '{{Edate}}',
    EditBy = '{{EditBy}}'
WHERE SamplingID = '{{SamID}}';