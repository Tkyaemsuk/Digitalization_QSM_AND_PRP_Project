/*
Application: QSM Microbiological Analysis System
Query name: Merge_Recall_pH_Unique_SamplingID_Group
File: Merge_Recall_pH_Unique_SamplingID_Group.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_45acc2443cd348cd9861d5c011009cec
Source: Budibase latest edited app export, 2026-10-12
Bindings: none
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

;WITH RankedPH AS
(
    /* =========================================================
       STEP 1: ดึงข้อมูล pH และเรียงลำดับภายใน SamplingID + Group
       ========================================================= */
    SELECT
        s.SamplingID,
        s.Product,
        Fgood.EXP_Data AS Exp_Date,
        m.[Machine] AS MachineName,
        LTRIM(RTRIM(Fgood.[Group])) AS [Group],
        ph.PHValue,

        ROW_NUMBER() OVER
        (
            PARTITION BY
                s.SamplingID,
                LTRIM(RTRIM(Fgood.[Group]))
            ORDER BY
                ph.PHValue ASC,
                Fgood.[id] ASC
        ) AS PH_No

    FROM Sampling AS s

    INNER JOIN machine AS m
        ON m.[no] = s.[Machine]

    INNER JOIN [Finish-good] AS Fgood
        ON Fgood.EXP_Data >= CAST(s.ExpiredDate AS DATE)
       AND Fgood.EXP_Data < DATEADD
        (
            DAY,
            1,
            CAST(s.ExpiredDate AS DATE)
        )

        /* -----------------------------------------------------
           Group ของ Finish-good ต้องตรงกับตัวอักษรแรกของ Machine
           ตัวอย่าง:
           Machine A4 -> Group A
           Machine A5 -> Group A
           ----------------------------------------------------- */
       AND LTRIM(RTRIM(Fgood.[Group]))
           = LEFT(LTRIM(RTRIM(m.[Machine])), 1)

    CROSS APPLY
    (
        VALUES
        (
            TRY_CONVERT
            (
                DECIMAL(10, 3),
                NULLIF
                (
                    LTRIM
                    (
                        RTRIM
                        (
                            CONVERT
                            (
                                VARCHAR(30),
                                Fgood.[pH]
                            )
                        )
                    ),
                    ''
                )
            )
        )
    ) AS ph(PHValue)

    WHERE ph.PHValue IS NOT NULL
),

PreparedData AS
(
    /* =========================================================
       STEP 2: Pivot ค่า pH เป็น PH1 - PH16

       จุดสำคัญ:
       GROUP BY เฉพาะ SamplingID + Group เท่านั้น

       เพื่อรับประกันว่า Source สำหรับ MERGE จะมีเพียง
       1 Row ต่อ SamplingID + Group

       แก้ปัญหา:
       MERGE attempted to UPDATE the same row more than once
       ========================================================= */
    SELECT
        SamplingID,
        [Group],

        /* -----------------------------------------------------
           Product / Exp_Date / MachineName
           ใช้ MAX เพื่อเลือกค่าจาก SamplingID เดียวกัน

           โดยปกติ SamplingID เดียวควรมีข้อมูลเหล่านี้ค่าเดียว
           ----------------------------------------------------- */
        MAX(Product) AS Product,
        MAX(Exp_Date) AS Exp_Date,
        MAX(MachineName) AS MachineName,

        MAX(CASE WHEN PH_No = 1  THEN PHValue END) AS PH1,
        MAX(CASE WHEN PH_No = 2  THEN PHValue END) AS PH2,
        MAX(CASE WHEN PH_No = 3  THEN PHValue END) AS PH3,
        MAX(CASE WHEN PH_No = 4  THEN PHValue END) AS PH4,
        MAX(CASE WHEN PH_No = 5  THEN PHValue END) AS PH5,
        MAX(CASE WHEN PH_No = 6  THEN PHValue END) AS PH6,
        MAX(CASE WHEN PH_No = 7  THEN PHValue END) AS PH7,
        MAX(CASE WHEN PH_No = 8  THEN PHValue END) AS PH8,
        MAX(CASE WHEN PH_No = 9  THEN PHValue END) AS PH9,
        MAX(CASE WHEN PH_No = 10 THEN PHValue END) AS PH10,
        MAX(CASE WHEN PH_No = 11 THEN PHValue END) AS PH11,
        MAX(CASE WHEN PH_No = 12 THEN PHValue END) AS PH12,
        MAX(CASE WHEN PH_No = 13 THEN PHValue END) AS PH13,
        MAX(CASE WHEN PH_No = 14 THEN PHValue END) AS PH14,
        MAX(CASE WHEN PH_No = 15 THEN PHValue END) AS PH15,
        MAX(CASE WHEN PH_No = 16 THEN PHValue END) AS PH16

    FROM RankedPH

    WHERE PH_No <= 16

    GROUP BY
        SamplingID,
        [Group]
),

UniqueSource AS
(
    /* =========================================================
       STEP 3: Safety Layer

       ป้องกัน Source ซ้ำก่อนเข้า MERGE อีกหนึ่งชั้น
       แม้ PreparedData จะ GROUP BY แล้วก็ตาม
       ========================================================= */
    SELECT
        SamplingID,
        Product,
        Exp_Date,
        MachineName,
        [Group],
        PH1,
        PH2,
        PH3,
        PH4,
        PH5,
        PH6,
        PH7,
        PH8,
        PH9,
        PH10,
        PH11,
        PH12,
        PH13,
        PH14,
        PH15,
        PH16,

        ROW_NUMBER() OVER
        (
            PARTITION BY
                SamplingID,
                [Group]
            ORDER BY
                Exp_Date DESC
        ) AS SourceRow
    FROM PreparedData
)

/* =============================================================
   STEP 4: MERGE ข้อมูลเข้า Recall_pH

   Key:
   SamplingID + Group

   SourceRow = 1
   ทำให้แต่ละ Target Row สามารถ Match Source ได้สูงสุด 1 Row
   ============================================================= */
MERGE INTO Recall_pH WITH (HOLDLOCK) AS Target

USING
(
    SELECT
        SamplingID,
        Product,
        Exp_Date,
        MachineName,
        [Group],
        PH1,
        PH2,
        PH3,
        PH4,
        PH5,
        PH6,
        PH7,
        PH8,
        PH9,
        PH10,
        PH11,
        PH12,
        PH13,
        PH14,
        PH15,
        PH16
    FROM UniqueSource
    WHERE SourceRow = 1
) AS Source

ON
    Target.SamplingID = Source.SamplingID
    AND Target.[Group] = Source.[Group]


/* =============================================================
   UPDATE เฉพาะเมื่อข้อมูลมีการเปลี่ยนแปลง

   EXCEPT รองรับ NULL ได้ดีกว่าการเขียน
   Target.Column <> Source.Column
   ============================================================= */
WHEN MATCHED
AND EXISTS
(
    SELECT
        Source.Product,
        Source.Exp_Date,
        Source.MachineName,
        Source.PH1,
        Source.PH2,
        Source.PH3,
        Source.PH4,
        Source.PH5,
        Source.PH6,
        Source.PH7,
        Source.PH8,
        Source.PH9,
        Source.PH10,
        Source.PH11,
        Source.PH12,
        Source.PH13,
        Source.PH14,
        Source.PH15,
        Source.PH16

    EXCEPT

    SELECT
        Target.Product,
        Target.Exp_Date,
        Target.MachineName,
        Target.PH1,
        Target.PH2,
        Target.PH3,
        Target.PH4,
        Target.PH5,
        Target.PH6,
        Target.PH7,
        Target.PH8,
        Target.PH9,
        Target.PH10,
        Target.PH11,
        Target.PH12,
        Target.PH13,
        Target.PH14,
        Target.PH15,
        Target.PH16
)

THEN UPDATE SET
    Target.Product     = Source.Product,
    Target.Exp_Date    = Source.Exp_Date,
    Target.MachineName = Source.MachineName,

    Target.PH1  = Source.PH1,
    Target.PH2  = Source.PH2,
    Target.PH3  = Source.PH3,
    Target.PH4  = Source.PH4,
    Target.PH5  = Source.PH5,
    Target.PH6  = Source.PH6,
    Target.PH7  = Source.PH7,
    Target.PH8  = Source.PH8,
    Target.PH9  = Source.PH9,
    Target.PH10 = Source.PH10,
    Target.PH11 = Source.PH11,
    Target.PH12 = Source.PH12,
    Target.PH13 = Source.PH13,
    Target.PH14 = Source.PH14,
    Target.PH15 = Source.PH15,
    Target.PH16 = Source.PH16


/* =============================================================
   INSERT เมื่อยังไม่มี SamplingID + Group ใน Recall_pH
   ============================================================= */
WHEN NOT MATCHED BY TARGET

THEN INSERT
(
    SamplingID,
    Product,
    Exp_Date,
    MachineName,
    [Group],

    PH1,
    PH2,
    PH3,
    PH4,
    PH5,
    PH6,
    PH7,
    PH8,
    PH9,
    PH10,
    PH11,
    PH12,
    PH13,
    PH14,
    PH15,
    PH16
)

VALUES
(
    Source.SamplingID,
    Source.Product,
    Source.Exp_Date,
    Source.MachineName,
    Source.[Group],

    Source.PH1,
    Source.PH2,
    Source.PH3,
    Source.PH4,
    Source.PH5,
    Source.PH6,
    Source.PH7,
    Source.PH8,
    Source.PH9,
    Source.PH10,
    Source.PH11,
    Source.PH12,
    Source.PH13,
    Source.PH14,
    Source.PH15,
    Source.PH16
)


/* =============================================================
   แสดงผลว่าแต่ละรายการเป็น INSERT หรือ UPDATE
   ============================================================= */
OUTPUT
    $action AS ActionType,
    inserted.SamplingID,
    inserted.[Group];