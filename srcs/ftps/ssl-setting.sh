#아래 명령어는 키 파일과 인증서를 모두 만듭니다. 인증서에 정보를 올바르게 삽입하기 위해 서버에 대한 몇 가지 질문을 받게됩니다.
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/ftps-selfsigned.key -out /etc/ssl/certs/ftps-selfsigned.crt << EOF
KO
Seoul
Seoul City
innovation academy
42Seoul
yunslee
yunslee@naver.com
EOF

vsftpd /etc/vsftpd/vsftpd.conf # Foreground로 실행 중 # 얘를 돌리면, 뒤에 있는 명령어들은 모두 없는 것으로 처리가 됨
/bin/sh # 없는 것처럼 동작함
# ^C 면 무조껀 컨테이너가 죽고, ^\ 를 쓰면, 그래도 prevent_exit.sh 이 실행된다.
