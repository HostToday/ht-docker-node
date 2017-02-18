FROM ubuntu:latest

# important environment variables 
ENV NODE_VERSION_LTS="6.9.1" NODE_VERSION_STABLE="7.1.0" NVM_DIR="/usr/local/nvm"

# Set debconf to run non-interactively and install packages
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get upgrade --no-install-recommends -y \
    && apt-get install -y -q --no-install-recommends \
        software-properties-common \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        ssh \
        openssl \
        python \
        rsync \
        yarn \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash \
    && bash -c "source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION_STABLE \
    && nvm alias default $NODE_VERSION_STABLE \
    && nvm use default \
    && npm install -g npm"

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION_STABLE/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION_STABLE/bin:$PATH
