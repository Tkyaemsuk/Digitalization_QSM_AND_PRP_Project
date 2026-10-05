DECLARE @StartDate DATE =
    TRY_CAST(NULLIF('{{StartDate}}', '') AS DATE);

DECLARE @EndDate DATE =
    TRY_CAST(NULLIF('{{EndDate}}', '') AS DATE);


SELECT
    *
FROM [Sampling RawMilk]
WHERE
    (
        @StartDate IS NULL
        OR CAST([DATE] AS DATE) >= @StartDate
    )
    AND
    (
        @EndDate IS NULL
        OR CAST([DATE] AS DATE) <= @EndDate
    )
ORDER BY
    CAST([Date] AS DATE) ASC,
    CAST([Plan] AS TIME) ASC;