/*
Application: QSM Microbiological Analysis System
Query name: CallProduct_Temp55
File: CallProduct_Temp55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_93058041c5454b2485571df6d2ba0213
Source: Budibase latest edited app export, 2026-10-12
Bindings: s1, s2, s3, s4, s5, s6, page
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH input_raw AS (

    SELECT '{{ s1 }}' AS sampID, 1 AS sampling_order
    UNION ALL
    SELECT '{{ s2 }}', 2
    UNION ALL
    SELECT '{{ s3 }}', 3
    UNION ALL
    SELECT '{{ s4 }}', 4
    UNION ALL
    SELECT '{{ s5 }}', 5
    UNION ALL
    SELECT '{{ s6 }}', 6
),

/* =========================================================
   ตัด SamplingID ซ้ำ
   - ใช้ช่องแรกที่เจอ
   - ช่องว่างไม่นำมาใช้
   ========================================================= */
input_sampling AS (

    SELECT
        R.sampID,
        R.sampling_order

    FROM input_raw AS R

    WHERE
        NULLIF(
            LTRIM(
                RTRIM(
                    CONVERT(
                        NVARCHAR(255),
                        R.sampID
                    )
                )
            ),
            ''
        ) IS NOT NULL

        AND NOT EXISTS
        (
            SELECT 1

            FROM input_raw AS P

            WHERE
                P.sampling_order < R.sampling_order

                AND LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(255),
                                P.sampID
                            )
                        )
                    )
                    =
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(255),
                                R.sampID
                            )
                        )
                    )
        )
),

sample_count AS (

    SELECT
        t.sampID,
        i.sampling_order,
        COUNT(*) AS sample_total

    FROM temperature_55 t

    INNER JOIN input_sampling i
        ON LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       t.sampID
                   )
               )
           )
           =
           LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       i.sampID
                   )
               )
           )

    GROUP BY
        t.sampID,
        i.sampling_order
),

running AS (

    SELECT
        *,
        SUM(sample_total) OVER (
            ORDER BY sampling_order
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS running_total

    FROM sample_count
),

allowed_sampling AS (

    SELECT
        sampID,
        sampling_order

    FROM running

    WHERE running_total <= 192
),

cte AS (

    SELECT
        t.*,
        s.Size,
        s.Machine,
        a.sampling_order,

        ROW_NUMBER() OVER (
            PARTITION BY t.sampID
            ORDER BY t.id
        ) AS num_rows,

        ROW_NUMBER() OVER (
            ORDER BY a.sampling_order, t.id
        ) AS global_row

    FROM temperature_55 t

    LEFT JOIN Sampling s
        ON LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       t.sampID
                   )
               )
           )
           =
           LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       s.SamplingID
                   )
               )
           )

    INNER JOIN allowed_sampling a
        ON LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       t.sampID
                   )
               )
           )
           =
           LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       a.sampID
                   )
               )
           )
),

final AS (

    SELECT
        *,

        CASE
            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) = 90
            THEN 96

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) = 110
            THEN 72

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) IN (165,180,200,225)
            THEN 48

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) IN (230,250)
            THEN 42

            ELSE 96
        END AS limit_per_page,


        CASE
            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) IN (90,110,165,180,200,225)
            THEN 8

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) IN (230,250)
            THEN 7

            ELSE 8
        END AS box_per_row,


        CASE
            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) = 90
            THEN 4

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) = 110
            THEN 3

            WHEN TRY_CAST(
                REPLACE(
                    REPLACE(
                        LOWER(Size),
                        ' ml.',
                        ''
                    ),
                    'ml',
                    ''
                )
                AS INT
            ) IN (165,180,200,225,230,250)
            THEN 2

            ELSE 4
        END AS row_per_floor

    FROM cte
),

pages AS (

    SELECT
        *,

        CEILING(
            global_row * 1.0 / limit_per_page
        ) AS page_no,

        (
            ((global_row - 1) % limit_per_page) + 1
        ) AS page_row_no

    FROM final
),

floor_data AS (

    SELECT
        *,

        CEILING(
            page_row_no * 1.0 /
            (limit_per_page / 3)
        ) AS floor_no,

        (
            ((page_row_no - 1) % (limit_per_page / 3)) + 1
        ) AS floor_position

    FROM pages
)

SELECT
    *,

    MAX(page_no) OVER() AS total_pages,

    (
        ((page_row_no - 1) % box_per_row) + 1
    ) AS col_no,

    FLOOR(
        (
            ((page_row_no - 1)
            % (box_per_row * row_per_floor))
        ) / box_per_row
    ) + 1 AS row_no,

    CEILING(
        floor_position * 1.0 /
        (box_per_row * 2)
    ) AS tray_no,

    CASE
        WHEN (
            ((page_row_no - 1) % (limit_per_page / 3))
        ) = 0
        THEN 1
        ELSE 0
    END AS is_new_floor,

    CASE
        WHEN (
            ((floor_position - 1) % (box_per_row * 2))
        ) = 0
        THEN 1
        ELSE 0
    END AS is_new_tray,

    CASE
        WHEN ((page_row_no - 1) % box_per_row) = 0
        THEN 1
        ELSE 0
    END AS is_new_row,

    CASE
        WHEN ((page_row_no - 1) % limit_per_page) = 0
        THEN 1
        ELSE 0
    END AS is_new_page

FROM floor_data

WHERE
    (
        {{ page }} IS NULL
        OR page_no = {{ page }}
    )

ORDER BY
    sampling_order,
    page_no,
    floor_no,
    tray_no,
    row_no,
    col_no;