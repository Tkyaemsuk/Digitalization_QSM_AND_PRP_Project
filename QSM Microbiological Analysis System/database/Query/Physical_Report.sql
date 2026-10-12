/*
Application: QSM Microbiological Analysis System
Query name: Physical_Report
File: Physical_Report.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_83f24b45f4164d39b035fc175b6718bc
Source: Budibase latest edited app export, 2026-10-12
Bindings: phy, phy_date, sampID, sampID2, sampID3, sampID4, sampID5, sampID6
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling
SET
    physical_by = {{phy}},
    physical_date = '{{phy_date}}',
		Actual_CheckDate = '{{phy_date}}'
WHERE SamplingID IN (
    {{sampID}},
    {{sampID2}},
    {{sampID3}},
    {{sampID4}},
    {{sampID5}},
    {{sampID6}}
);