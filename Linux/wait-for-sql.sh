#!/bin/bash
# wait-for-sql.sh

set -e

host="$1"
shift
password="$1"

until sqlcmd -S "$host" -U sa -P "$password" -Q "SELECT 1"; do
  >&2 echo "SQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd

