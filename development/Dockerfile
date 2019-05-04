# vim:set ft=dockerfile:

FROM ubuntu:bionic
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
  clang-6.0 \
  clang-format-6.0 \
  clang-tidy-6.0 \
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
  libmariadbclient-dev \
  libmariadbclient-dev-compat \
  libncurses5-dev \
  libreadline-dev \
  libsdl2-dev \
  libssl1.0-dev \
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
  " \
  && apt-get update && apt-get install -y $developmentDependencies --no-install-recommends \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# CMake
ENV CMAKE_VERSION 3.14
ENV CMAKE_FILENAME cmake-3.14.3-Linux-x86_64.tar.gz
ENV CMAKE_SHA256 29faa62fb3a0b6323caa3d9557e1a5f1205614c0d4c5c2a9917f16a74f7eff68

RUN set -xe \
  && curl -fSL "https://cmake.org/files/v$CMAKE_VERSION/$CMAKE_FILENAME" -o "$CMAKE_FILENAME" \
  && echo "$CMAKE_SHA256 *$CMAKE_FILENAME" | sha256sum -c - \
  && mkdir -p /usr/local \
  && tar -xf "$CMAKE_FILENAME" -C /usr/local --strip-components=1 \
  && rm "$CMAKE_FILENAME"

# PVS Studio
ENV PVS_STUDIO_VERSION 7.02.31917.1198
ENV PVS_STUDIO_SRC_URL http://files.viva64.com/pvs-studio-7.02.31917.1198-amd64.deb
ENV PVS_STUDIO_SRC_SHA256 e594be1e9d38625f03d93ba90fcdda0076a7133a7e18cd47348f9c4c537881a1

RUN set -xe \
  && apt-get update \
  && curl -fSL "${PVS_STUDIO_SRC_URL}" -o "$HOME/pvs-studio-${PVS_STUDIO_VERSION}-amd64.deb" \
  && echo "${PVS_STUDIO_SRC_SHA256}  $HOME/pvs-studio-${PVS_STUDIO_VERSION}-amd64.deb" | shasum -a 256 -c - \
  && apt-get install -y --no-install-recommends "$HOME/pvs-studio-${PVS_STUDIO_VERSION}-amd64.deb" \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
  && rm -f "$HOME/pvs-studio-${PVS_STUDIO_VERSION}-amd64.deb"
