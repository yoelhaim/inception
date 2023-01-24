FROM debian:buster

RUN apt-get update -y 
RUN apt-get install mariadb-server -y

RUN sed -i '28s/127.0.0.1/0.0.0.0/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i '19s/#port/port/'  /etc/mysql/mariadb.conf.d/50-server.cnf


COPY ./tools/config.sh /
ENTRYPOINT [ "/config.sh" ]
CMD [ "mysqld_safe" ]