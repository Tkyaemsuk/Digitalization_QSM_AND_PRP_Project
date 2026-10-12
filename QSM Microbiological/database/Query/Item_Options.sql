/*
Application: QSM Microbiological
Query name: Item_Options
File: Item_Options.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_f9ae2eb5147a40918d250b6a66ce50f9
Budibase function: read
Bindings: Department
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT DISTINCT
    Item
FROM All_plant_Data
WHERE Department = '{{ Department }}'
ORDER BY Item;
