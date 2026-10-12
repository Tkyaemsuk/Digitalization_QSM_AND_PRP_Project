/*
Application: QSM Microbiological Analysis System
Query name: Update PHB
File: Update PHB.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_87176ffa9ebc41039cb92b007ab3ecca
Source: Budibase latest edited app export, 2026-10-12
Bindings: PhBefore, PhBefore2, spac, spac2, sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

  UPDATE Sampling SET
	PH_Before = {{PhBefore}},
	PH_Before2 = {{PhBefore2}},
  Spec_Actual = '{{spac}}',
	Spec_Actual2 = '{{spac2}}'
	WHERE SamplingID = {{sampID}}