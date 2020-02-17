FROM webdevops/php-apache:7.2
RUN apt-get update && apt-get upgrade -y && apt-get install -y git libpng-dev
COPY ./drupal-8.8.2/ /app
WORKDIR /app/
# RUN cp ./sites/default/default.settings.php ./sites/default/settings.php
# RUN chmod 777 ./sites/default/settings.php
# RUN mkdir ./sites/default/files
# RUN chmod 777 ./sites/default/files
