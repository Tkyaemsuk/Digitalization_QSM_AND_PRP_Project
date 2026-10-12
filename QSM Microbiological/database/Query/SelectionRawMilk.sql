/*
Application: QSM Microbiological
Query name: SelectionRawMilk
File: SelectionRawMilk.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_ddfda2a366784feaba9fd355d5e86dc7
Budibase function: read
Bindings: Date, Supplier, TruckNo
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

/* SQL Name: Get_RawMilk_By_Date_Supplier_Truck_Sampling.sql */

SET NOCOUNT ON;


/* ============================================================
   1. รับค่าจาก Budibase
   ============================================================ */

DECLARE @InputDate DATE =
    COALESCE(
        TRY_CONVERT(DATE, '{{ Date }}', 23),   -- yyyy-mm-dd
        TRY_CONVERT(DATE, '{{ Date }}', 126),  -- ISO datetime
        TRY_CONVERT(DATE, '{{ Date }}', 101),  -- mm/dd/yyyy
        TRY_CONVERT(DATE, '{{ Date }}', 103)   -- dd/mm/yyyy
    );

DECLARE @Supplier NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{ Supplier }}')),
        ''
    );

DECLARE @TruckNo NVARCHAR(255) =
    NULLIF(
        LTRIM(RTRIM('{{ TruckNo }}')),
        ''
    );


/* ============================================================
   2. Return ข้อมูลแบบไล่เงื่อนไข

   Date
      ↓
   Supplier
      ↓
   TruckNo
      ↓
   SamplingID
   ============================================================ */

SELECT DISTINCT
    Supplier,
    truck_no,
    SamplingID

FROM [Sampling RawMilk]

WHERE

    /* วันที่ต้องตรง */
    CAST([Date] AS DATE) = @InputDate


    /* --------------------------------------------------------
       ถ้ายังไม่เลือก Supplier
       -> คืน Supplier ทั้งหมดของวันนั้น

       ถ้าเลือกแล้ว
       -> เหลือเฉพาะ Supplier ที่เลือก
       -------------------------------------------------------- */
    AND
    (
        @Supplier IS NULL
        OR LTRIM(RTRIM(Supplier)) = @Supplier
    )


    /* --------------------------------------------------------
       ถ้ายังไม่เลือก TruckNo
       -> คืน TruckNo ของ Supplier นั้นทั้งหมด

       ถ้าเลือกแล้ว
       -> เหลือเฉพาะรถที่เลือก
       -------------------------------------------------------- */
    AND
    (
        @TruckNo IS NULL
        OR LTRIM(RTRIM(truck_no)) = @TruckNo
    )


    AND Supplier IS NOT NULL
    AND LTRIM(RTRIM(Supplier)) <> ''


ORDER BY
    Supplier,
    truck_no,
    SamplingID;
