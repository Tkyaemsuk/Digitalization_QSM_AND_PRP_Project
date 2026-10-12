/*
Application: QSM Microbiological Analysis System
Query name: CallBack Sampling_HighAcid
File: CallBack Sampling_HighAcid.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_5b555ae892f4463397d709f40263d313
Source: Budibase latest edited app export, 2026-10-12
Bindings: SamplingID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT
    s.*,
		qc.no as qc_no,
		qc.media as qc_media,
		qc.batch as qc_batch,
		qc.pass as qc_pass,
		qc.notpass as qc_notpass,
		Last30.BrikList_30,
		CONVERT(VARCHAR(10), s.MFG_code, 103) AS MFG_Code_Format,
    CONVERT(VARCHAR(10), s.EXP_code, 103) AS EXP_Code_Format,
ISNULL(Submit_emp.name, NULL) AS SubmitBy_Name, 
CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.Submit_date), 103) 
+ ' ' + 
CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.Submit_date), 108) AS Submit_Time,

ISNULL(Recevie_emp.name, NULL) AS Recevie_Name, 
CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.recieved_date), 103)
+ ' ' +
CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.recieved_date), 108) AS Recieved_Time,

ISNULL(Inspecter_emp.name, NULL) AS Inspecter_Name,
CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.inspector_date), 103)
+ ' ' +
CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.inspector_date), 108) AS Inspector_Time,

ISNULL(Interpretor_by.name, NULL) AS Interpretor_Name,
CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.interpretor_date), 103)
+ ' ' +
CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.interpretor_date), 108) AS Interpretor_Time,

ISNULL(super_emp.name, NULL) AS Supervisor_Name,
CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.QSM_Sup_date), 103)
+ ' ' +
CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.QSM_Sup_date), 108) AS QSM_Sup_Time,
    ISNULL(t30.temp30_no, NULL)           AS temp30_no,
    ISNULL(t30.temp30_2_no, NULL)         AS temp30_2_no,
    ISNULL(t30.temp30_3_no, NULL)         AS temp30_3_no,

    ISNULL(t30.temp30_remark, NULL)    AS temp30_remark,
    ISNULL(t30.temp30_2_remark, NULL)  AS temp30_2_remark,
    ISNULL(t30.temp30_3_remark, NULL)  AS temp30_3_remark,

    ISNULL(m.machine, NULL)            AS Machine_Name

FROM [Sampling high] s

LEFT JOIN employee Submit_emp
    ON s.submit_by = Submit_emp.code

LEFT JOIN employee Recevie_emp
    ON s.recieved_by = Recevie_emp.code

LEFT JOIN employee Inspecter_emp
    ON s.inspector_by = Inspecter_emp.code

LEFT JOIN employee Interpretor_by
    ON s.interpretor_by = Interpretor_by.code

LEFT JOIN employee super_emp
    ON s.QSM_Sup_by = super_emp.code

LEFT JOIN machine m
    ON s.machine = m.no
		
LEFT JOIN Quanity_Control_Sampling_highacid qc
		ON qc.SampID = s.SamplingIDH

OUTER APPLY (
    SELECT
        MAX(CASE WHEN rn = 1 THEN no END)     AS temp30_no,
        MAX(CASE WHEN rn = 2 THEN no END)     AS temp30_2_no,
        MAX(CASE WHEN rn = 3 THEN no END)     AS temp30_3_no,

        MAX(CASE WHEN rn = 1 THEN remark END) AS temp30_remark,
        MAX(CASE WHEN rn = 2 THEN remark END) AS temp30_2_remark,
        MAX(CASE WHEN rn = 3 THEN remark END) AS temp30_3_remark
    FROM (
        SELECT
            no,
            remark,
            ROW_NUMBER() OVER (
                ORDER BY TRY_CAST(no AS INT)
            ) AS rn
        FROM temperature_30high
        WHERE sampID = s.SamplingIDH
          AND remark IS NOT NULL
    ) x
) t30

OUTER APPLY (
    SELECT TOP 1
        no AS BrikList_30
    FROM temperature_30high
    WHERE sampID = s.SamplingIDH
    ORDER BY id DESC
) Last30

WHERE s.SamplingIDH = '{{ SamplingID }}';