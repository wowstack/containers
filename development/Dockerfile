# vim:set ft=dockerfile:

FROM ubuntu:focal
LABEL maintainer="WowStack project <support@wowstack.io>"

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe \
  && baselinePackages=" \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  " \
  && apt-get update && apt-get install -y $baselinePackages --no-install-recommends \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN set -xe \
  && clangPackages=" \
  clang \
  clang-10 \
  clang-format \
  clang-format-10 \
  clang-tidy \
  clang-tidy-10 \
  cppcheck \
  make \
  libtool \
  libc6-dev \
  " \
  && apt-get update && apt-get install -y $clangPackages --no-install-recommends \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN set -xe \
  && developmentDependencies=" \
  libbz2-dev \
  liblua5.3-dev \
  libmariadb-dev \
  libmariadb-dev-compat \
  libncurses-dev \
  libreadline-dev \
  libsdl2-dev \
  libssl-dev \
  zlib1g-dev \
  libboost-dev \
  libboost-atomic-dev \
  libboost-chrono-dev \
  libboost-date-time-dev \
  libboost-filesystem-dev \
  libboost-program-options-dev \
  libboost-regex-dev \
  libboost-serialization-dev \
  libboost-system-dev \
  libboost-thread-dev \
  libbotan-2-dev \
  " \
  && apt-get update && apt-get install -y $developmentDependencies --no-install-recommends \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# CMake
ENV CMAKE_VERSION 3.17
ENV CMAKE_FILENAME cmake-3.17.3-Linux-x86_64.tar.gz
ENV CMAKE_SHA256 da8093956f0b4ae30293c9db498da9bdeaeea4e7a2b1f2d1637ddda064d06dd0

RUN set -xe \
  && curl -fSL "https://cmake.org/files/v$CMAKE_VERSION/$CMAKE_FILENAME" -o "$CMAKE_FILENAME" \
  && echo "$CMAKE_SHA256 *$CMAKE_FILENAME" | sha256sum -c - \
  && mkdir -p /usr/local \
  && tar -xf "$CMAKE_FILENAME" -C /usr/local --strip-components=1 \
  && rm "$CMAKE_FILENAME"
