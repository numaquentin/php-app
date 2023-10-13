# PHP App Example

## Requirements To Run Test
1. Composer
2. PHP7
3. PHP Sockets Extensions Installed


## Video Processing and RabbitMQ
#### Overview
The services shows a basic example of how to create a service for processing videos with RabbitMQ.

#### How To Run
1. Ensure RabbitMQ is installed and running locally
3. Run `composer install` to install required packages
4. Open up two tabs in your console
5. In one tab, run `php server.php`
6. In the other tab, run `php client.php`

## Source
<https://github.com/ProdigyView-Toolkit/Microservices-Examples-PHP>


# Commandes à effectuer : 
1. Commande pour build :
    docker compose up --build -d
2. Commande pour run :
    docker compose exec -it php bash
3. Dans le bash, lancer la commande suivante pour run le code et lancer le serveur :
    php server.php
4. Dans un navigateur, mettre l'URL suivante : 
    http://localhost:8080/client.php
5. Pour lire la vidéo, mettre l'URL suivante : 
    http://localhost:8080/video.mp4
