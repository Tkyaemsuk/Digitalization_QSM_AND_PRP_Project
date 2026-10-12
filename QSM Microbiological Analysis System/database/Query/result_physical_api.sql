/*
Application: QSM Microbiological Analysis System
Query name: result_physical_api
File: result_physical_api.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_8ed4b63f52204c0c83287edd0570c22b
Source: Budibase latest edited app export, 2026-10-12
Bindings: phy, phy_date, result, result_date, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET physical_by = {{phy}}, physical_date = '{{phy_date}}', results_by = {{result}}, results_date = '{{result_date}}' WHERE SamplingID = {{sampID}};