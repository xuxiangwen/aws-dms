# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../../dms.conf

db=${1:-$target_default_db_name}
user=${2:-$target_db_user}
password=${3:-$target_db_password}  
server=${4:-$target_db_server}

echo PGPASSWORD=$password psql -h $server -U $user -d $db  -p $target_db_port 
PGPASSWORD=$password psql -h $server -U $user -d $db  -p $target_db_port 
