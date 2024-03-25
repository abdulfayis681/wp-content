FROM wordpress:php7.1-apache
COPY wp-content /var/www/html/wp-content
COPY wp-includes /var/www/html/wp-includes
