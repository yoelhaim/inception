FROM debian:buster

RUN apt-get update -y 
RUN apt-get install mariadb-server -y

RUN sed -i '28s/127.0.0.1/0.0.0.0/'  /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/config.sh /
# COPY mysql.sql /
# RUN service mysql start 
# && mysql -u root < ./mysql.sql
ENTRYPOINT [ "/config.sh" ]
CMD [ "mysqld_safe" ]