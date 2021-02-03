```sh
wget https://github.com/glpi-project/glpi/releases/download/9.5.3/glpi-9.5.3.tgz
sudo tar xvf ~/glpi-9.5.3.tgz
mv ~/glpi/ /var/www/html/
chown -R www-data:www-data glpi/
apt install php-cas php-intl php-apcu  php-xmlrpc php-ldap
service apache2 restart
rm -rf install.php
```
