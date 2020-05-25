/*source pwd/script.sql*/
create user 'ubuntu'@'%';
grant all privileges on *.* to 'ubuntu'@'%';
alter user 'ubuntu'@'%' IDENTIFIED WITH mysql_native_password BY 'ubuntu102030';