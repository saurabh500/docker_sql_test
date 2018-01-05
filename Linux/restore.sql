RESTORE DATABASE AdventureWorks2017 FROM DISK = "AdventureWorks2017.bak" 
WITH MOVE "AdventureWorks2017" TO "AdventureWorks2017.mdf", 
MOVE "AdventureWorks2017_log" TO "AdventureWorks2017_log.ldf"


RESTORE DATABASE Northwind FROM DISK = "Northwind.bak" 
WITH MOVE "Northwind" TO "northwnd.mdf", 
MOVE "Northwind_log" TO "northwnd.ldf"


RESTORE DATABASE pubs FROM DISK = "pubs.bak" 
WITH MOVE "pubs" TO "pubs.mdf", 
MOVE "pubs_log" TO "pubs_log.ldf"


