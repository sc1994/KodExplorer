FROM daocloud.io/php:5.6-apache
COPY . /var/www/html/
RUN chmod -R 777 /var/www/html/
