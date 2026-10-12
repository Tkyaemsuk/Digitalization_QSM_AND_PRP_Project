/*
Application: QSM Microbiological
Query name: Simple_Options
File: Simple_Options.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_c11e4d0d641d447082eff69160bce679
Budibase function: read
Bindings: Department, Item, Section
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT DISTINCT
    LTRIM(RTRIM(value)) AS Sample
FROM All_plant_Data
CROSS APPLY STRING_SPLIT(Sample, ',')
WHERE Department = '{{ Department }}'
AND Item = '{{ Item }}'
AND Section = '{{ Section }}'
ORDER BY Sample;
