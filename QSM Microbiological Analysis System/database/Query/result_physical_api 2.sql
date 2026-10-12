/*
Application: QSM Microbiological Analysis System
Query name: result_physical_api 2
File: result_physical_api 2.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_6ade36b49c44479c9fe49aa5bac327ea
Source: Budibase latest edited app export, 2026-10-12
Bindings: phy, phy_date, result, result_date, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET physical_by2 = {{phy}}, physical_date2 = '{{phy_date}}', results_by2 = {{result}}, results_date2 = '{{result_date}}' WHERE SamplingID = {{sampID}};