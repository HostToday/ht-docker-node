FROM debian

# Install prerequirements or NVM
RUN apt-get update \
    && apt-get install -y \
        curl \
        build-essential \
        python

# Install NVM with node
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | NVM_DIR="/nvm" bash \
    && bash -c "source /nvm/nvm.sh \
    && nvm install 4.3.1 \
    && nvm alias default v4.3.1"

ADD .bashrc /.bashrc

ENV BASH_ENV /.bashrc

RUN ln -snf /bin/bash /bin/sh