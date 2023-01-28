FROM debian:buster

RUN apt update -y 
RUN apt install php-fpm php-mysql -y
RUN apt install wget -y

COPY ./tools/tools.sh /
COPY ./tools/wp-config.php /
RUN service php7.3-fpm start 

RUN chmod 777 /tools.sh
RUN chmod 777 /wp-config.php

CMD ["/tools.sh"]