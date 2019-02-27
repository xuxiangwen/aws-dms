# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
source $script_path/arn.conf

task_id=${1}
LOGGER_SEVERITY=${2:-LOGGER_SEVERITY_DEFAULT}

$script_path/init_table_mapping.sh
$script_path/init_task_setting.sh $LOGGER_SEVERITY

task_arn=$(aws dms describe-replication-tasks --filter "Name=replication-task-id,Values=$task_id" --query="ReplicationTasks[0].ReplicationTaskArn")
task_arn=$(sed -e 's/^"//' -e 's/"$//' <<<"$task_arn")


echo aws dms modify-replication-task \
--replication-task-arn $task_arn \
--replication-task-settings file://json/${task_id}_task.json
aws dms modify-replication-task \
--replication-task-arn $task_arn \
--table-mappings file://json/${task_id}_table.json \
--replication-task-settings file://json/${task_id}_task.json 


echo $task_id is being modified
echo ------------------------------------------------------------------------------
echo start to monitor the task status

task_count=1
while [ "$stopped_count" != "$task_count" ]
do
  ready_count=0
  echo ------------------------------------------------------------------------------
  sleep 5
  task_status=$(aws dms describe-replication-tasks --filter "Name=replication-task-id,Values=$task_id" --query="ReplicationTasks[0].Status")
  task_status=$(sed -e 's/^"//' -e 's/"$//' <<<"$task_status" )
  echo task: $task_id, status: $task_status
  if [ "$task_status" = "stopped" ]; then
    stopped_count=$(( $stopped_count + 1 ))
  fi
done

