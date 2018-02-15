FROM microsoft/mssql-tools
WORKDIR /var/opt/scripts
ADD restore.sql .
ADD EnableNotifications.sql .
ADD CreateUdtTestDb.sql .
ADD createsaschema.sql .

ENV MSSQLTOOLS_ROOT /opt/mssql-tools
ENV PATH "$MSSQLTOOLS_ROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

CMD sqlcmd -S $SQLHOST -U sa -P $SA_PASSWORD -i restore.sql -i EnableNotifications.sql -i createsaschema.sql -i CreateUdtTestDb.sql
