# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../../dms.conf

sql=${1}
db=${2}
user=${3:-$target_db_user}
password=${4:-$target_db_password}  
server=${5:-$target_db_server}

#echo PGPASSWORD=$password psql -h $server -U $user -d $db  -p $target_db_port -c "..."
echo $sql
PGPASSWORD=$password psql -h $server -U $user -d $db  -p $target_db_port -c "$sql"
