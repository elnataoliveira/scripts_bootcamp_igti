#!/bin/bash
#sudo apt -y upgrade
#sudo apt -y update
#sudo apt clean
#sudo apt install default-mysql-server
#sudo /etc/init.d/mysql start
#mysql -u usuario -psenha -e "source base.sql"
#sudo mysql -q -e "source $(pwd)/script.sql"
sudo mysql -q -e "select user from mysql.user"



