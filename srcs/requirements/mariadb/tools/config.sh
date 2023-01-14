#!bin/bash

service mysql start 

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DB ;" > mysql.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> mysql.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%' ;" >> mysql.sql
echo "FLUSH PRIVILEGES;" >> mysql.sql

mysql < mysql.sql

killall mysqld

exec "$@"

