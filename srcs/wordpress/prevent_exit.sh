#!/bin/sh
echo “Prevent exit container”
php-fpm7
nginx -g 'daemon off;'
# /bin/sh
