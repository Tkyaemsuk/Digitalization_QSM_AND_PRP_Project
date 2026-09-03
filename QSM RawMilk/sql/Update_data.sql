UPDATE [Sampling RawMilk]
SET
    [plan] = CASE
    WHEN NULLIF('{{Plan}}','') IS NULL THEN NULL
    ELSE DATETIMEFROMPARTS(
        YEAR(GETDATE()),
        MONTH(GETDATE()),
        DAY(GETDATE()),
        DATEPART(HOUR, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{Plan}}','T',' '),'.000Z',''))),
        DATEPART(MINUTE, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{Plan}}','T',' '),'.000Z',''))),
        DATEPART(SECOND, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{Plan}}','T',' '),'.000Z',''))),
        0
    )
END,

    [Date]          = '{{Date}}',
    Supplier        = '{{Supplier}}',
    grade           = '{{grade}}',
    bill            = '{{bill}}',
    truck_no        = '{{truck_no}}',
    driver_name     = '{{driver_name}}',
    W_kg            = {{W_kg}},
    W_PDP           = {{W_PDP}},

 T_arrived = CASE
    WHEN NULLIF('{{T_arrived}}','') IS NULL THEN NULL
    ELSE DATETIMEFROMPARTS(
        YEAR(GETDATE()),
        MONTH(GETDATE()),
        DAY(GETDATE()),
        DATEPART(HOUR, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_arrived}}','T',' '),'.000Z',''))),
        DATEPART(MINUTE, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_arrived}}','T',' '),'.000Z',''))),
        DATEPART(SECOND, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_arrived}}','T',' '),'.000Z',''))),
        0
    )
END,

T_sampling = CASE
    WHEN NULLIF('{{T_sampling}}','') IS NULL THEN NULL
    ELSE DATETIMEFROMPARTS(
        YEAR(GETDATE()),
        MONTH(GETDATE()),
        DAY(GETDATE()),
        DATEPART(HOUR, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_sampling}}','T',' '),'.000Z',''))),
        DATEPART(MINUTE, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_sampling}}','T',' '),'.000Z',''))),
        DATEPART(SECOND, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_sampling}}','T',' '),'.000Z',''))),
        0
    )
END,

T_QSM_P = CASE
    WHEN NULLIF('{{T_QSM_P}}','') IS NULL THEN NULL
    ELSE DATETIMEFROMPARTS(
        YEAR(GETDATE()),
        MONTH(GETDATE()),
        DAY(GETDATE()),
        DATEPART(HOUR, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_QSM_P}}','T',' '),'.000Z',''))),
        DATEPART(MINUTE, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_QSM_P}}','T',' '),'.000Z',''))),
        DATEPART(SECOND, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_QSM_P}}','T',' '),'.000Z',''))),
        0
    )
END,

T_goback = CASE
    WHEN NULLIF('{{T_goback}}','') IS NULL THEN NULL
    ELSE DATETIMEFROMPARTS(
        YEAR(GETDATE()),
        MONTH(GETDATE()),
        DAY(GETDATE()),
        DATEPART(HOUR, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_goback}}','T',' '),'.000Z',''))),
        DATEPART(MINUTE, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_goback}}','T',' '),'.000Z',''))),
        DATEPART(SECOND, TRY_CONVERT(datetime2, REPLACE(REPLACE('{{T_goback}}','T',' '),'.000Z',''))),
        0
    )
END,

    Temp_Tank_1 = {{Temp_T1}},
    Temp_Tank_2 = {{Temp_T2}},
    Temp_Tank_3 = {{Temp_T3}},
    R_Tank_1 = {{R_T1}},
    R_Tank_2 = {{R_T2}},
    R_Tank_3 = {{R_T3}},
    P_Tank_1 = {{P_T11}},
    P_Tank_2 = {{P_T22}},
    P_Tank_3 = {{P_T33}},
    Antibiotic_P = '{{Antibiotic_P}}',
    Alcohol_P    = '{{Alcohol_P}}',
    Brix    = {{Brix}},
    SG      = {{SG1}},
    pH      = {{pH}},
    TA      = {{TA}},
    Fat     = {{Fat}},
    Protein = {{Protein}},
    TS      = {{TS1}},
    SNF     = {{SNF1}},
    FP      = {{FP}},
    SPC_Tank_1 = {{SPC_T1}},
    SPC_Tank_2 = {{SPC_T2}},
    SPC_Tank_3 = {{SPC_T3}},
    coliform_1 = {{coliforms_1}},
    coliform_2 = {{coliforms_2}},
    coliform_3 = {{coliforms_3}},
    E_Tank_1 = {{E_T1}},
    E_Tank_2 = {{E_T2}},
    E_Tank_3 = {{E_T3}},
    SPC = {{SPC}},
    SCC = {{SCC}},
    Car_Alevent       = '{{Car_Alevent}}',
    invoice_no        = '{{invoice_no}}',
    Result            = '{{Result}}',
    Appearance        = '{{Appearance}}',
    Inspector         = '{{assss}}',
    Material_document = '{{Material_document}}',
    remark            = '{{remark}}',
    sup               = '{{sup}}',
    sup_date          = '{{sup_date}}',
    Std_Price         = {{Std_Price}},
    Status            = '{{Status}}',
    NCR_Reject_No     = '{{NCR_Reject_No}}',
    Grade_SPC         = '{{Grade_SPC}}',
    Grade_SCC         = '{{Grade_SCC}}',
    Grade_FP          = '{{Grade_FP}}',
    Grade_Fat         = '{{Grade_Fat}}',
    Grade_SNF         = '{{Grade_SNF}}',
    rate_SPC          = {{rate_SPC}},
    rate_SCC          = {{rate_SCC}},
    rate_FP           = {{rate_FP}},
    rate_Fat          = {{rate_Fat}},
    rate_SNF          = {{rate_SNF}},
    Net_Price         = {{Net_Price}},
    Price             = {{Price}}
WHERE SamplingID = '{{SamplingC}}';