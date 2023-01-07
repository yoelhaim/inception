#!bin/bash
service mysql start 

echo "CREATE DATABASE IF NOT EXISTS docker ;" > db1.sql
echo "CREATE USER IF NOT EXISTS youmer@'%' IDENTIFIED BY 'zaza1996' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON posts.* TO 'youmer'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

/usr/bin/mysqld_safe