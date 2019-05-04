# vim:set ft=dockerfile:

FROM ubuntu:bionic
LABEL maintainer="WowStack project <support@wowstack.io>"

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
  && dependencies=" \
  libbz2-1.0 \
  liblua5.3-0 \
  libmariadbclient18 \
  libncurses5 \
  libreadline7 \
  libsdl2-2.0-0 \
  libssl1.0.0 \
  zlib1g \
  libboost-atomic1.62.0 \
  libboost-chrono1.62.0 \
  libboost-date-time1.62.0 \
  libboost-filesystem1.62.0 \
  libboost-program-options1.62.0 \
  libboost-regex1.62.0 \
  libboost-serialization1.62.0 \
  libboost-system1.62.0 \
  libboost-thread1.62.0 \
  " \
  && apt-get update && apt-get install -y $dependencies --no-install-recommends \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
