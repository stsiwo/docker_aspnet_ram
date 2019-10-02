#!/bin/sh
# wait-for-mysql.sh

set -e
run_cmd="dotnet run TestSwarm.csproj"

until dotnet ef database update; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $run_cmd
