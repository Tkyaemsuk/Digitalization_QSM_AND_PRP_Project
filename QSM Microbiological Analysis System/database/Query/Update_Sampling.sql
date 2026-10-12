/*
Application: QSM Microbiological Analysis System
Query name: Update_Sampling
File: Update_Sampling.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_62524e88788f4018b1b4abdf486e4443
Source: Budibase latest edited app export, 2026-10-12
Bindings: Product, Flavour, Plan, Actual, Plan55, Actual55, dayFinished, dayFinished2, RecevieBy, Recieved_date, Amount_Samples, Example, Indication, packaging, complete, Detail_Complete, Normal, Incomplete, Detail_incomplete, Abnormal, EditBy, SamID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

UPDATE Sampling
SET 
    Product = {{Product}},
		Flavour = {{Flavour}},
    Plan_CheckDate = '{{Plan}}',
    Actual_CheckDate = '{{Actual}}',
		Plan_CheckDate55 = '{{Plan55}}',
    Actual_CheckDate55 = '{{Actual55}}',
		dayFinished = {{dayFinished}},
		dayFinished2 = {{dayFinished2}},
		[RecevieBy] = {{RecevieBy}},
		Recieved_date = {{Recieved_date}},
		Amount_Samples = {{Amount_Samples}},
		Example = {{Example}},
		Indication = {{Indication}},
		packaging = {{packaging}},
		complete = {{complete}},
		Detail_Complete = {{Detail_Complete}},
		Normal = {{Normal}},
		Incomplete = {{Incomplete}},
		Detail_incomplete = {{Detail_incomplete}},
		Abnormal = {{Abnormal}},
		EditBy = {{EditBy}},
		Locked_Production = '1'
WHERE SamplingID = {{SamID}};