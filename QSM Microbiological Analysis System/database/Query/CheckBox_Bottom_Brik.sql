/*
Application: QSM Microbiological Analysis System
Query name: CheckBox_Bottom_Brik
File: CheckBox_Bottom_Brik.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7dfb18fb59184e4cad3a44bc66284e16
Source: Budibase latest edited app export, 2026-10-12
Bindings: code, Colour, Smell, btnID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE temperature_30high
SET ColourCode = {{code}},
colour = {{Colour}}, smell = {{Smell}}, Appearance = {{Smell}}
WHERE id = {{btnID}}