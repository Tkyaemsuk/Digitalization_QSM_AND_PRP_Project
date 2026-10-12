/*
Application: QSM Microbiological
Query name: Delect_Micro&Sampling
File: Delect_Micro&Sampling.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a7092314881d4138a9b92bc244e0cbc2
Budibase function: delete
Bindings: MicroID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @MicroID NVARCHAR(255) =
    NULLIF(
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    {{MicroID}}
                )
            )
        ),
        ''
    );


/* =========================================================
   ถ้า MicroID ว่าง ไม่ทำอะไร
   ========================================================= */

IF @MicroID IS NULL
BEGIN

    SELECT
        CAST(NULL AS NVARCHAR(255)) AS MicroID,
        CAST(0 AS INT) AS Deleted_Sampling_Result,
        CAST(0 AS INT) AS Deleted_Micro_Sampling,
        CAST(0 AS INT) AS Deleted_Micro,
        CAST('NO_MICROID' AS NVARCHAR(50)) AS Result;

    RETURN;
END;


BEGIN TRY

    BEGIN TRANSACTION;


    /* =========================================================
       1. เก็บ SamplingID ที่ผูกกับ MicroID ก่อนลบ
       ========================================================= */

    DECLARE @SamplingList TABLE
    (
        SamplingID NVARCHAR(255) PRIMARY KEY
    );


    INSERT INTO @SamplingList
    (
        SamplingID
    )
    SELECT DISTINCT

        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    MS.SamplingID
                )
            )
        )

    FROM [Micro Sampling] AS MS

    WHERE

        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    MS.MicroID
                )
            )
        ) = @MicroID

        AND NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            MS.SamplingID
                        )
                    )
                ),
                ''
            ) IS NOT NULL;


    /* =========================================================
       2. ลบ Sampling_Result
       SampID = SamplingID ที่ผูกกับ MicroID
       ========================================================= */

    DELETE SR

    FROM Sampling_Result AS SR

    INNER JOIN @SamplingList AS S
        ON
        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    SR.SampID
                )
            )
        )
        =
        S.SamplingID;


    DECLARE @DeletedSamplingResult INT = @@ROWCOUNT;


    /* =========================================================
       3. ลบ Micro Sampling ของ MicroID นี้
       ========================================================= */

    DELETE MS

    FROM [Micro Sampling] AS MS

    WHERE

        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    MS.MicroID
                )
            )
        ) = @MicroID;


    DECLARE @DeletedMicroSampling INT = @@ROWCOUNT;


    /* =========================================================
       4. ลบ Micro
       ========================================================= */

    DELETE M

    FROM Micro AS M

    WHERE

        LTRIM(
            RTRIM(
                CONVERT(
                    NVARCHAR(255),
                    M.MicroID
                )
            )
        ) = @MicroID;


    DECLARE @DeletedMicro INT = @@ROWCOUNT;


    /* =========================================================
       5. Commit
       ========================================================= */

    COMMIT TRANSACTION;


    /* =========================================================
       6. Return
       ========================================================= */

    SELECT
        @MicroID AS MicroID,
        @DeletedSamplingResult AS Deleted_Sampling_Result,
        @DeletedMicroSampling AS Deleted_Micro_Sampling,
        @DeletedMicro AS Deleted_Micro,
        CAST('DELETED' AS NVARCHAR(50)) AS Result;


END TRY


BEGIN CATCH

    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END;

    THROW;

END CATCH;
