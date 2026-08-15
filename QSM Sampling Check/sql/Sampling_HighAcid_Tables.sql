SELECT
    s.*,
		CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.MFG_code), 103) AS MFG_Code_Format,
    CONVERT(VARCHAR(10), DATEADD(HOUR, 7, s.EXP_code), 103) AS EXP_Code_Format,
    m.machine AS mac_name,
    m.DEP,
    Last30.BrikList_30
		
FROM [Sampling high] s

LEFT JOIN machine m
    ON s.machine = m.no

OUTER APPLY (
    SELECT TOP 1
        no AS BrikList_30
    FROM temperature_30high
    WHERE sampID = s.SamplingIDH
    ORDER BY id DESC
) Last30

WHERE
    ('{{FillingDate}}' = '' AND '{{sampid}}' = '' AND '{{mac}}' = '')

    OR
    (
        (
            '{{FillingDate}}' <> ''
            AND CAST(s.MFG_code AS DATE) = CAST('{{FillingDate}}' AS DATE)
        )

        OR
        (
            '{{sampid}}' <> ''
            AND s.SamplingIDH = '{{sampid}}'
        )

        OR
        (
            '{{mac}}' <> ''
            AND m.no = '{{mac}}'
        )
    );