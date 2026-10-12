/*
Application: QSM Microbiological Analysis System
Query name: ChangeColor_UseBtn55
File: ChangeColor_UseBtn55.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_11adbf639c7b49aeac37b9038c5f4476
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, Colour, Smell, btnID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_55
SET ColourCode = {{code}},
colour = {{Colour}}, smell = {{Smell}}
WHERE id = {{btnID}}