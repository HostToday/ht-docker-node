FROM ubuntu:xenial
LABEL author="Lossless GmbH <hello@lossless.com>"

WORKDIR /workspace
# important environment variables 
ENV NODE_VERSION_LTS="10.13.0" NODE_VERSION_STABLE="11.2.0" NVM_DIR="/usr/local/nvm"

# Set debconf to run non-interactively and install packages
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && apt-get update \
    && apt-get upgrade --no-install-recommends -y \
    && apt-get install -y -q --no-install-recommends \
        software-properties-common \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        g++ \
        gcc \
        git \
        make \
        openssl \
        python \
        rsync \
        ssh \
        wget \
    && apt-get update \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
