/*
Application: QSM Microbiological Analysis System
Query name: Quanity_Control_Added
File: Quanity_Control_Added.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_dec1b117c33e4a63af4e995d7549db23
Source: Budibase latest edited app export, 2026-10-12
Bindings: no, media, batch, pass, notpass, SampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

INSERT INTO Quanity_Control_Sampling_highacid
(
    SampID,
		No,
    Media,
    Batch,
    Pass,
    Notpass
)
SELECT
    LTRIM(RTRIM(value)),
		{{no}},
    {{media}},
    {{batch}},
    {{pass}},
    {{notpass}}
FROM STRING_SPLIT({{SampID}}, ',');