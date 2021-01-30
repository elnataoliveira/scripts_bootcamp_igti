apt install certbot python3-certbot-apache
cp /etc/apache2/sites-avaiable/000-default.config /etc/apache2/sites-avaiable/domain.config
a2ensite domain.config
ServerName domain.local
ServerAlias www.domain.local
apache2ctl configtest
service apache2 restart
certbot --apache
