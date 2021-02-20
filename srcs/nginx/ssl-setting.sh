#아래 명령어는 키 파일과 인증서를 모두 만듭니다. 인증서에 정보를 올바르게 삽입하기 위해 서버에 대한 몇 가지 질문을 받게됩니다.
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt << EOF
KO
Seoul
Seoul City
innovation academy
42Seoul
yunslee
yunslee@naver.com
EOF
openssl dhparam -out /etc/ssl/certs/dhparam.pem 1024
