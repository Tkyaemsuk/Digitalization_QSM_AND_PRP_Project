/*
Application: QSM Microbiological Analysis System
Query name: SYNC_QUNITY_SAMPLINGS
File: SYNC_QUNITY_SAMPLINGS.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_22f51a3816f74dbdbe6a069de85bc0fd
Source: Budibase latest edited app export, 2026-10-12
Bindings: none
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH t30 AS (
    SELECT
        sampID,
        no,
        ROW_NUMBER() OVER (
            PARTITION BY sampID
            ORDER BY id DESC
        ) AS rn
    FROM temperature_30
),
t55 AS (
    SELECT
        sampID,
        no,
        ROW_NUMBER() OVER (
            PARTITION BY sampID
            ORDER BY id DESC
        ) AS rn
    FROM temperature_55
)

UPDATE s
SET
    s.Quanity  = t30.no,
    s.Quanity2 = t55.no
FROM Sampling s
LEFT JOIN t30
    ON s.SamplingID = t30.sampID
    AND t30.rn = 1
LEFT JOIN t55
    ON s.SamplingID = t55.sampID
    AND t55.rn = 1;