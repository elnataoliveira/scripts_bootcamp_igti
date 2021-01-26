#!/bin/bash
sudo su -
apt -y upgrade && update
apt clean
apt install default-mysql-server
mysql -q -e "source $(pwd)/script.sql"

mysql_upgrade --user=root --password=pass**** --force
#mysql tunner
apt insssall mysqltuner
mysqltuner

#configure my.cnf ou set in database


# InnoDB Settings
#default_storage_engine          = InnoDB
innodb_buffer_pool_size         = 4G# Use up to 70-80% of RAM
innodb_buffer_pool_instances    = 4 # Use 1 instance per 1GB of InnoDB pool size
innodb_log_file_size            = 1G
innodb_log_buffer_size          = 1G
query_cache_size                = 0
query_cache_type                = 0
query_cache_limit               = 512M         
performance_schema              = ON       

SHOW GLOBAL VARIABLES LIKE 'innodb_buffer_pool_size';
SHOW GLOBAL VARIABLES LIKE 'innodb_buffer_pool_instances';
SHOW GLOBAL VARIABLES LIKE 'innodb_log_file_size';
SHOW GLOBAL VARIABLES LIKE 'innodb_log_buffer_size';
SHOW GLOBAL VARIABLES LIKE 'query_cache_size';
SHOW GLOBAL VARIABLES LIKE 'query_cache_type';
SHOW GLOBAL VARIABLES LIKE 'query_cache_limit';
SHOW GLOBAL VARIABLES LIKE 'performance_schema';


SET GLOBAL innodb_buffer_pool_size=value;
SET GLOBAL innodb_buffer_pool_instances=value;
SET GLOBAL innodb_log_file_size=value;
SET GLOBAL query_cache_size=value;
SET GLOBAL query_cache_type=value;
SET GLOBAL query_cache_limit=value;
SET GLOBAL performance_schema=value;

references: https://www.howtoforge.com/community/threads/how-to-change-innodb_buffer_pool_size-using-mariadb.79906/
references: https://gist.github.com/fevangelou/fb72f36bbe333e059b66
refenrences: https://imasters.com.br/data/mysql-performance-tuning-sempre-configure-o-innodb-buffer-pool
references: https://github.com/major/MySQLTuner-perl






