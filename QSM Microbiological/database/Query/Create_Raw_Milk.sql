/*
Application: QSM Microbiological
Query name: Create_Raw_Milk
File: Create_Raw_Milk.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_a37a32b344554d799047abea0ab1c5e2
Budibase function: create
Bindings: MicroID, Batch, remark, SamplingID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* =========================================================
   SQL Name: Insert_Micro_Sampling_From_RawMilk_Date_Plan.sql

   Logic:
   - ถ้า {{MicroID}} ว่าง
       -> สร้าง Micro Sampling แบบปกติ
       -> MicroID = NULL
       -> Status = Pending
       -> ไม่สร้าง Sampling_Result

   - ถ้า {{MicroID}} มีค่า
       -> เพิ่ม Sampling เข้า MicroID ที่มีอยู่แล้ว
       -> MicroID = {{MicroID}}
       -> Status = Created
       -> สร้าง Sampling_Result ทันที

   No Logic:
   - ถ้า Micro.No_page มีค่า
       -> ใช้รูปแบบ No_page.ลำดับ
       -> เช่น 13.1, 13.2, 13.3
       -> ถ้ามีถึง 13.6 แล้ว เพิ่มใหม่เป็น 13.7

   - ถ้า Micro.No_page ไม่มีค่า
       -> ใช้เลขปกติ
       -> เช่น 1, 2, 3
       -> ถ้ามีถึง 6 แล้ว เพิ่มใหม่เป็น 7

   ========================================================= */

SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRY

    BEGIN TRANSACTION;


    /* =========================================================
       รับค่า MicroID
       ========================================================= */

    DECLARE @MicroID NVARCHAR(255) =
        NULLIF(
            LTRIM(
                RTRIM(
                    '{{MicroID}}'
                )
            ),
            ''
        );


    /* =========================================================
       กรณีไม่มี MicroID
       -> Logic เดิม
       -> Pending
       -> MicroID = NULL
       -> ไม่สร้าง Sampling_Result
       ========================================================= */

    IF @MicroID IS NULL
    BEGIN

        INSERT INTO [Micro Sampling]
        (
            SamplingID,
            Batch,
            [Date],
            [Time],
            [Sum],
            DataType,
            Status,
            MicroID
        )

        SELECT
            RM.SamplingID,

            '{{Batch}}',

            RM.[Date],

            RM.[Plan],

            NULLIF(
                CONCAT_WS(
                    ' / ',

                    /* =================================================
                       Supplier
                       ================================================= */

                    NULLIF(
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(255),
                                    RM.Supplier
                                )
                            )
                        ),
                        ''
                    ),

                    /* =================================================
                       truck_no + Remark
                       ================================================= */

                    NULLIF(
                        CONCAT(
                            NULLIF(
                                LTRIM(
                                    RTRIM(
                                        CONVERT(
                                            NVARCHAR(255),
                                            RM.truck_no
                                        )
                                    )
                                ),
                                ''
                            ),

                            CASE
                                WHEN NULLIF(
                                    LTRIM(
                                        RTRIM('{{remark}}')
                                    ),
                                    ''
                                ) IS NOT NULL

                                THEN
                                    '|'
                                    + LTRIM(
                                        RTRIM('{{remark}}')
                                    )

                                ELSE
                                    ''
                            END
                        ),
                        ''
                    )
                ),
                ''
            ) AS [Sum],

            'RawMilk' AS DataType,

            'Pending' AS Status,

            NULL AS MicroID

        FROM [Sampling RawMilk] AS RM

        WHERE
            RM.SamplingID = '{{SamplingID}}';


        COMMIT TRANSACTION;

        SELECT
            NULL AS MicroID,
            '{{SamplingID}}' AS SamplingID,
            'Pending' AS Status;

        RETURN;
    END;


    /* =========================================================
       กรณีมี MicroID
       -> ตรวจสอบ MicroID
       ========================================================= */

    IF NOT EXISTS
    (
        SELECT 1
        FROM [Micro]
        WHERE MicroID = @MicroID
    )
    BEGIN
        THROW 50001, 'ไม่พบ MicroID ที่ระบุ', 1;
    END;


    /* =========================================================
       อ่าน No_page จาก Micro

       เก็บเป็นข้อความ
       เพื่อไม่ให้กลายเป็น 13.0000
       ========================================================= */

    DECLARE @NoPage NVARCHAR(100);

    SELECT
        @NoPage =
            NULLIF(
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(100),
                            M.No_page
                        )
                    )
                ),
                ''
            )
    FROM [Micro] AS M WITH (UPDLOCK, HOLDLOCK)
    WHERE
        M.MicroID = @MicroID;


    /* =========================================================
       ตัวแปรสำหรับข้อมูล Sampling ที่เพิ่งสร้าง
       ========================================================= */

    DECLARE @NewSampling TABLE
    (
        ID          INT,
        SamplingID  NVARCHAR(255),
        [Date]      DATETIME,
        [Time]      TIME(0),
        [Sum]       NVARCHAR(500)
    );


    /* =========================================================
       เพิ่ม Micro Sampling

       ถ้ามี MicroID
       -> Status = Created
       ========================================================= */

    INSERT INTO [Micro Sampling]
    (
        SamplingID,
        Batch,
        [Date],
        [Time],
        [Sum],
        DataType,
        Status,
        MicroID
    )

    OUTPUT
        INSERTED.ID,
        INSERTED.SamplingID,
        INSERTED.[Date],
        INSERTED.[Time],
        INSERTED.[Sum]

    INTO @NewSampling
    (
        ID,
        SamplingID,
        [Date],
        [Time],
        [Sum]
    )

    SELECT
        RM.SamplingID,

        '{{Batch}}',

        RM.[Date],

        RM.[Plan],

        NULLIF(
            CONCAT_WS(
                ' / ',

                /* =================================================
                   Supplier
                   ================================================= */

                NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(255),
                                RM.Supplier
                            )
                        )
                    ),
                    ''
                ),

                /* =================================================
                   truck_no + Remark
                   ================================================= */

                NULLIF(
                    CONCAT(
                        NULLIF(
                            LTRIM(
                                RTRIM(
                                    CONVERT(
                                        NVARCHAR(255),
                                        RM.truck_no
                                    )
                                )
                            ),
                            ''
                        ),

                        CASE
                            WHEN NULLIF(
                                LTRIM(
                                    RTRIM('{{remark}}')
                                ),
                                ''
                            ) IS NOT NULL

                            THEN
                                '|'
                                + LTRIM(
                                    RTRIM('{{remark}}')
                                )

                            ELSE
                                ''
                        END
                    ),
                    ''
                )
            ),
            ''
        ) AS [Sum],

        'RawMilk' AS DataType,

        'Created' AS Status,

        @MicroID AS MicroID

    FROM [Sampling RawMilk] AS RM

    WHERE
        RM.SamplingID = '{{SamplingID}}';


    /* =========================================================
       ตรวจสอบว่าสร้าง Sampling สำเร็จ
       ========================================================= */

    IF NOT EXISTS
    (
        SELECT 1
        FROM @NewSampling
    )
    BEGIN
        THROW 50002, 'ไม่สามารถสร้าง Micro Sampling ได้', 1;
    END;


    /* =========================================================
       ตัวแปรสำหรับลำดับ No
       ========================================================= */

    DECLARE @LastNo INT = 0;


    /* =========================================================
       กรณีมี No_page
       
       ตัวอย่าง:
       
       No_page = 13

       ข้อมูลเดิม:
       13.1
       13.2
       13.3
       13.4
       13.5
       13.6

       เพิ่ม Batch 3:
       13.7
       13.8
       13.9
       ========================================================= */

    IF @NoPage IS NOT NULL
    BEGIN

        SELECT
            @LastNo =
                ISNULL(
                    MAX(
                        TRY_CONVERT(
                            INT,
                            CASE
                                WHEN CHARINDEX('.', SR.[No]) > 0
                                THEN
                                    SUBSTRING(
                                        SR.[No],
                                        CHARINDEX('.', SR.[No]) + 1,
                                        100
                                    )
                                ELSE
                                    NULL
                            END
                        )
                    ),
                    0
                )
        FROM [Sampling_Result] AS SR
        INNER JOIN [Micro Sampling] AS MS
            ON MS.SamplingID = SR.SampID
        WHERE
            MS.MicroID = @MicroID
            AND LEFT(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(255),
                                SR.[No]
                            )
                        )
                    ),
                    LEN(@NoPage) + 1
                ) = @NoPage + '.';


        /* =====================================================
           สร้าง No ใหม่
           ===================================================== */

        ;WITH BatchList AS
        (
            SELECT
                1 AS BatchNo

            UNION ALL

            SELECT
                BatchNo + 1
            FROM BatchList
            WHERE
                BatchNo < TRY_CONVERT(
                    INT,
                    '{{Batch}}'
                )
        )

        INSERT INTO [Sampling_Result]
        (
            SampID,
            [No],
            Batch_Lot_no,
            [Date],
            [Time],
            Item
        )

        SELECT
            NS.SamplingID,

            CONCAT(
                @NoPage,
                '.',
                @LastNo + BL.BatchNo
            ) AS [No],

            BL.BatchNo AS Batch_Lot_no,

            NS.[Date],

            NS.[Time],

            NS.[Sum] AS Item

        FROM @NewSampling AS NS

        CROSS JOIN BatchList AS BL

        OPTION (MAXRECURSION 0);

    END


    /* =========================================================
       กรณีไม่มี No_page
       
       ตัวอย่าง:

       ข้อมูลเดิม:
       1
       2
       3
       4
       5
       6

       เพิ่ม Batch 3:
       7
       8
       9
       ========================================================= */

    ELSE
    BEGIN

        SELECT
            @LastNo =
                ISNULL(
                    MAX(
                        TRY_CONVERT(
                            INT,
                            LTRIM(
                                RTRIM(
                                    CONVERT(
                                        NVARCHAR(255),
                                        SR.[No]
                                    )
                                )
                            )
                        )
                    ),
                    0
                )
        FROM [Sampling_Result] AS SR
        INNER JOIN [Micro Sampling] AS MS
            ON MS.SamplingID = SR.SampID
        WHERE
            MS.MicroID = @MicroID
            AND LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            SR.[No]
                        )
                    )
                ) NOT LIKE '%.%';


        /* =====================================================
           สร้าง No ใหม่แบบเลขปกติ
           ===================================================== */

        ;WITH BatchList AS
        (
            SELECT
                1 AS BatchNo

            UNION ALL

            SELECT
                BatchNo + 1
            FROM BatchList
            WHERE
                BatchNo < TRY_CONVERT(
                    INT,
                    '{{Batch}}'
                )
        )

        INSERT INTO [Sampling_Result]
        (
            SampID,
            [No],
            Batch_Lot_no,
            [Date],
            [Time],
            Item
        )

        SELECT
            NS.SamplingID,

            CONVERT(
                NVARCHAR(255),
                @LastNo + BL.BatchNo
            ) AS [No],

            BL.BatchNo AS Batch_Lot_no,

            NS.[Date],

            NS.[Time],

            NS.[Sum] AS Item

        FROM @NewSampling AS NS

        CROSS JOIN BatchList AS BL

        OPTION (MAXRECURSION 0);

    END;


    /* =========================================================
       Commit
       ========================================================= */

    COMMIT TRANSACTION;


    /* =========================================================
       Result
       ========================================================= */

    SELECT
        @MicroID AS MicroID,
        '{{SamplingID}}' AS SamplingID,
        'Created' AS Status;


END TRY

BEGIN CATCH

    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END;

    THROW;

END CATCH;
