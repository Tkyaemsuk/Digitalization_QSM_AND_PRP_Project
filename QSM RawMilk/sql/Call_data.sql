SELECT
    samplingID,
    Date
FROM [sampling RawMilk]
WHERE Date >= '{{ ApproveDate1.Value }}'
  AND Date < DATEADD(DAY, 1, '{{ ApproveDate2.Value }}')
ORDER BY Date ASC;