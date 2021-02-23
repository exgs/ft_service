FROM		alpine
RUN			apk add telegraf
RUN			mkdir -p /etc/telegraf
COPY		telegraf.conf /etc/telegraf
CMD			"telegraf"
