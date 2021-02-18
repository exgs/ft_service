#!/bin/sh
echo “Prevent exit container”
php-fpm7 -D # background에서 php-fpm7 돌림
nginx -g 'daemon off;'
/bin/sh