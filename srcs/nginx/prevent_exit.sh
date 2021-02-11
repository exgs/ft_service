#!/bin/sh
echo “Prevent exit container”
nginx -g 'daemon off;' # 멈춤

# nginx
# /bin/sh