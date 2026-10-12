/*
Application: QSM Microbiological Analysis System
Query name: Update Sampling Submit
File: Update Sampling Submit.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ace2c5f350dc4c489c4302215c68a429
Source: Budibase latest edited app export, 2026-10-12
Bindings: check30, check55, submitby, submitdate, remark, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update Sampling SET
check30 = '{{check30}}',
check55 = '{{check55}}',
submitBy = {{submitby}},
submit_date = '{{submitdate}}',
submit_Remark = '{{remark}}'
WHERE SamplingID = {{sampID}}