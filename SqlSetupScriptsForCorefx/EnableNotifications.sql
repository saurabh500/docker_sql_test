ALTER DATABASE Northwind SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
USE Northwind
EXEC sp_changedbowner 'sa' 
GO