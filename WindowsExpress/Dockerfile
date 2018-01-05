FROM microsoft/mssql-server-windows-express

ENV adventureWorks2017Download "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak"
ENV northwindDownload "https://github.com/saurabh500/docker_sql_test/releases/download/2017/Northwind.bak"
ENV pubsDownload "https://github.com/saurabh500/docker_sql_test/releases/download/2017/pubs.bak"

ADD restore.sql .

RUN Invoke-WebRequest -Uri $env:adventureWorks2017Download -OutFile AdventureWorks2017.bak; \
    Invoke-WebRequest -Uri $env:northwindDownload          -OutFile Northwind.bak; \
    Invoke-WebRequest -Uri $env:pubsDownload               -OutFile pubs.bak; 

CMD .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs \"$env:attach_dbs\" -Verbose
RUN sqlcmd -S localhost -i restore.sql
