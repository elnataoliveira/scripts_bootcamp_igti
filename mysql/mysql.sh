#!/bin/bash
sudo su -
apt -y upgrade && update
apt clean
apt install default-mysql-server
mysql -q -e "source $(pwd)/script.sql"
apt install php php-mysql
vi /etc/mysql/mysql.conf.d/mysqld.cnf
#edite bind-address para 0.0.0.0 
/etc/init.d/mysql restart
#mysql tunner
apt insssall mysqltuner
mysqltuner

#configure my.cnf ou set in database

SHOW GLOBAL VARIABLES LIKE 'innodb_buffer_pool_size';
SHOW GLOBAL VARIABLES LIKE 'query_cache_size';
SHOW GLOBAL VARIABLES LIKE 'query_cache_type';
SHOW GLOBAL VARIABLES LIKE 'query_cache_limit';
SHOW GLOBAL VARIABLES LIKE 'performance_schema';
SHOW GLOBAL VARIABLES LIKE 'innodb_log_file_size';

SET GLOBAL innodb_buffer_pool_size=value;
SET GLOBAL query_cache_size=value;
SET GLOBAL query_cache_type=value;
SET GLOBAL query_cache_limit=value;
SET GLOBAL performance_schema=value;
SET GLOBAL innodb_log_file_size=value;





