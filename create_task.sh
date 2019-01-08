# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
source $script_path/arn.conf

$script_path/init_table_mapping.sh
$script_path/init_task_setting.sh

oldIFS=$IFS 
IFS=,

for task_id in $tasks
do
echo ------------------------------------------------------------------------------
echo creat task $task_id

if [ "${task_id:0:3}" = "cdc"  ]; then
  migration_type=cdc
else
  migration_type=full-load
fi

aws dms create-replication-task \
--replication-task-identifier $task_id \
--source-endpoint-arn $source_endpoint_arn \
--target-endpoint-arn $target_endpoint_arn \
--replication-instance-arn $rep_instance_arn \
--migration-type $migration_type \
--table-mappings file://json/${task_id}_table.json \
--replication-task-settings file://json/${task_id}_task.json 
done
IFS=$oldIFS

