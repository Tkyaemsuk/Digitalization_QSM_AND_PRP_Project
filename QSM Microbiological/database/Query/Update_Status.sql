/*
Application: QSM Microbiological
Query name: Update_Status
File: Update_Status.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_63df0e78bab84468b0d2f2ae2154142b
Budibase function: update
Bindings: none
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

UPDATE [Micro]
SET Status =
    CASE
        WHEN Sup IS NOT NULL AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), Sup))) <> ''
            THEN 'Success'

        WHEN received_by IS NOT NULL AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), received_by))) <> ''
            THEN 'Pending'

        ELSE Status
    END;
