DECLARE @Qty INT = {{ Qty }};
IF @Qty > 6 SET @Qty = 6;

DECLARE @StartNo INT =
(
    SELECT ISNULL(MAX(TRY_CAST(NO AS INT)), 0)
    FROM temperature_30high
    WHERE SampID = '{{ SampID }}'
);

WITH Numbers AS
(
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM Numbers
    WHERE n < @Qty
)
INSERT INTO temperature_30high
(
    NO,
    Code,
    Status,
    Product,
    Flavour,
    SampID
)
SELECT
    @StartNo + n,
    CONVERT(DATETIME, '{{ Date }} {{ Time }}'),
    '{{ Status }}',
    '{{ Product }}',
    '{{ Flavour }}',
    '{{ SampID }}'
FROM Numbers
OPTION (MAXRECURSION 0);