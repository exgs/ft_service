#!/bin/sh
echo “Prevent exit container”
nginx -g 'daemon off;' # ssh에서 대기 상태로 존재
/bin/sh # ^\ 로 중지 시켜도 container shell에 존재하도록 하기위해서! 



# nginx #nginx 시작
# nginx -s quit #nginx 종료