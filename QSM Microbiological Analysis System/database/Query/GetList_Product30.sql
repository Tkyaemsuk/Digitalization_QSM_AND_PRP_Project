/*
Application: QSM Microbiological Analysis System
Query name: GetList_Product30
File: GetList_Product30.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e50b768a8a9c45499956dc8f122cd927
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT * FROM temperature_30 WHERE sampID = {{sampID}}