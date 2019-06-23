FROM php:apache
RUN apt-get update && apt-get upgrade -y && apt-get install -y git libpng-dev
RUN docker-php-ext-install gd
COPY . /var/www/html/
COPY ./drupal-8.7.3/ /var/www/html
WORKDIR /var/www/html/
RUN cp ./sites/default/default.settings.php ./sites/default/settings.php
RUN chmod 777 ./sites/default/settings.php
RUN mkdir ./sites/default/files
RUN chmod 777 ./sites/default/files
