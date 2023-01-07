FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=School21/OU=Wave8/CN=bcaffere"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 443

COPY index.html /var/www/html



CMD ["nginx", "-g", "daemon off;"]