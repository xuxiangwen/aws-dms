# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
source $script_path/arn.conf

echo -------------------------------------------------------
echo test source endpint
aws dms test-connection --replication-instance-arn $rep_instance_arn --endpoint-arn $source_endpoint_arn
echo -------------------------------------------------------
echo test target endpoint
aws dms test-connection --replication-instance-arn $rep_instance_arn --endpoint-arn $target_endpoint_arn


for i in 1 2 3 4 5
do
  sleep 10
  echo -------------------------------------------------------
  echo show test result
  aws dms describe-connections --filter "Name=endpoint-arn,Values=$source_endpoint_arn,$target_endpoint_arn"
done
