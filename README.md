# ht-docker-node

This image is available on DockerHub. Specify it as base image like so:

```Dockerfile
FROM hosttoday/ht-docker-node
```

## Status

## Usage
This image has nvm, node and npm in PATH.
So if you need an image with a special node version (useful for CI/CA/CD) you can do

```sh
nvm install [node_version_number]
nvm alias default [node_version_number]
```