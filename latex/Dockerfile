FROM debian:stable-slim
MAINTAINER Aris Tzermias <zacharias.tzermias@gmail.com>

RUN mkdir -p /latex && \
    chown nobody:nogroup /latex && \
    apt-get update && \
    apt-get install -y texlive-latex-base texlive-latex-extra wget make unzip && \
    apt-get clean all

USER   	nobody
VOLUME	[ "/latex" ]
WORKDIR "/latex"
