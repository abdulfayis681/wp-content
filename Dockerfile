FROM wordpress:latest
# COPY . /var/www/html 
ADD ./wp-content /var/www/html/wp-content
ADD ./wp-includes /var/www/html/wp-includes
WORKDIR /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]
