#!/bin/bash

useradd -m -p $(openssl passwd -1 $FTP_PASS) $FTP_USER
usermod -aG www-data $FTP_USER

chown -R $FTP_USER:www-data /var/www/html
chmod -R 775 /var/www/html

exec "$@"