/*
Application: QSM Microbiological Analysis System
Query name: UnlockSamp_Production
File: UnlockSamp_Production.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_369a06f4ea384cf1a20b3807afed55fb
Source: Budibase latest edited app export, 2026-10-12
Bindings: Userid, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET RecevieBy = NULL, Recieved_date = NULL, Locked_Production = '0', Unlocked_Uid = {{Userid}} WHERE SamplingID = {{SampID}}