vim /etc/apache2/sites-avaliable/glpi.conf
Alias /glpi /var/www/html/glpi
<Directory /var/www/html/glpi>
Options FollowSimlinks
AllowOverride ALL
Require all granted
</Directory>

a2ensite glpi.conf

wget https://github.com/glpi-project/glpi/releases/download/9.5.3/glpi-9.5.3.tgz
sudo tar xvf ~/glpi-9.5.3.tgz
mv ~/glpi/ /var/www/html/
chown -R www-data:www-data glpi/
apt install php-cas php-intl php-apcu  php-xmlrpc php-ldap
service apache2 restart
rm -rf install.php

error
----------------------
Acesso web ao diretório de arquivos não deveria ser permitido mas não é possível verificar automaticamente nesta instância.
Certifique-se de que o acesso à erro em arquivo de log (/glpi/files/_log/php-errors.log) está proibido; caso contrário, revise o arquivo .htaccess e a configuração do servidor web.
