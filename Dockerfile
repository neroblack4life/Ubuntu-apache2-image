FROM ubuntu:18.04

RUN apt-get update

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install apache2 -y

WORKDIR var/www/html

COPY index.html index.html

CMD ["apachectl", "-D", "FOREGROUND"]