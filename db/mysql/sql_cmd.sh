# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/tpch.conf

db=${1:-tpch_1g}
user=${2:-$db_user}
password=${3:-$db_password}  
server=${4:-$db_server}

echo $sql
mysql  -h $server -f -u $user -p$password  -P $db_port $db 

