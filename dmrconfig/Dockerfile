ARG VERSION="1.1"
FROM debian:stable-slim AS builder
ARG VERSION

RUN apt-get update && \
    apt-get -y install make git gcc libgusb-dev libudev-dev
RUN git clone -b ${VERSION} https://github.com/sergev/dmrconfig.git && \
    cd dmrconfig && \
    make

FROM debian:stable-slim
ARG VERSION

RUN mkdir -p /dmrconfig
WORKDIR /dmrconfig
COPY --from=builder /dmrconfig/dmrconfig .
ENTRYPOINT ["./dmrconfig"]
    
