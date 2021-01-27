#!/bin/bash
docker pull wordpress
docker pull phpmyadmin
docker pull mariadb/server

docker run  --restart=always --name apps -d -e PMA_HOST=ip_host -p 80:80 -p 443:443 -p 22:22 phpmyadmin
docker run  --restart=always --name wordpress -e WORDPRESS_DB_HOST=ip_host:3306 -p 8100:80 -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD=password -d wordpress
docker run --name application -d --link database-server:db -p 8081:80 phpmyadmin/phpmyadmin
docker run --name --restart=always -d -e --link application-server:db --p 80:80 -p 443:443 -p 22:22 phpmyadmin/phpmyadmin
docker run  --restart=always --name database-server -d -e MARIADB_ROOT_PASSWORD=passwd -p 3306:3306 -p 26:22 mariadb/server

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

$ sudo systemctl daemon-reload

$ sudo systemctl show --property Environment docker
Environment=HTTP_PROXY=http://proxy.example.com:80/

$ sudo systemctl restart docker



