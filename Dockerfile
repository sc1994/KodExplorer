FROM daocloud.io/php:5.6-apache
RUN apt-get install php5-gd
COPY . /var/www/html/
RUN chmod -R 777 /var/www/html/
