FROM daocloud.io/php:5.6-apache
RUN yum list|grep php|grep gd
RUN yum list|grep php|grep string
RUN yum install php-gd.x86_64 php-mbstring.x86_64 –y
COPY . /var/www/html/
RUN chmod -R 777 /var/www/html/
