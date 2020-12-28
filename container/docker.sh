#!/bin/bash
docker pull wordpress
docker pull phpmyadmin/phpmyadmin
docker run  --restart=always --name phpmyadmin -d -e PMA_HOST=ip_host -p 8080:80 phpmyadmin/phpmyadmin
docker run  --restart=always --name wordpress -e WORDPRESS_DB_HOST=ip_host:3306 -p 8100:80 -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD=password -d wordpress
docker ps 



Proxy

mkdir /etc/systemd/system/docker.service.d
[Service]
Environment="HTTP_PROXY=http://proxy.example.com:80/"
Environment="NO_PROXY=localhost,127.0.0.0/8,docker-registry.somecorporation.com"

$ sudo systemctl daemon-reload

$ sudo systemctl show --property Environment docker
Environment=HTTP_PROXY=http://proxy.example.com:80/

$ sudo systemctl restart docker



