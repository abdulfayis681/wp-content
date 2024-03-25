FROM wordpress:latest
# COPY . /var/www/html 
COPY wp-content /var/www/html/wp-content/
COPY wp-includes /var/www/html/wp-includes/
