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




