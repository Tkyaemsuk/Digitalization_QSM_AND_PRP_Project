/*
Application: QSM Microbiological Analysis System
Query name: Update_Filling
File: Update_Filling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_330c44a86ad64990b07b7e4f6df839c0
Source: Budibase latest edited app export, 2026-10-12
Bindings: Fdate, Edate, EditBy, P, P2, SamID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling
SET
    FillingDate = '{{Fdate}}',
    ExpiredDate = '{{Edate}}',
    EditBy = '{{EditBy}}',
		Plan_CheckDate = '{{P}}',
		Plan_CheckDate55 = '{{P2}}'
WHERE SamplingID = '{{SamID}}';