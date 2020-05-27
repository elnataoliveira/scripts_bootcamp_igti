#!/bin/bash
docker pull wordpress
docker pull phpmyadmin/phpmyadmin
docker run --name phpmyadmin -d -e PMA_HOST=ip_host -p 8080:80 phpmyadmin/phpmyadmin
docker run --name wordpress -e WORDPRESS_DB_HOST=ip_host:3306 -p 8100:80 -e WORDPRESS_DB_USER=user -e WORDPRESS_DB_PASSWORD=password -d wordpress
docker ps 
