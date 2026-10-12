/*
Application: QSM Microbiological Analysis System
Query name: getph_sampling
File: getph_sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_972fd01c8c964efda3c9fe0cdad84776
Source: Budibase latest edited app export, 2026-10-12
Bindings: SamplingID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

/* =========================================================
   หา MIN / MAX จาก PH1 - PH16
   แล้ว Update ลง Sampling
   ========================================================= */

DECLARE @SamplingID NVARCHAR(255) =
    NULLIF(LTRIM(RTRIM('{{SamplingID}}')), '');


/* =========================================================
   Update Sampling
   PH_Before  = PH_MIN
   PH_Before2 = PH_MAX
   ========================================================= */

UPDATE s
SET
    s.PH_Before  = ph.PH_MIN,
    s.PH_Before2 = ph.PH_MAX
FROM Sampling AS s

INNER JOIN Recall_Ph AS rcp
    ON rcp.SamplingID = s.SamplingID

CROSS APPLY
(
    SELECT
        MIN(v) AS PH_MIN,
        MAX(v) AS PH_MAX

    FROM
    (
        VALUES
            (rcp.PH1),  (rcp.PH2),  (rcp.PH3),  (rcp.PH4),
            (rcp.PH5),  (rcp.PH6),  (rcp.PH7),  (rcp.PH8),
            (rcp.PH9),  (rcp.PH10), (rcp.PH11), (rcp.PH12),
            (rcp.PH13), (rcp.PH14), (rcp.PH15), (rcp.PH16)
    ) AS X(v)

) AS ph

WHERE
    rcp.SamplingID = @SamplingID
    AND s.SamplingID = @SamplingID;


/* =========================================================
   Return ผลหลัง Update
   ========================================================= */

SELECT
    rcp.SamplingID,

    rcp.PH1,
    rcp.PH2,
    rcp.PH3,
    rcp.PH4,
    rcp.PH5,
    rcp.PH6,
    rcp.PH7,
    rcp.PH8,
    rcp.PH9,
    rcp.PH10,
    rcp.PH11,
    rcp.PH12,
    rcp.PH13,
    rcp.PH14,
    rcp.PH15,
    rcp.PH16,

    ph.PH_MIN,
    ph.PH_MAX,

    s.PH_Before,
    s.PH_Before2

FROM Recall_Ph AS rcp

INNER JOIN Sampling AS s
    ON s.SamplingID = rcp.SamplingID

CROSS APPLY
(
    SELECT
        MIN(v) AS PH_MIN,
        MAX(v) AS PH_MAX

    FROM
    (
        VALUES
            (rcp.PH1),  (rcp.PH2),  (rcp.PH3),  (rcp.PH4),
            (rcp.PH5),  (rcp.PH6),  (rcp.PH7),  (rcp.PH8),
            (rcp.PH9),  (rcp.PH10), (rcp.PH11), (rcp.PH12),
            (rcp.PH13), (rcp.PH14), (rcp.PH15), (rcp.PH16)
    ) AS X(v)

) AS ph

WHERE
    rcp.SamplingID = @SamplingID;