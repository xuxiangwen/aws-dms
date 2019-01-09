# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../../dms.conf

sql=${1}
db=${2}
user=${3:-$source_db_user}
password=${4:-$source_db_password}  
server=${5:-$source_db_server}

echo mysql  -h $server -f -u $user -p$password  -P $source_db_port $db \< $sql
mysql  -h $server -f -u $user -p$password  -P $source_db_port $db < $sql

