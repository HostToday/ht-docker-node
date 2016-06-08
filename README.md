# ht-docker-node

This image is available on DockerHub. Specify it as base image like so:

```Dockerfile
FROM hosttoday/ht-docker-node
```

## Status


## Usage
This image has node and npm in PATH.

The **** npmci flavour has npmci in path and can install any required node version and update PATH accordingly:

```Dockerfile
FROM hosttoday/ht-docker-node
RUN npmci install [node_version_number] // this installs node using node and sets the default to the new node and npm versions
```

## flavours:

* **:lts** - node lts version, equals :latest
* **:stable** - node stable version
* **:npmci** - npmci preinstalled
* **:npmts** - npmci + npmts preinstalled
* **:npmpage** - npmci + npmts + npmpage preinstalled
* **:python3** - like :latest, but with python3 as standard python version
