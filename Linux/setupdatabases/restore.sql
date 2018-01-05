RESTORE DATABASE AdventureWorks2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2017.bak" 
WITH MOVE "AdventureWorks2017" TO "/var/opt/mssql/data/AdventureWorks2017.mdf", 
MOVE "AdventureWorks2017_log" TO "/var/opt/mssql/data/AdventureWorks2017_log.ldf"


RESTORE DATABASE Northwind FROM DISK = "/var/opt/mssql/backup/Northwind.bak" 
WITH MOVE "Northwind" TO "/var/opt/mssql/data/northwnd.mdf", 
MOVE "Northwind_log" TO "/var/opt/mssql/data/northwnd.ldf"


RESTORE DATABASE pubs FROM DISK = "/var/opt/mssql/backup/pubs.bak" 
WITH MOVE "pubs" TO "/var/opt/mssql/data/pubs.mdf", 
MOVE "pubs_log" TO "/var/opt/mssql/data/pubs_log.ldf"


