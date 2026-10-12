/*
Application: QSM Microbiological Analysis System
Query name: Product_Remark
File: Product_Remark.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_4c921ec51c324a3e9ca7bcdfb676dbd9
Source: Budibase latest edited app export, 2026-10-12
Bindings: tables, remark, pH, atp, no, samp
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

DECLARE @sql NVARCHAR(MAX);

SET @sql = '
UPDATE ' + QUOTENAME('{{tables}}') + '
SET
    remark = @remark,
    NewpH = @pH,
    NewATP = @atp
WHERE no = @no
  AND sampID = @samp';

EXEC sp_executesql
    @sql,
    N'@remark NVARCHAR(MAX),
      @pH NVARCHAR(50),
      @atp NVARCHAR(50),
      @no NVARCHAR(50),
      @samp NVARCHAR(255)',
    @remark = {{remark}},
    @pH = {{pH}},
    @atp = {{atp}},
    @no = {{no}},
    @samp = {{samp}};