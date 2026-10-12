/*
Application: QSM Microbiological Analysis System
Query name: Update_Sup_HighAcid
File: Update_Sup_HighAcid.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_567275191e7c49f6a982c9d72e5a832a
Source: Budibase latest edited app export, 2026-10-12
Bindings: Supervisor, Supervisor_Date, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update [Sampling high] set QSM_Sup_by = {{Supervisor}},
QSM_Sup_date = {{Supervisor_Date}} WHERE SamplingIDH IN (
    SELECT LTRIM(RTRIM(value))
    FROM STRING_SPLIT({{SampID}}, ',')
);