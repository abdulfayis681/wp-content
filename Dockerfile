# FROM wordpress:latest
# # COPY . /var/www/html 
# ADD ./wp-content /var/www/html/wp-content
# ADD ./wp-includes /var/www/html/wp-includes
# WORKDIR /var/www/html
# EXPOSE 80
# CMD ["apache2-foreground"]
# Stage 1: Build Stage
FROM wordpress:latest AS builder

# Create a temporary directory to copy wp-content and wp-includes directories
WORKDIR /tmp/wp-custom

# Copy wp-content and wp-includes directories from host to container
COPY wp-content /tmp/wp-custom/wp-content
COPY wp-includes /tmp/wp-custom/wp-includes

# Stage 2: Final Stage
FROM wordpress:latest

# Copy wp-content and wp-includes directories from the builder stage
COPY --from=builder /tmp/wp-custom/wp-content /var/www/html/wp-content
COPY --from=builder /tmp/wp-custom/wp-includes /var/www/html/wp-includes
