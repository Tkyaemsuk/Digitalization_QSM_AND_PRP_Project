/*
Application: QSM Microbiological Analysis System
Query name: UnlockSamp_HighAcid_Production
File: UnlockSamp_HighAcid_Production.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_d773cad0cd87473fbc538bc04d61ad2b
Source: Budibase latest edited app export, 2026-10-12
Bindings: Userid, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE [Sampling high] SET recieved_by = NULL, recieved_date = NULL, Locked_Production = '0', Unlocked_Uid = {{Userid}} WHERE SamplingIDH = {{SampID}}