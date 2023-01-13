FROM debian:buster

RUN apt update -y 
RUN apt install php-fpm php-mysql -y
RUN apt install wget -y
# RUN apt-get install nginx -y


# COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ./config/tools.sh /
COPY ./config/wp-config.php /

RUN chmod 777 /tools.sh
RUN chmod 777 /wp-config.php

CMD ["/tools.sh"]
