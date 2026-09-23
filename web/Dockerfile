# Imagem base: PHP 8 já com o Apache incluído
FROM php:8.2-apache

# Instala a extensão mysqli (necessária para falar com o MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html
