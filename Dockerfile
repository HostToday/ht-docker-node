FROM ubuntu:xenial
LABEL author="Lossless GmbH <office@lossless.com>"

# important environment variables 
ENV NODE_VERSION_LTS="8.9.3" NODE_VERSION_STABLE="9.3.0" NVM_DIR="/usr/local/nvm"

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
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install yarn -y \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
