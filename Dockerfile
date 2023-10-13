FROM php:7.4.33-apache-bullseye

RUN apt-get update
# On installe les dépendances dont a besoin server.php
RUN apt-get install --yes \
wget=1.21-1+deb11u1 \              
ffmpeg=7:4.3.6-0+deb11u1 \
unzip \
librabbitmq-dev

# On installe la librairie nous permettant de publier la vidéo et son extension permettant de la lier à Docker
RUN pecl install amqp && docker-php-ext-enable amqp

RUN docker-php-ext-install bcmath
RUN docker-php-ext-install sockets

# On copie les librairies apache afin que php puisse les utiliser
COPY . /var/www/html

# Installation et mise à jour de Composer, librairie qui permet de gérer les dépendances
RUN curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php 
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -version=2.5.6 
RUN composer update
RUN composer install