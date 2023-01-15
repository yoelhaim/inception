FROM debian:buster

RUN apt update -y
RUN apt install wget -y && apt install php php-mysql  -y

COPY ./tools/script.sh /

RUN chmod 777 ./script.sh

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php 
RUN chown -R www-data:www-data /var/www/html/adminer.php 
RUN chmod 755 /var/www/html/adminer.php


RUN cd /var/www/html

RUN rm -rf index.html

CMD [ "./script.sh" ]