/*
Application: QSM Microbiological Analysis System
Query name: app_logs
File: app_logs.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_f5226a10a2944b88b72df0c7f7917771
Source: Budibase latest edited app export, 2026-10-12
Bindings: app, screen, action, createdby, device, rows
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

INSERT INTO [app_activity_log] (app_name, screen_name, action_type, created_by, device_id, rows_affected) 
VALUES ('{{app}}','{{screen}}','{{action}}','{{createdby}}','{{device}}','{{rows}}');