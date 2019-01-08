# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf

# Source
echo -------------------------------------------------------
echo create source endpoint
aws dms create-endpoint \
--endpoint-identifier $source_endpoint_id \
--endpoint-type source \
--engine-name $source_db_type \
--username $source_db_user \
--password $source_db_password \
--server-name $source_db_server \
--port $source_db_port

# Target
echo -------------------------------------------------------
echo create target endpoint
aws dms create-endpoint \
--endpoint-identifier $target_endpoint_id \
--endpoint-type target \
--engine-name $target_db_type \
--username $target_db_user \
--password $target_db_password \
--server-name $target_db_server \
--port $target_db_port \
--database-name $target_db_name \
--extra-connection-attributes $target_db_extra

sleep 1

$script_path/test_endpoint.sh
