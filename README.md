# ht-docker-node

This image is available on DockerHub. Specify it as base image like so:

```Dockerfile
FROM hosttoday/ht-docker-node
```

## Status

## Usage
This image has nvm, node and npm in PATH.
So if you need an image with a special node version (useful for CI/CA/CD) you can do

```Dockerfile
FROM hosttoday/ht-docker-node
RUN npmci install [node_version_number] // this installs node using node and sets the default to the new node and npm versions
```

npm and node key words will now point to your selected version when you use your new image.