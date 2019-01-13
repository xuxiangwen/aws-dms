# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/../../dms.conf

db=${1:-$source_default_db_name}
user=${2:-$source_db_user}
password=${3:-$source_db_password}  
server=${4:-$source_db_server}

echo mysql  -h 127.0.0.1 -f -u $user -p$password  -P 13306 $db
mysql  -h 127.0.0.1 -f -u $user -p$password  -P 13306 $db 

