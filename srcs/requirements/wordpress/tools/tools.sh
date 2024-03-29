#!/bin/bash

#create folder 
mkdir /var/www/
mkdir /var/www/html
cd /var/www/html

#install Wordpress 
wget http://wordpress.org/latest.tar.gz 
tar -xvf latest.tar.gz
rm /var/www/html/latest.tar.gz
cp -r wordpress/* .
rm -rf wordpress

#install wp
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mv /wp-config.php /var/www/html/wp-config.php

#update info sql connect mariadb
sed -i -r "s/mysqldb/$MYSQL_DB/1"   wp-config.php
sed -i -r "s/mysqluser/$MYSQL_USER/1"  wp-config.php
sed -i -r "s/mysqlpwd/$MYSQL_PASSWORD/1"    wp-config.php

#config wordpress
wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
wp plugin update --all --allow-root

# change port in php
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir /run/php
# run 
/usr/sbin/php-fpm7.3 -F