FROM alpine:latest
MAINTAINER Handy Menny

RUN apk add --no-cache ppp-pppoe && \
    ln -sf /dev/null /dev/log && \
    ln -sf /etc/ppp/resolv.conf /var/run/ppp/resolv.conf && \
    echo "pppoe" > /etc/modules

ENTRYPOINT [ "pppd", "nodetach" ]

