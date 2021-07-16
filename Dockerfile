#FROM httpd
#MAINTAINER vishnutheja
#COPY . /usr/local/apache2/htdocs/
FROM php:7.0-apache

RUN apt-get update && \
    apt-get install -y php5-mysql && \
    apt-get clean

COPY . /var/www/html/