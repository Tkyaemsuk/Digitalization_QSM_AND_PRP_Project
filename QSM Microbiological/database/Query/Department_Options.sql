/*
Application: QSM Microbiological
Query name: Department_Options
File: Department_Options.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_1209148b17c54b5c8beea43558b95115
Budibase function: read
Bindings: none
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT DISTINCT
    Department,
		Department_NO
FROM All_plant_Data
ORDER BY Department;
