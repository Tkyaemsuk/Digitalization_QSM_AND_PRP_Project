/*
Application: QSM Microbiological
Query name: ChangePassword
File: ChangePassword.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_ac5e9790529748eb85cbe6b30a5a3ebb
Budibase function: update
Bindings: useracc, cpsw
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

DECLARE @useracc NVARCHAR(255);
DECLARE @cpsw NVARCHAR(255);
DECLARE @RowsAffected INT;

SET @useracc = {{useracc}};
SET @cpsw = {{cpsw}};

UPDATE tb_app1_login
SET [password] = @cpsw
WHERE [user] = @useracc;

SET @RowsAffected = @@ROWCOUNT;

IF @RowsAffected = 0
BEGIN
    SELECT N'ไม่พบชื่อผู้ใช้งาน' AS message, 201 AS status;
END
ELSE
BEGIN
    SELECT N'เปลี่ยนรหัสผ่านสำเร็จ' AS message, 200 AS status;
END;
