RESTORE DATABASE AdventureWorks2017 FROM DISK = "C:\AdventureWorks2017.bak" 
WITH MOVE "AdventureWorks2017" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorks2017.mdf", 
MOVE "AdventureWorks2017_log" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AdventureWorks2017_log.ldf"


RESTORE DATABASE Northwind FROM DISK = "C:\Northwind.bak" 
WITH MOVE "Northwind" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwnd.mdf", 
MOVE "Northwind_log" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwnd.ldf"


RESTORE DATABASE pubs FROM DISK = "C:\pubs.bak" 
WITH MOVE "pubs" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\pubs.mdf", 
MOVE "pubs_log" TO "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\pubs_log.ldf"


