FROM alpine:latest

RUN apk add privoxy && apk add tor && echo "forward-socks5 / 127.0.0.1:9050 ." > /etc/privoxy/config && echo "listen-address  0.0.0.0:8118" >> /etc/privoxy/config && sed  -i '/^tor/s,/sbin/nologin,/bin/sh,g' /etc/passwd

COPY start.sh /tmp/start.sh
RUN chmod +x  /tmp/start.sh

CMD [ "/tmp/start.sh" ]
