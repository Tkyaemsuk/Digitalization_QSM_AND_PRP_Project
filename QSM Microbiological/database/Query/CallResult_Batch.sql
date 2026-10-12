/*
Application: QSM Microbiological
Query name: CallResult_Batch
File: CallResult_Batch.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_6e9fae4d0fb14061bc69e040708962a0
Budibase function: read
Bindings: SampID, No
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT
    sr.*
FROM Sampling_Result AS sr
WHERE
    LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.SampID))) =
    LTRIM(RTRIM(CONVERT(NVARCHAR(255), {{SampID}})))

AND
    LTRIM(RTRIM(CONVERT(NVARCHAR(255), sr.No))) =
    LTRIM(RTRIM(CONVERT(NVARCHAR(255), {{No}})));
