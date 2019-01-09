CREATE DATABASE customer_service_prod;
CREATE DATABASE asc_weixin_mp;

CREATE USER 'tpch_rep'@'%' IDENTIFIED BY 'Zeus000!';

-- GRANT ALL ON customer_service_prod.* to 'tpch_rep'@'%';
-- GRANT ALL ON asc_weixin_mp.* to 'tpch_rep'@'%';
GRANT SELECT ON *.* to 'tpch_rep'@'%';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'tpch_rep'@'%';

show databases;
show grants for 'tpch_rep'@'%';
