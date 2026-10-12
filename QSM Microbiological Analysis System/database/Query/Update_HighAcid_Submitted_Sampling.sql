/*
Application: QSM Microbiological Analysis System
Query name: Update_HighAcid_Submitted_Sampling
File: Update_HighAcid_Submitted_Sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_42105532df4943d6af6ae909cf8fb625
Source: Budibase latest edited app export, 2026-10-12
Bindings: submit, submit_date, tpch, Y_M, Physical, R_Temp, Temp8, Fzer, OBox, OT_Spec, SubRemark, Sampling
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

update [Sampling high] set Submit_by = {{submit}},
Submit_date = CONVERT(DATETIME2,{{submit_date}}, 101),
TPCH = {{tpch}}, Y_M = {{Y_M}}, Physical_T = {{Physical}},
Room_Temp = {{R_Temp}}, Temp0_8 = {{Temp8}}, Feezer = {{Fzer}}, OtherSpecBox = {{OBox}}, Other_Spec = {{OT_Spec}},Submit_remark = {{SubRemark}} where SamplingIDH = {{Sampling}};