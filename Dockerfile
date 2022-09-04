FROM alpine:latest
MAINTAINER Handy Menny

RUN apk add --no-cache ppp-pppoe iptables && \
    ln -sf /dev/null /dev/log && \
    ln -sf /etc/ppp/resolv.conf /var/run/ppp/resolv.conf && \
    echo "pppoe" > /etc/modules

COPY iptables-rules /etc/iptables/rules-save

ENTRYPOINT iptables-restore /etc/iptables/rules-save \
           && pppd nodetach $PPPD_ARGS
