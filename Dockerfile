# Use the official PHP image with Apache
FROM php:7.4-apache

# Copy application files to the Apache server
COPY . /var/www/html/

# Install any required PHP extensions
RUN docker-php-ext-install mysqli