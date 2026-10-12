/*
Application: QSM Microbiological Analysis System
Query name: Quanity Table
File: Quanity Table.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f7af0df2a76d4cdda61cd474dae73478
Source: Budibase latest edited app export, 2026-10-12
Bindings: samplings
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT
    qc.*,
    m.machine AS Machine
FROM [Quanity_Control_Sampling_highacid] qc
LEFT JOIN [Sampling high] sph
    ON qc.SampID = sph.SamplingIDH
LEFT JOIN [machine] m
    ON m.no = sph.machine
WHERE
    ISNULL('{{ samplings }}', '') <> ''
    AND sph.SamplingIDH IN ({{ samplings }})
ORDER BY m.no ASC;