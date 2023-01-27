FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY ./tools/nginx.conf /etc/nginx/
COPY  ./tools/keys/sign.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY  ./tools/keys/private_key.key /etc/ssl/private/nginx-selfsigned.key

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]