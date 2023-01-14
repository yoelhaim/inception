FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=localhost"


COPY ./tools/nginx.conf /etc/nginx/
COPY ./tools/tools.sh /
COPY  ./tools/keys/sign.crt /
COPY  ./tools/keys/private_key.key /

EXPOSE 443

# COPY index.html /var/www/html
RUN chmod 777 /tools.sh

# ENTRYPOINT [ "/tools.sh" ]

CMD ["nginx", "-g", "daemon off;"]