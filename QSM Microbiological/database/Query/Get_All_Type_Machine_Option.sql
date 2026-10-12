/*
Application: QSM Microbiological
Query name: Get_All_Type_Machine_Option
File: Get_All_Type_Machine_Option.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_38f78a836a0d43ddb1cf2ee89eb47551
Budibase function: read
Bindings: none
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Get_All_Type_Machine_Options.sql */

SET NOCOUNT ON;

SELECT DISTINCT
    LTRIM(
        RTRIM(
            CONVERT(NVARCHAR(255), I.[Type])
        )
    ) AS [Type],

    LTRIM(
        RTRIM(S.value)
    ) AS Machine

FROM Sum_data_type AS I

CROSS APPLY STRING_SPLIT(
    ISNULL(I.Machine, ''),
    ','
) AS S

WHERE
    NULLIF(
        LTRIM(
            RTRIM(
                CONVERT(NVARCHAR(255), I.[Type])
            )
        ),
        ''
    ) IS NOT NULL

    AND NULLIF(
        LTRIM(RTRIM(S.value)),
        ''
    ) IS NOT NULL

ORDER BY
    [Type],
    Machine;
