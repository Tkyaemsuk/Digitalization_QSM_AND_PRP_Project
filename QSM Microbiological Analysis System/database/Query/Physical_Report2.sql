/*
Application: QSM Microbiological Analysis System
Query name: Physical_Report2
File: Physical_Report2.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_154126c0221f4398a99c9b519a9c9425
Source: Budibase latest edited app export, 2026-10-12
Bindings: phy, phy_date, sampID, sampID2, sampID3, sampID4, sampID5, sampID6
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling
SET
    physical_by2 = {{phy}},
    physical_date2 = '{{phy_date}}',
		Actual_CheckDate55 = '{{phy_date}}'
WHERE SamplingID IN (
    {{sampID}},
    {{sampID2}},
    {{sampID3}},
    {{sampID4}},
    {{sampID5}},
    {{sampID6}}
);