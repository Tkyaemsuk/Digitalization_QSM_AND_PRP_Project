DECLARE @FillingDate DATE = '{{FillingDate}}';
DECLARE @Dep varchar(2) = '{{dep}}';
DECLARE @Machine varchar(2) = '{{machine}}';

SELECT
    CONCAT(
        'QSM-',
        CONVERT(varchar(8), GETDATE(), 112),
        '-',
        @Dep,
        @Machine,
        '-',
        RIGHT(
            '00' + CAST(
                ISNULL(MAX(
                    TRY_CAST(RIGHT(SamplingID, 2) AS INT)
                ), 0) + 1
            AS varchar),
        2)
    ) AS Sampling
FROM [Sampling RawMilk]
WHERE CAST(Date AS DATE) = @FillingDate;