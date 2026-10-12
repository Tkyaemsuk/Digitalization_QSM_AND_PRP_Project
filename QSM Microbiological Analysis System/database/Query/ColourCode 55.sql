/*
Application: QSM Microbiological Analysis System
Query name: ColourCode 55
File: ColourCode 55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_43dd6a028d8e469e988bc768da470ca8
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, s1, s2, s3, s4, s5, s6
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_55
SET "ColourCode" = {{ code }}
WHERE "sampID" IN (
  NULLIF('{{ s1 }}', ''),
  NULLIF('{{ s2 }}', ''),
  NULLIF('{{ s3 }}', ''),
  NULLIF('{{ s4 }}', ''),
  NULLIF('{{ s5 }}', ''),
  NULLIF('{{ s6 }}', '')
);