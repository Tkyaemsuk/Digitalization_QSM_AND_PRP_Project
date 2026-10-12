/*
Application: QSM Microbiological
Query name: Login
File: Login.sql
Source: Budibase latest edited app export
Export date: 2026-10-12
Query ID: query_datasource_plus_6a765207669f4d03ad53a31867d5f9a8_d23f0f06d2d64701a38481ec7395392e
Budibase function: read
Bindings: UserAC, psw
Documentation: README.md
Original SQL below is preserved; this header is documentation only.
*/

SELECT * FROM [tb_app1_login] WHERE [user] = {{UserAC}} and [password] = {{psw}}
