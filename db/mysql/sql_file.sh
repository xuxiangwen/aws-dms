# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/tpch.conf

sql=${1}
db=${2}
user=${3:-$db_user}
password=${4:-$db_password}  
server=${5:-$db_server}

echo mysql  -h $server -f -u $user -p$password  -P $db_port $db \< $sql
mysql  -h $server -f -u $user -p$password  -P $db_port $db < $sql

