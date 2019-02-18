FROM daocloud.io/library/php:5.6-apache
# Install modules
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libmcrypt-dev \
        libjpeg-dev \
        libpng-dev \
&& docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-freetype-dir=/usr/include/freetype2 \
        --with-png-dir=/usr/include \
        --with-jpeg-dir=/usr/include
WORKDIR /usr/local/bin
RUN  ./docker-php-ext-install gd

COPY . /var/www/html/
RUN sudo -c 'setenforce 0'
RUN sudo chmod -R 777 /var/www/html/
