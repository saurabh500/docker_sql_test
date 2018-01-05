RESTORE DATABASE AdventureWorks2017 FROM DISK = "C:\AdventureWorks2017.bak" 
WITH MOVE "AdventureWorks2017" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorks2017.mdf", 
MOVE "AdventureWorks2017_log" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorks2017_log.ldf"
