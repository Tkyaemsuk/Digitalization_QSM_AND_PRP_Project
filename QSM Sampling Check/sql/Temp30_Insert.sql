DECLARE @Qty INT = {{ Qty }};
IF @Qty > 6 SET @Qty = 6;

DECLARE @CurrentCount INT =
(
    SELECT COUNT(*)
    FROM temperature_30
    WHERE sampID = '{{ sampID }}'
);
-- จำกัดให้มีได้สูงสุด 6 รายการ
SET @Qty = CASE
             WHEN @CurrentCount >= 100 THEN 0
             WHEN @CurrentCount + @Qty > 100 THEN 100 - @CurrentCount
             ELSE @Qty
           END;
DECLARE @StartNo INT =
(
    SELECT COALESCE(MAX(TRY_CAST(no AS INT)), 0)
    FROM temperature_30
    WHERE sampID = '{{ sampID }}'
);
IF @Qty > 0
BEGIN
    WITH Numbers AS
    (
        SELECT 1 AS n
        UNION ALL
        SELECT n + 1
        FROM Numbers
        WHERE n < @Qty
    )
    INSERT INTO temperature_30
    (
        no,
        sampID,
        code,
        status
    )
    SELECT
        @StartNo + n,
        '{{ sampID }}',
        '{{ SampleDate }}',
        '{{ status }}'
    FROM Numbers
    OPTION (MAXRECURSION 100);
END;