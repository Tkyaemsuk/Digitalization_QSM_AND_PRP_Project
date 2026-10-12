/*
Application: QSM Microbiological
Query name: Selection_Options
File: Selection_Options.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7e617ef0c9a34e04abe87bc78dab780b
Budibase function: read
Bindings: Department, Item
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT DISTINCT
    Section, 
		Section_NO
FROM All_plant_Data
WHERE Department = '{{ Department }}'
AND Item = '{{ Item }}'
ORDER BY Section;
