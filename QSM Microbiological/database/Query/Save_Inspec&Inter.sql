/*
Application: QSM Microbiological
Query name: Save_Inspec&Inter
File: Save_Inspec&Inter.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_b4b57abd86554b38aca5a52852edb303
Budibase function: update
Bindings: MicroID, Type, Employee, Date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Update_Micro_Inspector_Or_Interpretor_Optional_Date.sql */

SET NOCOUNT ON;
SET XACT_ABORT ON;


/* ============================================================
   1. รับค่าจาก Budibase
   ============================================================ */

DECLARE @MicroID NVARCHAR(100) =
    NULLIF(LTRIM(RTRIM('{{MicroID}}')), '');

DECLARE @Type NVARCHAR(50) =
    UPPER(
        NULLIF(
            LTRIM(RTRIM('{{Type}}')),
            ''
        )
    );

DECLARE @Employee NVARCHAR(100) =
    NULLIF(LTRIM(RTRIM('{{Employee}}')), '');

DECLARE @InputDate DATETIME =
    TRY_CONVERT(
        DATETIME,
        NULLIF(
            LTRIM(RTRIM('{{Date}}')),
            ''
        )
    );


/* ============================================================
   2. ถ้าค่าไม่ครบ
      - ไม่ Update
      - ไม่ Error
      - Return NULL
   ============================================================ */

IF @MicroID IS NULL
   OR @Type IS NULL
   OR @Employee IS NULL
   OR @InputDate IS NULL
BEGIN

    SELECT
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(NULL AS NVARCHAR(50))  AS [Type],
        CAST(NULL AS NVARCHAR(100)) AS Employee,
        CAST(NULL AS DATETIME)      AS [Date],
        CAST(NULL AS INT)           AS UpdatedRows;

    RETURN;
END;


/* ============================================================
   3. ถ้า Type ไม่ถูกต้อง
      ไม่ Update และ Return NULL
   ============================================================ */

IF @Type NOT IN ('INSPECTOR', 'INTERPRETOR')
BEGIN

    SELECT
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(NULL AS NVARCHAR(50))  AS [Type],
        CAST(NULL AS NVARCHAR(100)) AS Employee,
        CAST(NULL AS DATETIME)      AS [Date],
        CAST(NULL AS INT)           AS UpdatedRows;

    RETURN;
END;


/* ============================================================
   4. ถ้าไม่พบ MicroID
      ไม่ Update และ Return NULL
   ============================================================ */

IF NOT EXISTS
(
    SELECT 1
    FROM Micro
    WHERE MicroID = @MicroID
)
BEGIN

    SELECT
        CAST(NULL AS NVARCHAR(100)) AS MicroID,
        CAST(NULL AS NVARCHAR(50))  AS [Type],
        CAST(NULL AS NVARCHAR(100)) AS Employee,
        CAST(NULL AS DATETIME)      AS [Date],
        CAST(NULL AS INT)           AS UpdatedRows;

    RETURN;
END;


/* ============================================================
   5. ตัวแปรจำนวนแถวที่ Update
   ============================================================ */

DECLARE @UpdatedRows INT = 0;


/* ============================================================
   6. Update Inspector

   Type = Inspector
   -> Inspector
   -> Inspector_date
   ============================================================ */

IF @Type = 'INSPECTOR'
BEGIN

    UPDATE Micro
    SET
        Inspector = @Employee,
        Inspector_date = @InputDate
    WHERE
        MicroID = @MicroID;

    SET @UpdatedRows = @@ROWCOUNT;

END;


/* ============================================================
   7. Update Interpretor

   Type = Interpretor
   -> Interpretor
   -> Interpretor_date
   ============================================================ */

IF @Type = 'INTERPRETOR'
BEGIN

    UPDATE Micro
    SET
        Interpretor = @Employee,
        Interpretor_date = @InputDate
    WHERE
        MicroID = @MicroID;

    SET @UpdatedRows = @@ROWCOUNT;

END;


/* ============================================================
   8. Return ผลลัพธ์
   ============================================================ */

SELECT
    MicroID,
    Inspector,
    Inspector_date,
    Interpretor,
    Interpretor_date,
    @UpdatedRows AS UpdatedRows
FROM Micro
WHERE
    MicroID = @MicroID;
