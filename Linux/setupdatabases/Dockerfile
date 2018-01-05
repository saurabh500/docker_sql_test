FROM microsoft/mssql-tools
WORKDIR /var/opt/scripts
ADD restore.sql .
ENV MSSQLTOOLS_ROOT /opt/mssql-tools
ENV PATH "$MSSQLTOOLS_ROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

CMD sqlcmd -S sausing-ubuntu16,1403 -U sa -P MyPass_234 -i restore.sql
