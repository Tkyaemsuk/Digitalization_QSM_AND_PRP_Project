/*
Application: QSM Microbiological
Query name: Update_RawMilk_Micro_Result
File: Update_RawMilk_Micro_Result.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_173777e7a32d47a9b4855dbce8cc54ab
Budibase function: update
Bindings: SamplingID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   SQL Name : Update_RawMilk_Micro_Result_By_Batch.sql
   Database : Microsoft SQL Server (MSSQL)

   วัตถุประสงค์:
   นำผล Microbiological Result จาก Sampling_Result
   ไปบันทึกลงตาราง [Sampling RawMilk]

   Mapping:
   Batch 1
      TPC_Result       -> SPC_Tank_1
      Coliform_Result  -> Coliform_1
      Ecoli_result     -> E_Tank_1

   Batch 2
      TPC_Result       -> SPC_Tank_2
      Coliform_Result  -> Coliform_2
      Ecoli_result     -> E_Tank_2

   Batch 3
      TPC_Result       -> SPC_Tank_3
      Coliform_Result  -> Coliform_3
      Ecoli_result     -> E_Tank_3

   การเชื่อมข้อมูล:
      Sampling_Result.SampID
          =
      [Sampling RawMilk].SamplingID

   หมายเหตุ:
   - ใช้ Batch_Lot_no เป็นเลข Batch
   - ไม่แก้ค่าของ Batch อื่นที่ไม่มีข้อมูล
   - รองรับ Batch 1-3
   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;


/* =========================================================
   1. รวมผลของแต่ละ Batch ให้อยู่ใน 1 แถวต่อ SamplingID
   ========================================================= */

;WITH ResultPerBatch AS
(
    SELECT
        sr.SampID,

        /* ===============================================
           Batch 1
           =============================================== */

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 1
                THEN sr.TPC_Result
            END
        ) AS SPC_Tank_1,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 1
                THEN sr.Coliform_Result
            END
        ) AS Coliform_1,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 1
                THEN sr.Ecoli_result
            END
        ) AS E_Tank_1,


        /* ===============================================
           Batch 2
           =============================================== */

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 2
                THEN sr.TPC_Result
            END
        ) AS SPC_Tank_2,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 2
                THEN sr.Coliform_Result
            END
        ) AS Coliform_2,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 2
                THEN sr.Ecoli_result
            END
        ) AS E_Tank_2,


        /* ===============================================
           Batch 3
           =============================================== */

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 3
                THEN sr.TPC_Result
            END
        ) AS SPC_Tank_3,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 3
                THEN sr.Coliform_Result
            END
        ) AS Coliform_3,

        MAX(
            CASE
                WHEN sr.Batch_Lot_no = 3
                THEN sr.Ecoli_result
            END
        ) AS E_Tank_3

    FROM Sampling_Result AS sr

    /* จำกัดเฉพาะ SamplingID ที่กำลังทำงาน */
    WHERE sr.SampID = {{SamplingID}}

      /* ใช้เฉพาะ Batch 1-3 */
      AND sr.Batch_Lot_no BETWEEN 1 AND 3

    GROUP BY
        sr.SampID
)


/* =========================================================
   2. Update ลงตาราง Sampling RawMilk

   ISNULL(ค่าใหม่, ค่าเดิม)
   = ถ้า Batch ไหนไม่มี Result
     จะไม่ล้างข้อมูลเดิมของ Batch นั้น
   ========================================================= */

UPDATE rm

SET

    /* =========================
       Batch 1
       ========================= */

    rm.SPC_Tank_1 =
        ISNULL(
            r.SPC_Tank_1,
            rm.SPC_Tank_1
        ),

    rm.Coliform_1 =
        ISNULL(
            r.Coliform_1,
            rm.Coliform_1
        ),

    rm.E_Tank_1 =
        ISNULL(
            r.E_Tank_1,
            rm.E_Tank_1
        ),


    /* =========================
       Batch 2
       ========================= */

    rm.SPC_Tank_2 =
        ISNULL(
            r.SPC_Tank_2,
            rm.SPC_Tank_2
        ),

    rm.Coliform_2 =
        ISNULL(
            r.Coliform_2,
            rm.Coliform_2
        ),

    rm.E_Tank_2 =
        ISNULL(
            r.E_Tank_2,
            rm.E_Tank_2
        ),


    /* =========================
       Batch 3
       ========================= */

    rm.SPC_Tank_3 =
        ISNULL(
            r.SPC_Tank_3,
            rm.SPC_Tank_3
        ),

    rm.Coliform_3 =
        ISNULL(
            r.Coliform_3,
            rm.Coliform_3
        ),

    rm.E_Tank_3 =
        ISNULL(
            r.E_Tank_3,
            rm.E_Tank_3
        )

FROM [Sampling RawMilk] AS rm

INNER JOIN ResultPerBatch AS r
    ON r.SampID = rm.SamplingID

WHERE rm.SamplingID = {{SamplingID}};


/* =========================================================
   3. Return ผลหลัง Update
   สำหรับตรวจสอบใน Budibase
   ========================================================= */

SELECT
    rm.SamplingID,

    /* Batch 1 */
    rm.SPC_Tank_1,
    rm.Coliform_1,
    rm.E_Tank_1,

    /* Batch 2 */
    rm.SPC_Tank_2,
    rm.Coliform_2,
    rm.E_Tank_2,

    /* Batch 3 */
    rm.SPC_Tank_3,
    rm.Coliform_3,
    rm.E_Tank_3

FROM [Sampling RawMilk] AS rm

WHERE rm.SamplingID = {{SamplingID}};
