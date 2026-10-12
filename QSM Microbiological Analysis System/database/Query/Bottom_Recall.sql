/*
Application: QSM Microbiological Analysis System
Query name: Bottom_Recall
File: Bottom_Recall.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_07df295be935485f9d03ced237ea35c6
Source: Budibase latest edited app export, 2026-10-12
Bindings: samplings, page_no
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH cte AS (
    SELECT
        t.*,
        CONVERT(VARCHAR(5), DATEADD(HOUR, 7, t.code), 108) AS Brik_Time,
        m.Machine,

        ROW_NUMBER() OVER (
            ORDER BY t.id
        ) AS global_row

    FROM [temperature_30high] t
    LEFT JOIN [Sampling high] s
        ON t.sampID = s.SamplingIDH
    LEFT JOIN machine m
        ON m.no = s.machine

    WHERE t.sampID IN (
        SELECT value
        FROM STRING_SPLIT('{{ samplings }}', ',')
    )
),
page_cte AS (
    SELECT
        *,
        CEILING(global_row / 96.0) AS page_no,

        ((global_row - 1) % 8) + 1 AS col_no,
        FLOOR(((global_row - 1) % 32) / 8) + 1 AS row_no,

        CEILING((((global_row - 1) % 32) + 1) / 16.0) AS tray_no,
        CEILING((((global_row - 1) % 96) + 1) / 32.0) AS floor_no,

        CASE
            WHEN ((global_row - 1) % 32) = 0 THEN 1
            ELSE 0
        END AS is_new_floor,

        CASE
            WHEN ((global_row - 1) % 16) = 0 THEN 1
            ELSE 0
        END AS is_new_tray,

        CASE
            WHEN ((global_row - 1) % 8) = 0 THEN 1
            ELSE 0
        END AS is_new_row

    FROM cte
)

SELECT *
FROM page_cte
WHERE
(
    NULLIF('{{ page_no }}','') IS NULL
    OR page_no = CAST('{{ page_no }}' AS INT)
)
ORDER BY global_row;