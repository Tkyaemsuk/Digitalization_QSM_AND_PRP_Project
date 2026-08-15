SELECT
    s.*,
    m.machine AS mac_name,
    m.DEP,
		CONVERT(VARCHAR(10), s.FillingDate, 103) AS Filling_Format_Date,
    Last30.BrikList_30,
    Last55.BrikList_55

FROM Sampling s

LEFT JOIN machine m
    ON s.machine = m.no

OUTER APPLY (
    SELECT TOP 1
        no AS BrikList_30
    FROM temperature_30
    WHERE sampID = s.SamplingID
    ORDER BY id DESC
) Last30

OUTER APPLY (
    SELECT TOP 1
        no AS BrikList_55
    FROM temperature_55
    WHERE sampID = s.SamplingID
    ORDER BY id DESC
) Last55

WHERE
    ('{{FillingDate}}' = '' AND '{{sampid}}' = '' AND '{{mac}}' = '')

    OR
    (
        (
            '{{FillingDate}}' <> ''
            AND CAST(s.FillingDate AS DATE) = CAST('{{FillingDate}}' AS DATE)
        )

        OR
        (
            '{{sampid}}' <> ''
            AND s.SamplingID = '{{sampid}}'
        )

        OR
        (
            '{{mac}}' <> ''
            AND m.no = '{{mac}}'
        )
    );