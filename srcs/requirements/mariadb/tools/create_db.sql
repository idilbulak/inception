CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'user';
GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

-- https://www.lifewire.com/how-to-create-users-grant-permissions-mysql-4583884
-- docker exec -it mariadb bash
-- mysql -u user -p
-- SHOW DATABASES;
-- USE wordpress;
-- SELECT * FROM wp_users;

