/*source pwd/script.sql*/
create user 'user'@'%';
grant all privileges on *.* to 'user'@'172.17.0.%';
/*alter user 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';*/
SET PASSWORD FOR 'user'@'%' = PASSWORD('newpass');
flush privileges;

update 'user' set 'Host' = '%' where 'user'.'host' = 'locahost';
https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-18-04-pt
restart mysql

create database teste;
use teste;

use teste;
create TABLE users (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL
);

INSERT INTO `users` (`id`, `user`, `password`) VALUES (NULL, 'user1', 'pass1');
INSERT INTO `users` (`id`, `user`, `password`) VALUES (NULL, 'user2', 'pass2');
INSERT INTO `users` (`id`, `user`, `password`) VALUES (NULL, 'user3', 'pass3');

https://lists.ubuntu.com/archives/ubuntu-users/2015-May/280738.html
https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-18-04-pt
