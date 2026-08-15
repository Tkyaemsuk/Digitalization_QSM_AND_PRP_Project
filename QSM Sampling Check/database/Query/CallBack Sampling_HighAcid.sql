SELECT
	Last30.BrikList_30,
	s.SamplingIDH as SamplingID,
	s.MFG_code as MFG,
	s.EXP_code as EXP,
	s.product as Product,
	s.machine as machine,
	s.size as Size,
	s.SendBy as SendBy,
	s.SendBy2 as SendBy2,
	s.SendBy3 as SendBy3,
	s.Send4 as SendBy4,
	s.Locked_Production as Locked,
	m.[dep no] as depid,
	CONCAT_WS(',', f.Product, f.Product2) AS Product_Select,
	CONCAT_WS(',', f.flavour, f.flavour2, f.flavour3, f.flavour4, f.flavour5, f.flavour6) AS Flavour,
		CONVERT(VARCHAR(10), s.MFG_code, 103) AS MFG_Code_Format,
    CONVERT(VARCHAR(10), s.EXP_code, 103) AS EXP_Code_Format,

    ISNULL(Production_Emp1.name, NULL) AS Production_Name_1,
    CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.SendBY_Date), 103)
    + ' ' +
    CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.SendBY_Date), 108) AS SendBy1_Time,

    ISNULL(Production_Emp2.name, NULL) AS Production_Name_2,
    CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.SendBY_Date2), 103)
    + ' ' +
    CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.SendBY_Date2), 108) AS SendBy2_Time,

    ISNULL(Production_Emp3.name, NULL) AS Production_Name_3,
    CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.SendBY_Date3), 103)
    + ' ' +
    CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.SendBY_Date3), 108) AS SendBy3_Time,

    ISNULL(Production_Emp4.name, NULL) AS Production_Name_4,
    CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.SendBY_Date4), 103)
    + ' ' +
    CONVERT(VARCHAR(5), DATEADD(HOUR, 7, s.SendBY_Date4), 108) AS SendBy4_Time,

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

    ISNULL(t30.temp30_no, 0)           AS temp30_no,
    ISNULL(t30.temp30_2_no, 0)         AS temp30_2_no,
    ISNULL(t30.temp30_3_no, 0)         AS temp30_3_no,

    ISNULL(t30.temp30_remark, NULL)    AS temp30_remark,
    ISNULL(t30.temp30_2_remark, NULL)  AS temp30_2_remark,
    ISNULL(t30.temp30_3_remark, NULL)  AS temp30_3_remark,

    ISNULL(m.machine, NULL) AS Machine_Name,
    ISNULL(m.dep, NULL) as Department

FROM [Sampling high] s

    LEFT JOIN employee Production_Emp1
        ON s.SendBy = Production_Emp1.code

    LEFT JOIN employee Production_Emp2
        ON s.SendBy2 = Production_Emp2.code

    LEFT JOIN employee Production_Emp3
        ON s.SendBy3 = Production_Emp3.code

    LEFT JOIN employee Production_Emp4
        ON s.Send4 = Production_Emp4.code

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
		
LEFT JOIN HighAcid_Sampling_Flavour f
	ON f.SamplingID = s.SamplingIDH
WHERE s.SamplingIDH = '{{ SamplingID }}';