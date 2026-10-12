/*
Application: QSM Microbiological Analysis System
Query name: Getall_Sampling
File: Getall_Sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_2e74f1db64764cdebe41f738b579e89b
Source: Budibase latest edited app export, 2026-10-12
Bindings: Size, FillingDate, sampling1, sampling2, sampling3, sampling4, sampling5, sampling6
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT *
FROM Sampling
WHERE
    REPLACE(REPLACE(REPLACE(LOWER(Size), 'ml.', ''), 'ml', ''), ' ', '')
    =
    REPLACE(REPLACE(REPLACE(LOWER({{ Size }}), 'ml.', ''), 'ml', ''), ' ', '')

AND (
    {{ FillingDate }} IS NULL
    OR
    CAST(FillingDate AS DATE)
    =
    CAST(LEFT({{ FillingDate }}, 10) AS DATE)
)

AND (
    SamplingID <> {{ sampling1 }} OR {{ sampling1 }} IS NULL
)

AND (
    SamplingID <> {{ sampling2 }} OR {{ sampling2 }} IS NULL
)

AND (
    SamplingID <> {{ sampling3 }} OR {{ sampling3 }} IS NULL
)

AND (
    SamplingID <> {{ sampling4 }} OR {{ sampling4 }} IS NULL
)

AND (
    SamplingID <> {{ sampling5 }} OR {{ sampling5 }} IS NULL
)

AND (
    SamplingID <> {{ sampling6 }} OR {{ sampling6 }} IS NULL
)