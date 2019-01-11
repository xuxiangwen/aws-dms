cat<< EOF > dms.conf 
export rep_instance_class=dms.c4.large
export rep_instance_id=wechat-pro
export source_endpoint_id=wechat-mysql
export target_endpoint_id=wechat-redshift
export allocated_storage=1000
export vpc_security_group_ids=sg-0f34e25faac8a0d22
export avail_zone=cn-north-1a
export rep_sg_id=default-vpc-8ca939e8
export tasks=full-customer-service-prod-messages-history,full-asc-weixin-mp-menu-click-his

export source_db_type=mysql
export source_db_server=csswechat.czwiaavvhjmc.rds.cn-north-1.amazonaws.com.cn
export source_db_port=3306
export source_db_user=analysis
export source_db_password=abe9e1-f74U7=a10e8Tdb+f90
export source_db_extra=""

export target_db_type=redshift
export target_db_server=css-wechat-analysis.cuvboirbr2tr.cn-north-1.redshift.amazonaws.com.cn
export target_db_name=csdw
export target_db_port=5439
export target_db_user=tpch
export target_db_password=Zeus000!
export target_db_extra="acceptanydate=true;truncateColumns=true"

# only for onging replication
export target_BatchApplyTimeoutMin=1200
export target_BatchApplyTimeoutMax=7200
# cdc_start_position=2018-03-08T12:12:12
export cdc_start_position=2019-01-10T10:39:41

# only for dev
export source_db_admin_user=master
export source_db_admin_password=Zeus000!
export source_default_db_name=customer_service_prod

export target_db_admin_user=master
export target_db_admin_password=Zeus000!
export target_default_db_name=grid
EOF
