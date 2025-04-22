FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install common dev tools + dependencies for VS Code server
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    wget \
    git \
    bash \
    vim \
    ca-certificates \
    locales \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Set locale (some tools require it)
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Set default shell
SHELL ["/bin/bash", "-c"]


WORKDIR /home
