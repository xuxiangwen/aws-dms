# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../../dms.conf

db=${1:-$source_default_db_name}
user=${2:-$source_db_admin_user}
password=${3:-$source_db_admin_password}  
server=${4:-$source_db_server}

echo $sql
mysql  -h $server -f -u $user -p$password  -P $source_db_port $db 

