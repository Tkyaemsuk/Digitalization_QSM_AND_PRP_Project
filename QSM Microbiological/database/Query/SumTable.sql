/*
Application: QSM Microbiological
Query name: SumTable
File: SumTable.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_75667695a561456d8b387d4cb896d163
Budibase function: read
Bindings: none
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT   
 
    /* id */ 
    MS.id, 
 
    /* Date -> DD/MM/YYYY */   
    CONVERT(   
        NVARCHAR(10),   
        CAST(MS.[Date] AS DATE),   
        103   
    ) AS [Date],   
 
    /* Time -> HH:mm */   
    SUBSTRING(   
        CONVERT(   
            NVARCHAR(30),   
            MS.[Time],   
            126   
        ),   
        12,   
        5   
    ) AS [Time],   
 
    MS.Batch, 
		MS.Department,
		MS.Page,
 
    /* อ่าน Status */ 
    MS.Status,

    /* DataType แยกเป็น Column */
    MS.DataType AS DataType,
 
    /* =====================================================   
       Sum   
       เอาเฉพาะค่าที่มี   
       ===================================================== */   
    NULLIF(   
        CONCAT_WS(   
            ' / ',   
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Item))),   
                ''   
            ), 
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Selection))),   
                ''   
            ),   
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Sample))),   
                ''   
            ),   
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.[Name]))),   
                ''   
            ),   
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Machine))),   
                ''   
            ),   
 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.[Type]))),   
                ''   
            ),   
					 
            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.[Sum]))),   
                ''   
            ),   

            NULLIF(   
                LTRIM(RTRIM(CONVERT(NVARCHAR(255), MS.Tank))),   
                ''   
            )   
        ),   
        ''   
    ) AS [Sum]   
 
FROM [Micro Sampling] AS MS;
