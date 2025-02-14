FROM debian:bullseye

# Install PHP-FPM and extensions
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create necessary directories
RUN mkdir -p /var/www/html /run/php

# Download Adminer
RUN wget -O /var/www/html/adminer.php \
    https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

# Configure PHP-FPM to listen on port 9000
RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

# Start PHP-FPM
CMD ["php-fpm7.4", "-F"]

#todo faire uen conf