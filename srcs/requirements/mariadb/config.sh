#!bin/bash

echo "CREATE DATABASE IF NOT EXISTS youmer ;" > db1.sql
echo "CREATE USER IF NOT EXISTS 'youmer'@'%' IDENTIFIED BY '@@@123' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON posts.* TO 'youmer'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql
