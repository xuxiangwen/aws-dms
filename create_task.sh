# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
source $script_path/arn.conf

cdc_start_position_=${1:-$cdc_start_position}

$script_path/init_table_mapping.sh
$script_path/init_task_setting.sh

oldIFS=$IFS
IFS=,
task_count=0

for task_id in $tasks
do
echo ------------------------------------------------------------------------------
echo creat task $task_id
task_count=$(( $task_count + 1 ))

if [ "${task_id:0:3}" = "cdc"  ]; then
  migration_type=cdc
else
  migration_type=full-load
fi

if [ "${task_id:0:3}" = "cdc" ] && [ "$cdc_start_position_" != "" ]; then
aws dms create-replication-task \
--replication-task-identifier $task_id \
--source-endpoint-arn $source_endpoint_arn \
--target-endpoint-arn $target_endpoint_arn \
--replication-instance-arn $rep_instance_arn \
--migration-type $migration_type \
--table-mappings file://json/${task_id}_table.json \
--replication-task-settings file://json/${task_id}_task.json \
--cdc-start-position "$cdc_start_position_"
else
aws dms create-replication-task \
--replication-task-identifier $task_id \
--source-endpoint-arn $source_endpoint_arn \
--target-endpoint-arn $target_endpoint_arn \
--replication-instance-arn $rep_instance_arn \
--migration-type $migration_type \
--table-mappings file://json/${task_id}_table.json \
--replication-task-settings file://json/${task_id}_task.json
fi
done
echo $task_count tasks have been created

echo ------------------------------------------------------------------------------
echo start to monitor the task status

while [ "$ready_count" != "$task_count" ]
do
  ready_count=0
  echo ------------------------------------------------------------------------------
  sleep 5
  for task_id in $tasks
  do
    task_status=$(aws dms describe-replication-tasks --filter "Name=replication-task-id,Values=$task_id" --query="ReplicationTasks[0].Status")
    task_status=$(sed -e 's/^"//' -e 's/"$//' <<<"$task_status" )
    echo task: $task_id, status: $task_status
    if [ "$task_status" = "ready" ]; then
      ready_count=$(( $ready_count + 1 ))
    fi
  done
done

