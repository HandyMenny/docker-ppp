FROM debian:stable-slim
MAINTAINER Aris Tzermias <zacharias.tzermias@gmail.com>

RUN apt-get update && \
    apt-get install -y ppp iproute2 && \
    apt-get clean all && \
    ln -sf /dev/null /dev/log

ENTRYPOINT [ "pppd", "nodetach" ]

