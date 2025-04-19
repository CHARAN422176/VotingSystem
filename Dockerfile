# Use the official PHP image with Apache
FROM php:7.4-apache

# Enable the Apache mod_rewrite module
RUN a2enmod rewrite

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your project files into the container
COPY . .

# Expose port 80 (Apache default port)
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
