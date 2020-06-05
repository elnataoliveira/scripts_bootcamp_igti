#!/bin/bash
#su horizon
sudo mkdir /bacula
sudo mkdir -p /bacula/backup /bacula/restore
sudo chmod 771 -R /bacula 
sudo apt-get install mysql-server mysql-client
sudo service mysql start
#//mysqladmin -u root bacula
mysql -u root -p
#scripts bacula
cat /etc/group
sudo dpkg-reconfigure tzdata
sudo apt install ntpdate
sudo ntpdate -v pool.ntp.br
sudo apt install ntp
sudo /etc/init.d/ntp restart
sudo hwclock --systohc
sudo date
sudo hwclock
sudo apt-get install lsscsi
sudo apt-get install bacula-server bacula-client
sudo bacula-sd -tc /etc/bacula/bacula-sd.conf
sudo bacula-dir -tc /etc/bacula/bacula-dir.conf
sudo /etc/init.d/bacula-director restart
sudo /etc/init.d/bacula-sd restart
sudo /etc/init.d/bacula-fd restart
sudo bconsole