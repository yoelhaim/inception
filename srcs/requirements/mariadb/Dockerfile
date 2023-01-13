FROM debian:buster

RUN apt-get update -y && apt-get install mariadb-server -y
COPY config.sh /

CMD ["./config.sh"]