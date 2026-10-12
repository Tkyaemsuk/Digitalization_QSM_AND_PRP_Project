/*
Application: QSM Microbiological Analysis System
Query name: CallBack Sampling
File: CallBack Sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2a74548f2ad74f4086b64fcf1d83ac98
Source: Budibase latest edited app export, 2026-10-12
Bindings: SamplingID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT
    s.*,
		CONVERT(VARCHAR(10), s.FillingDate, 103) AS Filling_Format,
	CONVERT(VARCHAR(10), s.ExpiredDate, 103) AS Expired_Format,
	CONVERT(VARCHAR(10), s.Recieved_date, 103) AS Recieved_Format,
			CONVERT(VARCHAR(10), s.Plan_CheckDate, 103) AS Plan_Format,
					CONVERT(VARCHAR(10), s.Plan_CheckDate55, 103) AS Plan55_Format,
					CONVERT(VARCHAR(10), s.Actual_CheckDate, 103) AS Actual_CheckDate_Format,
					CONVERT(VARCHAR(10), s.Actual_CheckDate55, 103) AS Actual_CheckDate55_Format,
		CONVERT(VARCHAR(5), DATEADD(HOUR, 7, CreatedBY), 108) AS [Time],
		send_emp.name AS Send_Name,
    send_emp2.name AS Send_Name2,
    send_emp3.name AS Send_Name3,
    send_emp4.name AS Send_Name4,
    Submit_emp.name AS SubmitBy_Name,
    physical_emp.name AS physical_Name,
    results_emp.name AS result_Name,
    physical_emps.name AS physicals_Name,
    results_emps.name AS results_Name,
    recept_emp.name AS Recevie_Name,
    super_emp.name AS Supervisor_Name,
		Submit_Remark as Remark_Submit,

    t30.temp30_no,
    t30.temp30_2_no,
    t30.temp30_3_no,

    t30.temp30_remark,
    t30.temp30_2_remark,
    t30.temp30_3_remark,

    t55.temp55_no,
    t55.temp55_2_no,
    t55.temp55_3_no,

    t55.temp55_remark,
    t55.temp55_2_remark,
    t55.temp55_3_remark,

    m.machine AS Machine_Name,
		m.DEP as DEP

FROM Sampling s

LEFT JOIN employee send_emp
    ON s.sendby = send_emp.code
		
LEFT JOIN employee send_emp2
    ON s.sendby2 = send_emp2.code

LEFT JOIN employee send_emp3
    ON s.sendby3 = send_emp3.code

LEFT JOIN employee send_emp4
    ON s.Send4 = send_emp4.code

LEFT JOIN employee Submit_emp
    ON s.submitBy = Submit_emp.code

LEFT JOIN employee physical_emp
    ON s.physical_by = physical_emp.code

LEFT JOIN employee results_emp
    ON s.results_by = results_emp.code

LEFT JOIN employee results_emps
    ON s.results_by2 = results_emps.code

LEFT JOIN employee physical_emps
    ON s.physical_by2 = physical_emps.code

LEFT JOIN employee recept_emp
    ON s.RecevieBy = recept_emp.code

LEFT JOIN employee super_emp
    ON s.SupervisorBy = super_emp.code

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
        FROM temperature_30
        WHERE sampID = s.SamplingID
          AND remark IS NOT NULL
    ) x
) t30

OUTER APPLY (
    SELECT
        MAX(CASE WHEN rn = 1 THEN no END)     AS temp55_no,
        MAX(CASE WHEN rn = 2 THEN no END)     AS temp55_2_no,
        MAX(CASE WHEN rn = 3 THEN no END)     AS temp55_3_no,

        MAX(CASE WHEN rn = 1 THEN remark END) AS temp55_remark,
        MAX(CASE WHEN rn = 2 THEN remark END) AS temp55_2_remark,
        MAX(CASE WHEN rn = 3 THEN remark END) AS temp55_3_remark
    FROM (
        SELECT
            no,
            remark,
            ROW_NUMBER() OVER (
                ORDER BY TRY_CAST(no AS INT)
            ) AS rn
        FROM temperature_55
        WHERE sampID = s.SamplingID
          AND remark IS NOT NULL
    ) x
) t55

WHERE s.SamplingID = '{{ SamplingID }}'