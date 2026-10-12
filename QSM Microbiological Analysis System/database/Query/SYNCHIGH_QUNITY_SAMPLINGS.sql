/*
Application: QSM Microbiological Analysis System
Query name: SYNCHIGH_QUNITY_SAMPLINGS
File: SYNCHIGH_QUNITY_SAMPLINGS.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_855fee807bd64e019b33adaf0e36beef
Source: Budibase latest edited app export, 2026-10-12
Bindings: none
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH t30high AS (
    SELECT
        sampID,
        no,
        ROW_NUMBER() OVER (
            PARTITION BY sampID
            ORDER BY id DESC
        ) AS rn
    FROM temperature_30high
)
UPDATE s
SET
    s.amount = t30high.no
FROM [Sampling high] s
LEFT JOIN t30high
    ON s.SamplingIDH = t30high.sampID
    AND t30high.rn = 1