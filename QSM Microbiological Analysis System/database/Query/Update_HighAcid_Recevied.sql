/*
Application: QSM Microbiological Analysis System
Query name: Update_HighAcid_Recevied
File: Update_HighAcid_Recevied.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4fd1fdbfa78e4882bea7df06373aaec0
Source: Budibase latest edited app export, 2026-10-12
Bindings: comp, de_comp, package, inspec, de_inspec, abspec, incomp_respec, de_incomp_respec, ab_respec, recieved, recieved_time, Sampling
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update [Sampling high] set Complete = {{comp}}, De_Complete = {{de_comp}}, Packaging = {{package}}, incom_spec = {{inspec}}, de_incom_spec = {{de_inspec}}, ab_spec = {{abspec}}, incom_spec_re = {{incomp_respec}}, De_incom_spec_re = {{de_incomp_respec}}, ab_spec_re = {{ab_respec}}, recieved_by = {{recieved}}, recieved_date = CONVERT(DATETIME2,{{recieved_time}}, 101), Locked_Production = '1' where SamplingIDH = {{Sampling}}