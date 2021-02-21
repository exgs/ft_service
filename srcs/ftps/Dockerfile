FROM		alpine:3.12
# alpine:latest 에서는 apk add vsftpd에서 DNS look up error를 보임
## ERROR: https://dl-cdn.alpinelinux.org/alpine/v3.13/main: DNS lookup error
## WARNING: Ignoring https://dl-cdn.alpinelinux.org/alpine/v3.13/main: No such file or directory
## ERROR: https://dl-cdn.alpinelinux.org/alpine/v3.13/community: DNS lookup error
## WARNING: Ignoring https://dl-cdn.alpinelinux.org/alpine/v3.13/community: No such file or directory
EXPOSE		21 20000-20003
RUN			apk update
RUN			apk add vsftpd openssl


COPY		./ssl-setting.sh /ssl-setting.sh
COPY		./prevent_exit.sh /prevent_exit.sh
COPY		./vsftpd.conf /etc/vsftpd
# fpts의 사용자명과 비밀번호 설정
RUN			echo 'root:1' | chpasswd
CMD			/ssl-setting.sh ; /prevent_exit.sh
 # ';'가 없으면 ^\로 못나감 ^C 밖에 없음. 근데 그러면 무조껀 종료됨
