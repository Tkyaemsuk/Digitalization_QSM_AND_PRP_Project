/*
Application: QSM Microbiological
Query name: Pull_sum_MicroID
File: Pull_sum_MicroID.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_9ad774fb8de84340bb19921a1dbbbde6
Budibase function: read
Bindings: MicroID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* ========================================================= 
   Pull_sum_MicroID 
   อ่าน MicroID -> ดึง SamplingID ใน Micro Sampling 
 
   ถ้า MicroID ยังไม่มีค่า: 
   - คืน NULL row 
   - เพื่อให้ Budibase มองเห็น Columns 
   ========================================================= */ 
 
SET NOCOUNT ON; 
 
 
/* ========================================================= 
   1. รับ MicroID 
   ========================================================= */ 
 
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
   2. ถ้า MicroID ยังไม่มีค่า 
      คืน Column schema ให้ Budibase 
   ========================================================= */ 
 
IF @MicroID IS NULL 
BEGIN 
 
    SELECT 
        CAST(NULL AS INT) AS id, 
        CAST(NULL AS NVARCHAR(255)) AS MicroID, 
        CAST(NULL AS NVARCHAR(255)) AS SamplingID, 
 
        CAST(NULL AS NVARCHAR(10)) AS [Date], 
        CAST(NULL AS NVARCHAR(5)) AS [Time], 
 
        CAST(NULL AS NVARCHAR(255)) AS Batch, 
        CAST(NULL AS NVARCHAR(255)) AS Status, 
 
        CAST(NULL AS NVARCHAR(MAX)) AS [Sum]; 
 
    RETURN; 
 
END; 
 
 
/* ========================================================= 
   3. ดึงข้อมูลจริง 
   ========================================================= */ 
 
SELECT 
 
    /* id */ 
    MS.id, 
 
    /* MicroID */ 
    CONVERT( 
        NVARCHAR(255), 
        MS.MicroID 
    ) AS MicroID, 
 
    /* SamplingID */ 
    CONVERT( 
        NVARCHAR(255), 
        MS.SamplingID 
    ) AS SamplingID, 
 
 
    /* ===================================================== 
       Date -> DD/MM/YYYY 
       ===================================================== */ 
 
    CONVERT( 
        NVARCHAR(10), 
        CAST(MS.[Date] AS DATE), 
        103 
    ) AS [Date], 
 
 
    /* ===================================================== 
       Time -> HH:mm 
       ===================================================== */ 
 
    SUBSTRING( 
        CONVERT( 
            NVARCHAR(30), 
            MS.[Time], 
            126 
        ), 
        12, 
        5 
    ) AS [Time], 
 
 
    /* Batch */ 
    CONVERT( 
        NVARCHAR(255), 
        MS.Batch 
    ) AS Batch, 
 
 
    /* Status */ 
    CONVERT( 
        NVARCHAR(255), 
        MS.Status 
    ) AS Status, 
 
 
    /* ===================================================== 
       Sum 
       รวมเฉพาะค่าที่มี 
 
       Item 
       Selection 
       Sample 
       Name 
       Machine 
       Type 
       Sum
       Tank 
       ===================================================== */ 
 
    CONVERT( 
        NVARCHAR(MAX), 
 
        NULLIF( 
            CONCAT_WS( 
                ' / ', 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.Item 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.Selection 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.Sample 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.[Name] 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.Machine 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.[Type] 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                /* =========================================
                   เพิ่ม MS.Sum
                   ถ้ามีค่าให้นำมาต่อ
                   ถ้าว่างให้ข้าม
                   ========================================= */
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.[Sum] 
                            ) 
                        ) 
                    ), 
                    '' 
                ), 
 
                NULLIF( 
                    LTRIM( 
                        RTRIM( 
                            CONVERT( 
                                NVARCHAR(255), 
                                MS.Tank 
                            ) 
                        ) 
                    ), 
                    '' 
                ) 
            ), 
            '' 
        ) 
 
    ) AS [Sum] 
 
 
FROM [Micro Sampling] AS MS 
 
 
/* ========================================================= 
   4. Filter ด้วย MicroID 
   ========================================================= */ 
 
WHERE 
 
    LTRIM( 
        RTRIM( 
            CONVERT( 
                NVARCHAR(255), 
                MS.MicroID 
            ) 
        ) 
    ) 
    = 
    @MicroID 
 
 
/* ========================================================= 
   5. เรียงตาม id 
   ========================================================= */ 
 
ORDER BY 
    MS.id ASC;
