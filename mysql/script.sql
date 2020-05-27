/*source pwd/script.sql*/
create user 'user'@'%';
grant all privileges on *.* to 'user'@'%';
alter user 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

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