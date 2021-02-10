#!/bin/bash
docker pull wordpress
docker pull phpmyadmin
docker pull mariadb/server

docker run  --restart=always --name wordpress -e WORDPRESS_DB_HOST=ip_host:3306 -p 8100:80 -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD=password -d wordpress
docker run --name --restart=always -d --link application-server:database --p 80:80 -p 443:443 -p 22:22 phpmyadmin/phpmyadmin
docker run  --restart=always --name database-server -d -e MARIADB_ROOT_PASSWORD=passwd -p 3306:3306 -p 26:22 -v /var/lib/mysql:/var/lib/mysql mariadb/server

docker run -d --name meucontainer -v /var/app imagem

sudo docker run -d --restart=always --name application-server -e TZ="America/Bahia" -v /var/www/html:/var/www/html -p 80:80 -p 22:22 -p 443:443 ubuntu/apache2

Current default time zone: 'Etc/UTC'
Local time is now:      Wed Feb 10 15:59:13 UTC 2021.
Universal Time is now:  Wed Feb 10 15:59:13 UTC 2021.
Run 'dpkg-reconfigure tzdata' if you wish to change it.


docker ps 

adduser usuario
passwd usuario
usermod -aG sudo usuario

sudo docker exec -i -t apps /bin/bash

$ docker stop container01
$ docker commit container01 image01
$ docker rm container01
$ docker run -d -P --name container01 image01

sudo systemctl daemon-reload
sudo systemctl restart docker

iptables -t nat -L -n

Proxy

mkdir /etc/systemd/system/docker.service.d
[Service]
Environment="HTTP_PROXY=http://proxy.example.com:80/"
Environment="NO_PROXY=localhost,127.0.0.0/8,docker-registry.somecorporation.com"

apt update
<pre>Current default time zone: &apos;Etc/UTC&apos;
Local time is now:      Fri Jan 29 13:51:46 UTC 2021.
Universal Time is now:  Fri Jan 29 13:51:46 UTC 2021.
Run &apos;dpkg-reconfigure tzdata&apos; if you wish to change it.
</pre>

$ sudo systemctl daemon-reload

$ sudo systemctl show --property Environment docker
Environment=HTTP_PROXY=http://proxy.example.com:80/

$ sudo systemctl restart docker



