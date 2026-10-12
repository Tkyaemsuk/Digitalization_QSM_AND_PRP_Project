/*
Application: QSM Microbiological Analysis System
Query name: Update  Results
File: Update  Results.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_9fcd264792b24b0b8b92ad810604613f
Source: Budibase latest edited app export, 2026-10-12
Bindings: tpc, atp, tpc2, atp2, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET 
tpc = {{tpc}}, 
atp = {{atp}},
tpc2 = {{tpc2}}, 
atp2 = {{atp2}}
WHERE SamplingID = {{sampID}}