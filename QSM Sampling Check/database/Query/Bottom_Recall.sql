WITH h_table AS
(
    SELECT
				ROW_NUMBER() OVER (ORDER BY t.id) AS Brik,
				t.status as status,
				t.flavour as flavour,
	      t.product as product,
        CONVERT(VARCHAR(5), DATEADD(HOUR, 7, Code), 108) AS Brik_Time
    FROM temperature_30high t

    LEFT JOIN [Sampling high] s
        ON t.SampID = s.SamplingIDH

    LEFT JOIN machine m
        ON m.no = s.machine

    WHERE t.SampID = '{{ SamplingID }}'
)

SELECT *
FROM h_table;