# FROM wordpress:latest
# # COPY . /var/www/html 
# ADD ./wp-content /var/www/html/wp-content
# ADD ./wp-includes /var/www/html/wp-includes
# WORKDIR /var/www/html
# EXPOSE 80
# CMD ["apache2-foreground"]
# Stage 1: Build Stage
# Use the official WordPress image as the base image
FROM wordpress:latest

# Set working directory
WORKDIR /var/www/html

# Remove the existing wp-includes directory
RUN rm -rf wp-includes

# Copy custom wp-includes directory from host to container
COPY wp-includes /var/www/html/wp-includes

# Ensure correct permissions
RUN chown -R www-data:www-data wp-includes

# Expose port 80 to allow access to the WordPress site
EXPOSE 80
