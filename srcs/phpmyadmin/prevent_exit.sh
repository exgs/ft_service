#!/bin/sh
echo “Prevent exit container”
php-fpm7
nginx -g 'daemon off;'
# php -S 0.0.0.0:5000 -t /tmp/phpmyadmin/
/bin/sh