/*
Application: QSM Microbiological
Query name: Update_PART
File: Update_PART.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_7c24680b92d544b785b3b01999d5d407
Budibase function: update
Bindings: MicroID, Part, NO_page, inprocess, inprocess_remark, raw_material, raw_milk, Hot_water, water, Lye, air_borne, swab_test, Other_specify_for_detail, Other_remark_for_detail, TPC, Y_M, Mesophilic_spore, Thermophillic_spore, Coliform, Ecoli, Salmonella, Staphylococcus, Bacillus, Other_Specify_for_type, Other_remark_for_type, room_temp, temperature0_8, Freezer, Other_Specify_for_sample, Other_remark_for_sample, Submit_by, Submit_Date, Coliform_unit, Ecoli_unit, Salmonella_unit, Staphylococcus_unit, Bacillus_unit, Complete, Incomplete, Incomplete_remark, detail_complete, detail_incomplete, detail_incomplete_remark, Normal, Abnormal_Specify, Abnormal_Specify_remark, Action_on_ploblems, received_by, recevived_date, Check_date1, Check_date2, Inspector, Inspector_date, Interpretor, Interpretor_date, Sup, Sup_date, Amount_sample
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SET NOCOUNT ON; 
SET XACT_ABORT ON; 
 
 
/* ============================================================ 
   INPUT 
   ============================================================ */ 
 
DECLARE @MicroID VARCHAR(100) = 
    '{{MicroID}}'; 
 
DECLARE @Part INT = 
    TRY_CAST('{{Part}}' AS INT); 
 
/* ============================================================ 
   NO_page ใช้ INT 
   เช่น 1, 2, 3, 67 
   ถ้าว่าง -> NULL 
   ============================================================ */ 
 
DECLARE @NO_page INT = 
    TRY_CAST( 
        NULLIF( 
            LTRIM(RTRIM('{{NO_page}}')), 
            '' 
        ) 
        AS INT 
    ); 
 
 
BEGIN TRY 
 
    BEGIN TRANSACTION; 
 
 
    /* ============================================================ 
       PART 1 
       ============================================================ */ 
 
    IF @Part = 1 
    BEGIN 
 
        UPDATE M 
        SET 
            inprocess = {{inprocess}}, 
            inprocess_remark = {{inprocess_remark}}, 
            raw_material = {{raw_material}}, 
            raw_milk = {{raw_milk}}, 
            Hot_water = {{Hot_water}}, 
            water = {{water}}, 
            Lye = {{Lye}}, 
            air_borne = {{air_borne}}, 
            swab_test = {{swab_test}}, 
            Other_specify_for_detail = {{Other_specify_for_detail}}, 
            Other_remark_for_detail = {{Other_remark_for_detail}}, 
            TPC = {{TPC}}, 
            Y_M = {{Y_M}}, 
            Mesophilic_spore = {{Mesophilic_spore}}, 
            Thermophillic_spore = {{Thermophillic_spore}}, 
            Coliform = {{Coliform}}, 
            Ecoli = {{Ecoli}}, 
            Salmonella = {{Salmonella}}, 
            Staphylococcus = {{Staphylococcus}}, 
            Bacillus = {{Bacillus}}, 
            Other_Specify_for_type = {{Other_Specify_for_type}}, 
            Other_remark_for_type = {{Other_remark_for_type}}, 
            room_temp = {{room_temp}}, 
            temperature0_8 = {{temperature0_8}}, 
            Freezer = {{Freezer}}, 
            Other_Specify_for_sample = {{Other_Specify_for_sample}}, 
            Other_remark_for_sample = {{Other_remark_for_sample}}, 
            Submit_by = {{Submit_by}}, 
            Submit_Date = {{Submit_Date}}, 
 
            Coliform_unit = {{Coliform_unit}}, 
            Ecoli_unit = {{Ecoli_unit}}, 
            Salmonella_unit = {{Salmonella_unit}}, 
            Staphylococcus_unit = {{Staphylococcus_unit}}, 
            Bacillus_unit = {{Bacillus_unit}} 
 
        FROM Micro AS M 
 
        WHERE 
            M.MicroID = @MicroID; 
 
    END; 
 
 
    /* ============================================================ 
       PART 2 
       ============================================================ */ 
 
    IF @Part = 2 
    BEGIN 
 
        UPDATE M 
        SET 
            Complete = {{Complete}}, 
            Incomplete = {{Incomplete}}, 
            Incomplete_remark = {{Incomplete_remark}}, 
            detail_complete = {{detail_complete}}, 
            detail_incomplete = {{detail_incomplete}}, 
            detail_incomplete_remark = {{detail_incomplete_remark}}, 
            Normal = {{Normal}}, 
            Abnormal_Specify = {{Abnormal_Specify}}, 
            Abnormal_Specify_remark = {{Abnormal_Specify_remark}}, 
            Action_on_ploblems = {{Action_on_ploblems}}, 
            received_by = {{received_by}}, 
            recevived_date = {{recevived_date}}, 
            Check_date1 = {{Check_date1}}, 
            Check_date2 = {{Check_date2}}, 
 
            /* ================================================= 
               ถ้า NO_page ว่าง 
               -> ไม่เปลี่ยนค่าเดิม 
               ================================================= */ 
            NO_page = 
                CASE 
                    WHEN @NO_page IS NULL 
                        THEN M.NO_page 
                    ELSE @NO_page 
                END, 
 
            Inspector = {{Inspector}}, 
            Inspector_date = {{Inspector_date}}, 
            Interpretor = {{Interpretor}}, 
            Interpretor_date = {{Interpretor_date}}, 
            Sup = {{Sup}}, 
            Sup_date = {{Sup_date}}, 
            Amount_sample = {{Amount_sample}}, 
 
            /* =================================================
               STATUS
               
               Sup มีข้อมูล
               -> Success
               
               ถ้า Sup ไม่มี แต่ received_by มีข้อมูล
               -> Pending
               
               ถ้าไม่มีทั้งสอง
               -> คง Status เดิม
               ================================================= */
            Status =
                CASE
                   
                    WHEN {{received_by}} IS NOT NULL
                         AND LTRIM(RTRIM(CONVERT(NVARCHAR(255), {{received_by}}))) <> ''
                        THEN 'Pending'

                    ELSE M.Status
                END
 
        FROM Micro AS M 
 
        WHERE 
            M.MicroID = @MicroID; 
 
 
        /* ======================================================== 
           Update Sampling_Result.No 
 
           ทำงานเฉพาะเมื่อ NO_page มีค่า 
           ======================================================== */ 
 
        IF @NO_page IS NOT NULL 
        BEGIN 
 
            UPDATE SR 
 
            SET 
                SR.[No] = 
                    CONVERT( 
                        VARCHAR(10), 
                        @NO_page 
                    ) 
                    + '.' 
                    + 
                    CASE 
 
                        /* ----------------------------------------- 
                           ถ้ามี . อยู่แล้ว 
                           เอาเฉพาะเลขหลัง . ตัวสุดท้าย 
                           ----------------------------------------- */ 
 
                        WHEN CHARINDEX( 
                                '.', 
                                CONVERT( 
                                    VARCHAR(50), 
                                    SR.[No] 
                                ) 
                             ) > 0 
 
                        THEN 
                            RIGHT( 
                                CONVERT( 
                                    VARCHAR(50), 
                                    SR.[No] 
                                ), 
 
                                CHARINDEX( 
                                    '.', 
                                    REVERSE( 
                                        CONVERT( 
                                            VARCHAR(50), 
                                            SR.[No] 
                                        ) 
                                    ) 
                                ) - 1 
                            ) 
 
                        /* ----------------------------------------- 
                           ถ้ายังไม่มี . 
                           ใช้ No เดิม 
                           ----------------------------------------- */ 
 
                        ELSE 
                            CONVERT( 
                                VARCHAR(50), 
                                SR.[No] 
                            ) 
 
                    END 
 
            FROM Sampling_Result AS SR 
 
            INNER JOIN [Micro Sampling] AS MS 
                ON MS.SamplingID = SR.SampID 
 
            WHERE 
                MS.MicroID = @MicroID; 
 
        END; 
 
    END; 
 
 
    /* ============================================================ 
       COMMIT 
       ============================================================ */ 
 
    COMMIT TRANSACTION; 
 
 
END TRY 
 
 
BEGIN CATCH 
 
    /* ============================================================ 
       ถ้า Error ระหว่างทาง 
       Rollback ป้องกัน Transaction ค้าง 
       ============================================================ */ 
 
    IF @@TRANCOUNT > 0 
    BEGIN 
        ROLLBACK TRANSACTION; 
    END; 
 
    THROW; 
 
END CATCH; 
 
 
/* ============================================================ 
   RETURN 
   ============================================================ */ 
 
SELECT 
    @MicroID AS MicroID, 
    @Part AS Part, 
    @NO_page AS NO_page;
