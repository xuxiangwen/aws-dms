# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
source $script_path/arn.conf

echo -------------------------------------------------------
echo test connction of source endpint
aws dms test-connection --replication-instance-arn $rep_instance_arn --endpoint-arn $source_endpoint_arn
echo -------------------------------------------------------
echo test connection of target endpoint
aws dms test-connection --replication-instance-arn $rep_instance_arn --endpoint-arn $target_endpoint_arn



echo -------------------------------------------------------
echo 'start to monitor the result of test connection'
source_connection_status=""
target_connection_status=""
while [ "$source_connection_status" != "successful" ] && [ "$target_connection_status" != "successful" ]
do
  echo -------------------------------------------------------
  sleep 5  
  source_connection_status=$(aws dms describe-connections --filter "Name=endpoint-arn,Values=$source_endpoint_arn" --query="Connections[0].Status")
  target_connection_status=$(aws dms describe-connections --filter "Name=endpoint-arn,Values=$target_endpoint_arn" --query="Connections[0].Status")
  source_connection_status=$(sed -e 's/^"//' -e 's/"$//' <<<"$source_connection_status")
  target_connection_status=$(sed -e 's/^"//' -e 's/"$//' <<<"$target_connection_status") 
  echo source: $source_endpoint_id, connection_status: $source_connection_status
  echo target: $target_endpoint_id, connection_status: $target_connection_status
done


