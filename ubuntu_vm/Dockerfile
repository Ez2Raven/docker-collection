FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install bash curl \
    locales iproute2 iputils-ping wireguard dnsutils
    
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ Asia/Singapore