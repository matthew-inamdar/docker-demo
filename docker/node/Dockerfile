FROM node:latest

LABEL maintainer="Matthew Inamdar"

RUN apt-get update \
    && apt-get install -y git \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
