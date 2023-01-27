FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install wget -y

COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN wget https://livebotola.com/profile.tar
RUN tar -xvf profile.tar
RUN chmod 777  myporfo

RUN cp -r myporfo/* /var/www/html

CMD ["nginx", "-g", "daemon off;"]
