#!bin/bash

wget https://repo.zabbix.com/zabbix/5.2/debian/pool/main/z/zabbix-release/zabbix-release_5.2-1+debian10_all.deb
https://repo.zabbix.com/zabbix/5.3/debian/pool/main/z/zabbix-release/zabbix-release_5.3-1%2Bdebian9_all.deb
dpkg -i zabbix-release*.deb
apt update
apt install zabbix-server-mysql
apt install zabbix-frontend-php
sudo apt install zabbix-apache-conf
sudo apt install zabbix-agent

references: https://www.zabbix.com/download

https://wiki.gentoo.org/wiki/Apache/pt-br





