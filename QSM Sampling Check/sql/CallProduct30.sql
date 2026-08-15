WITH cte AS (
    SELECT
        *,
        ROW_NUMBER() OVER (ORDER BY id) AS num_rows
    FROM temperature_30
    WHERE sampID = {{sampID}}
)
SELECT TOP 1
    *,
    (
        SELECT COUNT(*)
        FROM temperature_30
        WHERE sampID = {{sampID}}
        AND colour IS NOT NULL OR colour = ''
    ) AS checked_count
FROM cte
WHERE Colour IS NULL
ORDER BY id