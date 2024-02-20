USE master
go

IF Db_id('Sales_w3schools') IS NOT NULL
  DROP DATABASE Sales_w3schools;

CREATE DATABASE Sales_w3schools
go 