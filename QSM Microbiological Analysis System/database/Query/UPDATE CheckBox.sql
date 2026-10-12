/*
Application: QSM Microbiological Analysis System
Query name: UPDATE CheckBox
File: UPDATE CheckBox.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_41894b2c2d524a3289fb57889d8be756
Source: Budibase latest edited app export, 2026-10-12
Bindings: ph, colour, smell, ph2, colour2, smell2, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling SET 
PH = {{ph}}, 
Colour = {{colour}}, 
Smell = {{smell}},
PH2 = {{ph2}}, 
Colour2 = {{colour2}}, 
Smell2 = {{smell2}}
WHERE SamplingID = {{sampID}}