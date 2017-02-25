# ht-docker-node

This image is available on DockerHub. Specify it as base image like so:

```Dockerfile
FROM hosttoday/ht-docker-node
```

## Status
[![build status](https://gitlab.com/hosttoday/ht-docker-node/badges/master/build.svg)](https://gitlab.com/hosttoday/ht-docker-node/commits/master)

## Usage
The purpose of this Docker image is to provide a robust base for node apps and CI.
It comes in different flavours and all of them have node, npm, git and ssh in PATH.

The **:npmci flavour** has npmci in path and can install any required node version and update PATH accordingly:

```Dockerfile
FROM hosttoday/ht-docker-node:npmci
RUN npmci install [node_version_number] // this installs node using node and sets the default to the new node and npm versions
```

## Flavour Overview:

* **:lts** - node lts version, equals :latest
* **:stable** - node stable version
* **:npmci** - npmci preinstalled
* **:npmts** - npmci + npmts preinstalled
* **:npmpage** - npmci + npmts + npmpage preinstalled
* **:mongo** - npmci + npmts + mongo
