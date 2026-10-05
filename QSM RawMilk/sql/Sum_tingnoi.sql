DECLARE @SampID NVARCHAR(MAX) = LTRIM(RTRIM('{{SampID}}'));

IF @SampID IS NULL
   OR @SampID = ''
   OR LOWER(@SampID) = 'null'
   OR LOWER(@SampID) = 'undefined'
BEGIN
    SELECT
        NULL AS Grade,
        NULL AS SPC,
        NULL AS SCC,
        NULL AS FP,
        NULL AS Fat,
        NULL AS SNF;

    RETURN;
END;


WITH GradeData AS (
    SELECT
        TRY_CAST(S.Grade_Spc AS INT) AS SPC,
        TRY_CAST(S.Grade_Scc AS INT) AS SCC,
        TRY_CAST(S.Grade_Fp  AS INT) AS FP,
        TRY_CAST(S.Grade_Fat AS INT) AS Fat,
        TRY_CAST(S.Grade_Snf AS INT) AS SNF
    FROM [Sampling RawMilk] AS S

    WHERE S.SamplingID IN (
        SELECT LTRIM(RTRIM(value))
        FROM STRING_SPLIT(@SampID, ',')
    )
),

Grades AS (
    SELECT 1 AS GradeNo
    UNION ALL SELECT 2
    UNION ALL SELECT 3
    UNION ALL SELECT 4
    UNION ALL SELECT 5
    UNION ALL SELECT 6
    UNION ALL SELECT 7
),

Result AS (
    SELECT
        G.GradeNo,

        SUM(CASE WHEN D.SPC = G.GradeNo THEN 1 ELSE 0 END) AS SPC,
        SUM(CASE WHEN D.SCC = G.GradeNo THEN 1 ELSE 0 END) AS SCC,
        SUM(CASE WHEN D.FP  = G.GradeNo THEN 1 ELSE 0 END) AS FP,
        SUM(CASE WHEN D.Fat = G.GradeNo THEN 1 ELSE 0 END) AS Fat,
        SUM(CASE WHEN D.SNF = G.GradeNo THEN 1 ELSE 0 END) AS SNF

    FROM Grades AS G

    LEFT JOIN GradeData AS D
        ON 1 = 1

    GROUP BY
        G.GradeNo
)

-- Grade 1 - 7
SELECT
    'Grade' + CAST(GradeNo AS VARCHAR(1)) AS Grade,
    SPC,
    SCC,
    FP,
    Fat,
    SNF,
    GradeNo AS SortOrder

FROM Result

UNION ALL

-- SUM แถวล่างสุด
SELECT
    'SUM' AS Grade,

    SUM(SPC) AS SPC,
    SUM(SCC) AS SCC,
    SUM(FP) AS FP,
    SUM(Fat) AS Fat,
    SUM(SNF) AS SNF,

    8 AS SortOrder

FROM Result

ORDER BY
    SortOrder;