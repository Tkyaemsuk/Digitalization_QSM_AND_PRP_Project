/*
Application: QSM Microbiological Analysis System
Query name: Call Actual pH
File: Call Actual pH.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_ae831060148e40109e8145b6f1ac861d
Source: Budibase latest edited app export, 2026-10-12
Bindings: s1, s2, s3, s4, s5, s6
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH input_sampling AS (
    SELECT '{{ s1 }}' AS sampID, 1 AS sampling_order
    UNION ALL SELECT '{{ s2 }}', 2
    UNION ALL SELECT '{{ s3 }}', 3
    UNION ALL SELECT '{{ s4 }}', 4
    UNION ALL SELECT '{{ s5 }}', 5
    UNION ALL SELECT '{{ s6 }}', 6
),
joined AS (
    SELECT
        i.sampling_order,
        NULLIF(LTRIM(RTRIM(m.Machine)), '') AS MachineName,
        NULLIF(LTRIM(RTRIM(s.Flavour)), '') AS Flavour,
        NULLIF(LTRIM(RTRIM(CAST(s.Spec_Actual AS VARCHAR(20)))), '') AS SpecActual,
        NULLIF(LTRIM(RTRIM(CAST(s.Spec_Actual2 AS VARCHAR(20)))), '') AS SpecActual2
    FROM input_sampling i
    LEFT JOIN Sampling s ON s.SamplingID = i.sampID
    LEFT JOIN Machine m  ON m.No = s.Machine
),
built AS (
    SELECT
        sampling_order,
        CONCAT_WS(' ',
            CASE WHEN MachineName IS NOT NULL THEN MachineName + ')' END,
            Flavour,
            CASE
                WHEN SpecActual IS NOT NULL AND SpecActual2 IS NOT NULL
                     THEN SpecActual + '-' + SpecActual2
                ELSE COALESCE(SpecActual, SpecActual2)
            END
        ) AS ItemText
    FROM joined
)
SELECT STRING_AGG(ItemText, ' | ') WITHIN GROUP (ORDER BY sampling_order) AS ResultSequence
FROM built;