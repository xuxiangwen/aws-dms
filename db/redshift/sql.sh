# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/tpch.conf

sql=${1}
db=${2}
user=${3:-$db_user}
password=${4:-$db_password}  
server=${5:-$db_server}

#echo PGPASSWORD=$password psql -h $server -U $user -d $db  -p $db_port -c "..."
echo $sql
PGPASSWORD=$password psql -h $server -U $user -d $db  -p $db_port -c "$sql"
