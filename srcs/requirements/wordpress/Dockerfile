FROM debian:buster

RUN apt update -y 
RUN apt install php-fpm php-mysql -y
RUN apt install curl -y

COPY ./config/tools.sh /
COPY ./config/wp-config.php /



RUN chmod 777 /tools.sh
RUN chmod 777 /wp-config.php

CMD ["/tools.sh"]