FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY out /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
