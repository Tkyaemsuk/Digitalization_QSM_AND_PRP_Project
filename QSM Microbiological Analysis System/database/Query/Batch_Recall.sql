/*
Application: QSM Microbiological Analysis System
Query name: Batch_Recall
File: Batch_Recall.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_7da00bf6f69c4a91b7a2bbc2191855d0
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT
    -- Batch 1
    MAX(CASE WHEN rn = 1 THEN No END)      AS No1,
    MAX(CASE WHEN rn = 1 THEN Media END)   AS Media1,
    MAX(CASE WHEN rn = 1 THEN Batch END)   AS Batch1,
    CASE WHEN MAX(CASE WHEN rn = 1 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass1,
    CASE WHEN MAX(CASE WHEN rn = 1 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass1,

    -- Batch 2
    MAX(CASE WHEN rn = 2 THEN No END)      AS No2,
    MAX(CASE WHEN rn = 2 THEN Media END)   AS Media2,
    MAX(CASE WHEN rn = 2 THEN Batch END)   AS Batch2,
    CASE WHEN MAX(CASE WHEN rn = 2 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass2,
    CASE WHEN MAX(CASE WHEN rn = 2 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass2,

    -- Batch 3
    MAX(CASE WHEN rn = 3 THEN No END)      AS No3,
    MAX(CASE WHEN rn = 3 THEN Media END)   AS Media3,
    MAX(CASE WHEN rn = 3 THEN Batch END)   AS Batch3,
    CASE WHEN MAX(CASE WHEN rn = 3 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass3,
    CASE WHEN MAX(CASE WHEN rn = 3 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass3,

    -- Batch 4
    MAX(CASE WHEN rn = 4 THEN No END)      AS No4,
    MAX(CASE WHEN rn = 4 THEN Media END)   AS Media4,
    MAX(CASE WHEN rn = 4 THEN Batch END)   AS Batch4,
    CASE WHEN MAX(CASE WHEN rn = 4 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass4,
    CASE WHEN MAX(CASE WHEN rn = 4 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass4,

    -- Batch 5
    MAX(CASE WHEN rn = 5 THEN No END)      AS No5,
    MAX(CASE WHEN rn = 5 THEN Media END)   AS Media5,
    MAX(CASE WHEN rn = 5 THEN Batch END)   AS Batch5,
    CASE WHEN MAX(CASE WHEN rn = 5 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass5,
    CASE WHEN MAX(CASE WHEN rn = 5 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass5,

    -- Batch 6
    MAX(CASE WHEN rn = 6 THEN No END)      AS No6,
    MAX(CASE WHEN rn = 6 THEN Media END)   AS Media6,
    MAX(CASE WHEN rn = 6 THEN Batch END)   AS Batch6,
    CASE WHEN MAX(CASE WHEN rn = 6 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass6,
    CASE WHEN MAX(CASE WHEN rn = 6 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass6,

    -- Batch 7
    MAX(CASE WHEN rn = 7 THEN No END)      AS No7,
    MAX(CASE WHEN rn = 7 THEN Media END)   AS Media7,
    MAX(CASE WHEN rn = 7 THEN Batch END)   AS Batch7,
    CASE WHEN MAX(CASE WHEN rn = 7 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass7,
    CASE WHEN MAX(CASE WHEN rn = 7 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass7,

    -- Batch 8
    MAX(CASE WHEN rn = 8 THEN No END)      AS No8,
    MAX(CASE WHEN rn = 8 THEN Media END)   AS Media8,
    MAX(CASE WHEN rn = 8 THEN Batch END)   AS Batch8,
    CASE WHEN MAX(CASE WHEN rn = 8 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass8,
    CASE WHEN MAX(CASE WHEN rn = 8 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass8,

    -- Batch 9
    MAX(CASE WHEN rn = 9 THEN No END)      AS No9,
    MAX(CASE WHEN rn = 9 THEN Media END)   AS Media9,
    MAX(CASE WHEN rn = 9 THEN Batch END)   AS Batch9,
    CASE WHEN MAX(CASE WHEN rn = 9 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass9,
    CASE WHEN MAX(CASE WHEN rn = 9 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass9,

    -- Batch 10
    MAX(CASE WHEN rn = 10 THEN No END)      AS No10,
    MAX(CASE WHEN rn = 10 THEN Media END)   AS Media10,
    MAX(CASE WHEN rn = 10 THEN Batch END)   AS Batch10,
    CASE WHEN MAX(CASE WHEN rn = 10 THEN CAST(Pass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Pass10,
    CASE WHEN MAX(CASE WHEN rn = 10 THEN CAST(Notpass AS INT) END) = 1 THEN 'true' ELSE 'false' END AS Notpass10

FROM (
    SELECT TOP (10)
        No,
        Media,
        Batch,
        Pass,
        Notpass,
        ROW_NUMBER() OVER (ORDER BY id) AS rn
    FROM Quanity_Control_Sampling_highacid
    WHERE sampID = {{sampID}}
) t;