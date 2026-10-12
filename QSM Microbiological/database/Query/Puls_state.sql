/*
Application: QSM Microbiological
Query name: Puls_state
File: Puls_state.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_67bef9d8443749cf923eab9bc805bc31
Budibase function: update
Bindings: MicroID
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

UPDATE [Micro Sampling]
SET State = ISNULL(State, 0) + 1
WHERE MicroID = {{MicroID}};
