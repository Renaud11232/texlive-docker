FROM ubuntu:focal

MAINTAINER Renaud Gaspard, <gaspardrenaud@hotmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
  && apt install -y texlive-full \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /data

VOLUME ["/data"]
