/*
Application: QSM Microbiological
Query name: MicroID_Table
File: MicroID_Table.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_de162e8c0068422cb2e45e12c540e439
Budibase function: read
Bindings: Date, Department
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/


SELECT   
   
    M.No_page,   
    M.Department,   
    M.MicroID,
		M.Status AS Stu,

    /* Submit_Date -> DD/MM/YYYY HH:mm:ss (+7 ชั่วโมง) */
CONVERT(
    NVARCHAR(10),
    CAST(DATEADD(HOUR, 7, M.Submit_Date) AS DATE),
    103
)
+ ' ' +
CONVERT(
    NVARCHAR(8),
    CAST(DATEADD(HOUR, 7, M.Submit_Date) AS TIME),
    108
) AS Submit_Date,
   
    /* Date -> DD/MM/YYYY */   
    CONVERT(   
        NVARCHAR(10),   
        CAST(M.[Date] AS DATE),   
        103   
    ) AS [Date],
  
    /* =====================================================  
       detail
       คง Checkbox + Text Field เดิม
       + ข้อมูลจาก Micro Sampling
       ===================================================== */  
    NULLIF(  
        CONCAT_WS(  
            ' / ',  
  
            /* ================================================= 
               Checkbox 
               ================================================= */  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.raw_material) = 1  
                THEN 'Raw material'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.raw_milk) = 1  
                THEN 'Raw milk'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.Hot_water) = 1  
                THEN 'Hot water'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.water) = 1  
                THEN 'Water'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.Lye) = 1  
                THEN 'Lye'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.air_borne) = 1  
                THEN 'air borne'  
                ELSE NULL  
            END,  
  
            CASE  
                WHEN TRY_CONVERT(INT, M.swab_test) = 1  
                THEN 'swab test'  
                ELSE NULL  
            END,  
  
            /* ================================================= 
               Text Field
               ================================================= */  
  
            NULLIF(  
                LTRIM(  
                    RTRIM(  
                        CONVERT(  
                            NVARCHAR(500),  
                            M.inprocess_remark  
                        )  
                    )  
                ),  
                ''  
            ),  
  
            NULLIF(  
                LTRIM(  
                    RTRIM(  
                        CONVERT(  
                            NVARCHAR(500),  
                            M.Other_remark_for_detail  
                        )  
                    )  
                ),  
                ''  
            ),  
  
            /* =================================================
               Micro Sampling
               ================================================= */  
  
            MS_SUM.MicroSamplingSum  
  
        ),  
        ''  
    ) AS detail  
  
FROM Micro AS M


/* =========================================================
   Micro Sampling
   ========================================================= */

OUTER APPLY
(
    SELECT
        STRING_AGG(
            CONVERT(
                NVARCHAR(MAX),
                X.DisplayValue
            ),
            ' / '
        ) AS MicroSamplingSum

    FROM
    (
        SELECT
            MIN(D.CleanValue) AS DisplayValue

        FROM
        (

            /* =================================================
               1. Item + Selection
               ต้องมีทั้งคู่
               ================================================= */

            SELECT

                CONCAT(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Item
                            )
                        )
                    ),
                    ' / ',
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Selection
                            )
                        )
                    )
                ) AS CleanValue,

                LOWER(
                    CONCAT(
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.Item
                                )
                            )
                        ),
                        ' / ',
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.Selection
                                )
                            )
                        )
                    )
                ) AS CompareValue

            FROM [Micro Sampling] AS MS

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
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            M.MicroID
                        )
                    )
                )

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Item
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Selection
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL


            UNION ALL


            /* =================================================
               2. Machine + Type
               ต้องมีทั้งคู่
               ================================================= */

            SELECT

                CONCAT(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Machine
                            )
                        )
                    ),
                    ' / ',
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.[Type]
                            )
                        )
                    )
                ) AS CleanValue,

                LOWER(
                    CONCAT(
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.Machine
                                )
                            )
                        ),
                        ' / ',
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.[Type]
                                )
                            )
                        )
                    )
                ) AS CompareValue

            FROM [Micro Sampling] AS MS

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
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            M.MicroID
                        )
                    )
                )

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Machine
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.[Type]
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL


            UNION ALL


            /* =================================================
               3. Name + Tank
               ต้องมีทั้งคู่
               ================================================= */

            SELECT

                CONCAT(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.[Name]
                            )
                        )
                    ),
                    ' / ',
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Tank
                            )
                        )
                    )
                ) AS CleanValue,

                LOWER(
                    CONCAT(
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.[Name]
                                )
                            )
                        ),
                        ' / ',
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    MS.Tank
                                )
                            )
                        )
                    )
                ) AS CompareValue

            FROM [Micro Sampling] AS MS

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
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            M.MicroID
                        )
                    )
                )

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.[Name]
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                MS.Tank
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL


            UNION ALL


            /* =================================================
               4. Sum
               เดี่ยวได้
               แตกค่าที่คั่นด้วย " / "
               และตัดค่าซ้ำ
               ================================================= */

            SELECT

                NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                SS.value
                            )
                        )
                    ),
                    ''
                ) AS CleanValue,

                LOWER(
                    NULLIF(
                        LTRIM(
                            RTRIM(
                                CONVERT(
                                    NVARCHAR(500),
                                    SS.value
                                )
                            )
                        ),
                        ''
                    )
                ) AS CompareValue

            FROM [Micro Sampling] AS MS

            CROSS APPLY STRING_SPLIT
            (
                REPLACE(
                    CONVERT(
                        NVARCHAR(MAX),
                        MS.[Sum]
                    ),
                    ' / ',
                    '|'
                ),
                '|'
            ) AS SS

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
                LTRIM(
                    RTRIM(
                        CONVERT(
                            NVARCHAR(255),
                            M.MicroID
                        )
                    )
                )

                AND NULLIF(
                    LTRIM(
                        RTRIM(
                            CONVERT(
                                NVARCHAR(500),
                                SS.value
                            )
                        )
                    ),
                    ''
                ) IS NOT NULL

        ) AS D

        WHERE
            D.CleanValue IS NOT NULL
            AND D.CompareValue IS NOT NULL

        /* ตัดค่าซ้ำ */
        GROUP BY
            D.CompareValue

    ) AS X

) AS MS_SUM


/* =========================================================
   FILTER
   Date + Department
   ========================================================= */

WHERE
    (
        NULLIF('{{Date}}', '') IS NULL
        OR CAST(M.[Date] AS DATE)
           = TRY_CAST('{{Date}}' AS DATE)
    )

    AND

    (
        NULLIF('{{Department}}', '') IS NULL
        OR LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       M.Department
                   )
               )
           )
           =
           LTRIM(
               RTRIM(
                   CONVERT(
                       NVARCHAR(255),
                       '{{Department}}'
                   )
               )
           )
    );
