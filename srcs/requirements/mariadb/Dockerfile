FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y
COPY config.sh /
RUN service mysql start && ./config.sh


CMD ["mysqld_safe"]