FROM	alpine:3.12
EXPOSE	5000

RUN		apk update
RUN 	apk add php \
				php-fpm php-mbstring php-json php-session php-mysqli php-session
RUN		apk add nginx

# RUN	wget -O /tmp/phpmyadmin.tar.gz https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
##  21.2.25 phpmyadmin이 새로 업데이트되면서 갑자기 phpmyadmin으로 접속이 되지않았다. 연결이 잘 되지 않는다. 이전 버전을 이용하자.
RUN wget -O /tmp/phpmyadmin.tar.gz https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xzvf /tmp/phpmyadmin.tar.gz -C /tmp
RUN rm -rf /tmp/phpmyadmin.tar.gz
RUN mv /tmp/php* /tmp/phpmyadmin
RUN mv /tmp/phpmyadmin/config.sample.inc.php /tmp/phpmyadmin/config.inc.php

# config.inc.php 파일 수정
# 여기서 주의해야하는 점은 macOS의 sed와 Linux의 sed가 명령어가 조금 다르다는 것이다.
# https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
RUN sed -i '/AllowNoPassword/ s/false/true/g' /tmp/phpmyadmin/config.inc.php
RUN sed -i '/host/ s/localhost/mysql/g' /tmp/phpmyadmin/config.inc.php
RUN sed -i '/blowfish_secret/d' /tmp/phpmyadmin/config.inc.php
RUN echo "\$cfg['TempDir'] = '/tmp';" >> /tmp/phpmyadmin/config.inc.php
RUN echo "\$cfg['blowfish_secret'] = '1q2w3e4r5t6y7u8i9o0p 1q2w3e4r5t6y7u8i9o0p 1q2w3e4r5t6y7u8i9o0p 1q2w3e4r5t6y7u8i9o0p';" >> /tmp/phpmyadmin/config.inc.php

COPY	default.conf /etc/nginx/conf.d/default.conf

COPY	prevent_exit.sh /prevent_exit.sh
RUN		mkdir -p /run/nginx
RUN		mkdir -p /tmp/phpmyadmin/tmp
# nginx로 phpmyadmin을 열려면 nginx, php-fpm7 을 실행시켜줘야함
CMD		/prevent_exit.sh

## nginx가 아닌 방법으로 port:5000 에 연결하는 방법
# CMD		php -S 0.0.0.0:5000 -t /tmp/phpmyadmin/
# /prevent_exit.sh 은php -S 0.0.0.0:5000 을 실행시키지못함
