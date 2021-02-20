FROM	alpine:3.12
EXPOSE	80 443 22

RUN		apk update
RUN 	apk add --no-cache nginx \
				openssl \
				openssh

# ssh 설정
# https://zetawiki.com/wiki/SSH_%EC%A0%91%EC%86%8D_%EA%B0%80%EB%8A%A5%ED%95%9C_%EC%95%8C%ED%8C%8C%EC%9D%B8_%EB%8F%84%EC%BB%A4_%EC%9D%B4%EB%AF%B8%EC%A7%80_%EB%B9%8C%EB%93%9C				
RUN sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' -i /etc/ssh/sshd_config
RUN echo 'root:1' | chpasswd
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
RUN mkdir -p /var/run/sshd

# ssl설정(=https 설정)
# 관련 실행명령어는 ssl-setting.sh 에서 실행 되는 것으로 한다.

# nginx 사용자, 그룹 `www`만들기
RUN	mkdir -p /run/nginx
RUN adduser -D -g 'www' www
# html 대문용 디렉토리 만들기
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
# 설정파일 복사
COPY	./default.conf /etc/nginx/conf.d/default.conf
COPY	index.html /www/index.html

COPY	prevent_exit.sh /prevent_exit.sh
COPY	ssl-setting.sh /ssl-setting.sh
# CMD		/usr/sbin/nginx 둘다 안되네
# ENTRYPOINT		/usr/sbin/nginx 둘다 안되네

CMD		/ssl-setting.sh; /prevent_exit.sh
# 실행파일 두개 실행시키려면 다음과 같이 넘겨줘야한다.

# ENTRYPOINT와 CMD의 조합으로는 두개의 실행파일 중 에서 뒤에 있는 실행파일을 인자로 인식해서 하나의 실행파일만 실행된다.
