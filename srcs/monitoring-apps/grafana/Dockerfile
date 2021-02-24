FROM		alpine:3.12
EXPOSE		3000

## 미니큐브에서 도커빌드가 안되는 것들
# RUN apk add grafana
# RUN			apk add grafana --repository http://dl-3.alpinelinux.org/alpine/edge/main/ --no-cache

## 미니큐브에서 도커빌드는 되지만, 실행이 불가능한... 컨테이너를 교란시킴. 저수지의 베스임;;
# RUN		wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.4.2.linux-amd64.tar.gz
# RUN		tar -zxvf grafana-enterprise-7.4.2.linux-amd64.tar.gz
# RUN		rm grafana-enterprise-7.4.2.linux-amd64.tar.gz
# RUN		mv grafana-7.4.2/ /usr/share/grafana
RUN apk update \
		&& apk --update --no-cache add \
                grafana \
				--repository http://dl-2.alpinelinux.org/alpine/edge/community/


# COPY		datasources.yaml /usr/share/grafana/conf/provisioning/datasources/datasources.yaml
# COPY		dashboards.yaml /usr/share/grafana/conf/provisioning/datasources/dashboards.yaml
COPY		dashboards /usr/share/grafana/public/dashboards
ENTRYPOINT	[ "grafana-server", "--homepath=/usr/share/grafana"]
# grafana-sever 포그라운드

# CMD			/bin/sh
# grafana-server --homepath=/usr/share/grafana

