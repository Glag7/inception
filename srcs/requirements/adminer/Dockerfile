FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysql wget

RUN mkdir -p /var/www/html /run/php

RUN wget -O /var/www/html/adminer.php \
    https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD ["php-fpm7.4", "-F"]