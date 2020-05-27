#!/bin/bash
sudo apt -y upgrade
sudo apt -y update
sudo apt clean
sudo apt install default-mysql-server
vi /etc/mysql/mysql.conf.d/mysqld.cnf &
sudo /etc/init.d/mysql restart
sudo mysql -q -e "source $(pwd)/script.sql"
sudo apt install php php-mysql




