FROM debian:buster

RUN apt-get update -y && apt-get install curl -y && apt-get install php php-fpm php-mysql -y
COPY tools.sh /

CMD ["tools.sh"]