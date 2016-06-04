FROM ubuntu:latest

# Those need to be updated when new node version are released 
ENV NODE_VERSION_LTS 4.4.5
ENV NODE_VERSION_STABLE 6.2.1

# Set debconf to run non-interactively
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Install base dependencies
RUN apt-get update \
    && apt-get upgrade --no-install-recommends -y \
    && apt-get install -y -q --no-install-recommends \
        software-properties-common \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        python \
        rsync \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

ENV NVM_DIR /usr/local/nvm

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash \
    && bash -c "source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION_LTS \
    && nvm alias default $NODE_VERSION_LTS \
    && nvm use default \
    && npm install -g npm"

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION_LTS/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION_LTS/bin:$PATH

RUN npm install -g npmci