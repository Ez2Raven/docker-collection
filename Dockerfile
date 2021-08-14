FROM ubuntu:20.04

ARG CONTAINER_TIMEZONE=Asia/Singapore

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
apt-get -y install --no-install-recommends \
tzdata \
bash \
curl \
locales \
iproute2 \
iputils-ping \
wireguard \
dnsutils \
&& rm -rf /var/lib/apt/lists/*

CMD ["/"]