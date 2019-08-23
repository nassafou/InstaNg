FROM ubuntu:latest
MAINTAINER youssouf
RUN apt-get update \
&& apt-get install -y vim git \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
