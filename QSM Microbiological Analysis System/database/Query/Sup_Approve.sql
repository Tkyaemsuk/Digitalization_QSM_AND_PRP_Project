/*
Application: QSM Microbiological Analysis System
Query name: Sup_Approve
File: Sup_Approve.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_99e27c384e094d4bb7a457f8bf645ce2
Source: Budibase latest edited app export, 2026-10-12
Bindings: SupCode, Supdate, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET SupervisorBy = {{SupCode}}, Supervisor_Date = {{Supdate}} WHERE SamplingID = {{SampID}}