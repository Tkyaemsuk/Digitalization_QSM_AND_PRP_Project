SELECT 

    (
        SELECT COALESCE(MAX(TRY_CAST(no AS INT)), 0) + 1
        FROM temperature_30
        WHERE sampID = '{{ sampID }}'
    ) AS new_no,

    (
        SELECT COALESCE(MAX(TRY_CAST(no AS INT)), 0) + 1
        FROM temperature_55
        WHERE sampID = '{{ sampID }}'
    ) AS new55_no