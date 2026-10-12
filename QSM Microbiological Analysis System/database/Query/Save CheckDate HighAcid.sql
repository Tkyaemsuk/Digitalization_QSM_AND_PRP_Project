/*
Application: QSM Microbiological Analysis System
Query name: Save CheckDate HighAcid
File: Save CheckDate HighAcid.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ad226178894b462e813886865db5f001
Source: Budibase latest edited app export, 2026-10-12
Bindings: Checkdate, Checkdate2, Sampling
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update [Sampling high] set check_date = {{Checkdate}} , check_date2 = {{Checkdate2}} where SamplingIDH = {{Sampling}};