# Stage 1: Clone Git repository
FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/WordPress/WordPress.git html

# Stage 2: Build WordPress image and copy files from cloned repository
FROM wordpress:latest
COPY --from=clone /app /var/www
COPY wp-content /var/www/html/wp-content/
COPY wp-includes /var/www/html/wp-includes/
