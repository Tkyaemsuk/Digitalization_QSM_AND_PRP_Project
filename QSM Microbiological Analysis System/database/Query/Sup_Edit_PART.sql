/*
Application: QSM Microbiological Analysis System
Query name: Sup_Edit_PART
File: Sup_Edit_PART.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_101f00f790404b30bdc2e034ba4eaf26
Source: Budibase latest edited app export, 2026-10-12
Bindings: comp, de_comp, package, inspec, de_inspec, abspec, incomp_respec, de_incomp_respec, ab_respec, recieved, recieved_time, Check1, Check2, MFGcode, EXPcode, submit, submit_date, tpch, Y_M, Physical, R_Temp, Temp8, Fzer, OBox, OT_Spec, SubRemark, Sampling
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE [Sampling high]
SET
    Complete = {{comp}},
    De_Complete = {{de_comp}},
    Packaging = {{package}},
    incom_spec = {{inspec}},
    de_incom_spec = {{de_inspec}},
    ab_spec = {{abspec}},
    incom_spec_re = {{incomp_respec}},
    De_incom_spec_re = {{de_incomp_respec}},
    ab_spec_re = {{ab_respec}},
    recieved_by = {{recieved}},
    recieved_date = CONVERT(DATETIME2, {{recieved_time}}, 101),
		check_date = {{Check1}},
		check_date2 = {{Check2}},
		MFG_code = {{MFGcode}},
		EXP_code = {{EXPcode}},

    Locked_Production = '1',

    Submit_by = {{submit}},
    Submit_date = CONVERT(DATETIME2, {{submit_date}}, 101),
    TPCH = {{tpch}},
    Y_M = {{Y_M}},
    Physical_T = {{Physical}},
    Room_Temp = {{R_Temp}},
    Temp0_8 = {{Temp8}},
    Feezer = {{Fzer}},
    OtherSpecBox = {{OBox}},
    Other_Spec = {{OT_Spec}},
    Submit_remark = {{SubRemark}}

WHERE SamplingIDH = {{Sampling}};