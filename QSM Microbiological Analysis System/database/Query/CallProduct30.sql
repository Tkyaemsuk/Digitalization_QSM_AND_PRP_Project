/*
Application: QSM Microbiological Analysis System
Query name: CallProduct30
File: CallProduct30.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_01175c9863c34d3ea7905620e5c25430
Source: Budibase latest edited app export, 2026-10-12
Bindings: sampID
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

WITH cte AS (
    SELECT 
        t.id,
        t.sampID,
        t.code,
        t.no,
        t.ph,
				t.NewpH,
				t.NewATP,
        t.atp,
        t.tpc,
        t.colour,
        t.smell,
        s.Spec_Actual,
        s.Spec_Actual2,

        SUM(CASE WHEN ISNULL(t.colour, '') <> '' THEN 1 ELSE 0 END) 
            OVER(PARTITION BY ISNULL(t.no, ''), ISNULL(t.code, '')) AS count_colour,

        SUM(CASE WHEN ISNULL(CAST(t.tpc AS VARCHAR(MAX)), '') <> '' THEN 1 ELSE 0 END) 
            OVER(PARTITION BY ISNULL(t.no, ''), ISNULL(t.code, '')) AS count_tpc,

        COUNT(t.id) OVER() AS allRows,

        -- ✅ เพิ่ม: ดึง pH และ ATP ตาม no+code (เอาค่าแรกที่ไม่ null ในกลุ่ม)
        MAX(t.ph)  OVER(PARTITION BY ISNULL(t.no, ''), ISNULL(t.code, '')) AS ph_by_no,
        MAX(t.atp) OVER(PARTITION BY ISNULL(t.no, ''), ISNULL(t.code, '')) AS atp_by_no

    FROM temperature_30 t
    LEFT JOIN Sampling s ON t.sampID = s.SamplingID 
    WHERE t.sampID = {{sampID}}
)
SELECT 
    id,
    sampID,
    no,
    code,
    ph,
    atp,
		NewpH AS newph,
    NewATP AS newatp,
    ph_by_no,   -- ✅ pH รวมของ no นี้
    atp_by_no,  -- ✅ ATP รวมของ no นี้
    tpc,
    colour,
    smell,
    Spec_Actual,
    Spec_Actual2,
    allRows,

    CASE 
        WHEN ph_by_no < Spec_Actual OR ph_by_no > Spec_Actual2 THEN 'true'
        ELSE 'false' 
    END AS spec_ac_check,  -- ✅ เช็ค spec จาก ph_by_no แทน ph เดิม

    CASE 
        WHEN count_tpc > 0 THEN 2 
        ELSE count_colour 
    END AS checked_count

FROM cte
ORDER BY 
    CASE WHEN count_tpc > 0 OR count_colour >= 2 THEN 1 ELSE 0 END,
    CASE WHEN ISNULL(colour, '') = '' THEN 0 ELSE 1 END,
    CAST(no AS INT), 
    id