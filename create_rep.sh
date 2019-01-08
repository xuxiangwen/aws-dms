# !/bin/bash
script=$(readlink -f "$0")
script_path=$(dirname "$script")

source $script_path/dms.conf
aws dms create-replication-instance \
--replication-instance-identifier $rep_instance_id \
--replication-instance-class $rep_instance_class \
--allocated-storage $allocated_storage \
--vpc-security-group-ids $vpc_security_group_ids   \
--availability-zone $avail_zone \
--replication-subnet-group-identifier  $rep_sg_id \
--no-multi-az \
--engine-version  3.1.2 \
--no-auto-minor-version-upgrade \
--no-publicly-accessible


