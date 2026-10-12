/*
Application: QSM Microbiological
Query name: Sup Approve
File: Sup Approve.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_8ada988ae1514d2a92d2b1c728200c18
Budibase function: update
Bindings: Micro, Sup, Sup_date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   SQL Name:
   Update_Micro_Sup_SupDate_And_RawMilk_Result.sql

   INPUT
   {{ Micro }}
   {{ Sup }}
   {{ Sup_date }}

   Logic
   ---------------------------------------------------------
   Micro
     ├─ Sup
     └─ Sup_date

   ถ้า Department = QSM

   Micro
     ↓
   [Micro Sampling]
     ↓ SamplingID
   Sampling_Result.SampID
     ↓ Batch_Lot_no
   [Sampling RawMilk].SamplingID

   Batch 1
     TPC_Result      → SPC_Tank_1
     Coliform_Result → Coliform_1
     Ecoli_result    → E_Tank_1

   Batch 2
     TPC_Result      → SPC_Tank_2
     Coliform_Result → Coliform_2
     Ecoli_result    → E_Tank_2

   Batch 3
     TPC_Result      → SPC_Tank_3
     Coliform_Result → Coliform_3
     Ecoli_result    → E_Tank_3
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRY

    BEGIN TRANSACTION;


    /* =========================================================
       1. Update Sup / Sup_date ใน Micro
       ========================================================= */

  /* ========================================================= 
   1. Update Sup / Sup_date ใน Micro 
   ========================================================= */ 

/* ========================================================= 
   1. Update Sup / Sup_date / Status ใน Micro 
   ========================================================= */ 

UPDATE M 
SET 
    M.Sup = 
        NULLIF('{{Sup}}', ''), 

    M.Sup_date = 
        TRY_CONVERT( 
            DATETIME, 
            NULLIF('{{Sup_date}}', '') 
        ),

    /* ถ้ามี Sup -> Success */
    M.Status =
        CASE
            WHEN NULLIF(LTRIM(RTRIM('{{Sup}}')), '') IS NOT NULL
                THEN 'Success'
            ELSE M.Status
        END

FROM Micro AS M 

WHERE M.MicroID = '{{ Micro }}';


    /* =========================================================
       2. อ่าน Department
       ========================================================= */

    DECLARE @Department NVARCHAR(255);

    SELECT
        @Department = M.Department

    FROM Micro AS M

    WHERE M.MicroID = '{{ Micro }}';


    /* =========================================================
       3. ถ้า Department = QSM
          ให้เอาผลจาก Sampling_Result
          ไปลง Sampling RawMilk
       ========================================================= */

    IF UPPER(LTRIM(RTRIM(ISNULL(@Department, '')))) = 'QSM'
    BEGIN

        /* =====================================================
           4. เตรียมผล Sampling_Result

           Micro
             ↓
           Micro Sampling
             ↓ SamplingID
           Sampling_Result.SampID

           Batch_Lot_no อ่านจาก Sampling_Result
           ===================================================== */

        ;WITH RawMilkResult AS
        (
            SELECT
                MS.MicroID,
                MS.SamplingID,

                SR.id AS SamplingResultID,

                TRY_CONVERT(
                    INT,
                    NULLIF(
                        LTRIM(RTRIM(SR.Batch_Lot_no)),
                        ''
                    )
                ) AS BatchNo,

                SR.TPC_Result,
                SR.Coliform_Result,
                SR.Ecoli_result

            FROM [Micro Sampling] AS MS

            INNER JOIN Sampling_Result AS SR
                ON SR.SampID = MS.SamplingID

            WHERE MS.MicroID = '{{ Micro }}'

              AND MS.SamplingID IS NOT NULL

              AND TRY_CONVERT(
                    INT,
                    NULLIF(
                        LTRIM(RTRIM(SR.Batch_Lot_no)),
                        ''
                    )
                  ) BETWEEN 1 AND 3
        )


        /* =====================================================
           5. Update Sampling RawMilk

           ใช้ SamplingID เป็นตัวเชื่อม

           Sampling_Result.SampID
                =
           Sampling_RawMilk.SamplingID
           ===================================================== */

        UPDATE RM

        SET

            /* =================================================
               Batch 1
               ================================================= */

            RM.SPC_Tank_1 =
                CASE
                    WHEN R.BatchNo = 1
                    THEN R.TPC_Result
                    ELSE RM.SPC_Tank_1
                END,

            RM.Coliform_1 =
                CASE
                    WHEN R.BatchNo = 1
                    THEN R.Coliform_Result
                    ELSE RM.Coliform_1
                END,

            RM.E_Tank_1 =
                CASE
                    WHEN R.BatchNo = 1
                    THEN R.Ecoli_result
                    ELSE RM.E_Tank_1
                END,


            /* =================================================
               Batch 2
               ================================================= */

            RM.SPC_Tank_2 =
                CASE
                    WHEN R.BatchNo = 2
                    THEN R.TPC_Result
                    ELSE RM.SPC_Tank_2
                END,

            RM.Coliform_2 =
                CASE
                    WHEN R.BatchNo = 2
                    THEN R.Coliform_Result
                    ELSE RM.Coliform_2
                END,

            RM.E_Tank_2 =
                CASE
                    WHEN R.BatchNo = 2
                    THEN R.Ecoli_result
                    ELSE RM.E_Tank_2
                END,


            /* =================================================
               Batch 3
               ================================================= */

            RM.SPC_Tank_3 =
                CASE
                    WHEN R.BatchNo = 3
                    THEN R.TPC_Result
                    ELSE RM.SPC_Tank_3
                END,

            RM.Coliform_3 =
                CASE
                    WHEN R.BatchNo = 3
                    THEN R.Coliform_Result
                    ELSE RM.Coliform_3
                END,

            RM.E_Tank_3 =
                CASE
                    WHEN R.BatchNo = 3
                    THEN R.Ecoli_result
                    ELSE RM.E_Tank_3
                END

        FROM [Sampling RawMilk] AS RM

        INNER JOIN RawMilkResult AS R

            ON RM.SamplingID = R.SamplingID;


    END;


    /* =========================================================
       6. Commit
       ========================================================= */

    COMMIT TRANSACTION;


    /* =========================================================
       7. Return ข้อมูล Micro
       ========================================================= */

    SELECT
        1 AS Success,
        M.MicroID,
        M.Department,
        M.Sup,
        M.Sup_date

    FROM Micro AS M

    WHERE M.MicroID = '{{ Micro }}';


END TRY

BEGIN CATCH

    /* =========================================================
       Rollback เมื่อเกิด Error
       ========================================================= */

    IF XACT_STATE() <> 0
        ROLLBACK TRANSACTION;


    SELECT
        0 AS Success,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_LINE() AS ErrorLine;

END CATCH;
