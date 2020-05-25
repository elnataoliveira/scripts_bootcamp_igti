#!/bin/bash
docker pull wordpress
docker pull phpmyadmin/phpmyadmin

docker run --name phpmyadmin -d -e PMA_HOST=ip -p port:80 phpmyadmin/phpmyadmin
docker run --name wordpress -e WORDPRESS_DB_HOST=ip:3306 -p port:80 -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD=password -d wordpress
docker ps 
