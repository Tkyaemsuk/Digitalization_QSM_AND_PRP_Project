/*
Application: QSM Microbiological
Query name: samplingDate
File: samplingDate.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_d33f2cfaffd049cfbc8793554f643c22
Budibase function: read
Bindings: Date
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT
    s.SamplingID
FROM [Sampling RawMilk] s
WHERE
    ('{{Date}}' = ''
     OR CAST(s.[Date] AS DATE) = CAST('{{Date}}' AS DATE))
ORDER BY s.SamplingID;
