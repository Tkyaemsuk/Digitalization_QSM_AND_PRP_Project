/*
Application: QSM Microbiological Analysis System
Query name: Login_API
File: Login_API.sql
Query ID: query_datasource_plus_0506fb2c937c4682933d3acce4fc69b0_e9ab5e578b8e460ba369524a0a58f1b3
Source: Budibase latest edited app export, 2026-10-12
Bindings: userac, psw
Documentation: README.md
SQL body below is preserved from the app export.
Git commit is separate from SQL transaction COMMIT.
*/

SELECT * FROM [tb_app1_login] WHERE [user] = {{userac}} AND [password] = {{psw}}