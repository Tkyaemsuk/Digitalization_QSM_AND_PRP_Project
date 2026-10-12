/*
Application: QSM Microbiological Analysis System
Query name: CheckList Sampling
File: CheckList Sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_3a40ea9291744f6d8b2dd122fb9483a7
Source: Budibase latest edited app export, 2026-10-12
Bindings: FillingDate, machine, samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT 
    s.*,
		s.[Group],
    m.machine,
    s.SamplingIDH + ' (' + ISNULL(m.machine,'') + ')' AS Samp_Label
FROM [Sampling high] s
LEFT JOIN machine m
    ON s.machine = m.no
WHERE
(
    {{ FillingDate }} IS NULL
    OR CONVERT(VARCHAR(10), s.MFG_code, 23) = {{ FillingDate }}
)
AND
(
    {{ machine }} IS NULL
    OR s.[Group] = {{ machine }}
)
AND
(
    NULLIF('{{ samplings }}','') IS NULL
    OR s.SamplingIDH NOT IN (
        SELECT value 
        FROM STRING_SPLIT('{{ samplings }}', ',')
    )
)