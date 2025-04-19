# Use the official PHP image
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY . .

# Install any required PHP extensions (if needed)
RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80