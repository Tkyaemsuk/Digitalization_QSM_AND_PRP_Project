/*
Application: QSM Microbiological
Query name: Save_Internal
File: Save_Internal.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_01fcd0e1a3434f5c8594001ce9eda00b
Budibase function: update
Bindings: MicroID, No, Media, Equipment, Batch, Pass, No_pass, Positive, Negative, Other
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

INSERT INTO Internal_Quality
(
    MicroID,
    [No],
    [Media],
	  [Equipment],
    [Batch],
    [Pass],
    [No_pass],
    [Positive],
    [Negative],
	  Other
)
VALUES
(
    '{{MicroID}}',
    '{{No}}',
    '{{Media}}',
	  '{{Equipment}}',
    '{{Batch}}',
    '{{Pass}}',
    '{{No_pass}}',
    '{{Positive}}',
    '{{Negative}}',
	   {{Other}}
);
