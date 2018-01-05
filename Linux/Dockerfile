FROM microsoft/mssql-server-linux:latest

ENV MSSQL_PID Developer

ENV MSSQLTOOLS_ROOT /opt/mssql-tools
ENV PATH "$MSSQLTOOLS_ROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"


ENV adventureWorks2017Download "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak"
ENV northwindDownload "https://github.com/saurabh500/docker_sql_test/releases/download/2017/Northwind.bak"
ENV pubsDownload "https://github.com/saurabh500/docker_sql_test/releases/download/2017/pubs.bak"

WORKDIR /var/opt/mssql/backup

RUN wget $adventureWorks2017Download && wget $northwindDownload && wget $pubsDownload

CMD /opt/mssql/bin/sqlservr

