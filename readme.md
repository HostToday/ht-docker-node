# @hosttoday/ht-docker-node
docker image with nodejs and shipzone.io support

## Availabililty and Links
* [npmjs.org (npm package)](https://www.npmjs.com/package/@hosttoday/ht-docker-node)
* [gitlab.com (source)](https://gitlab.com/hosttoday/ht-docker-node)
* [github.com (source mirror)](https://github.com/hosttoday/ht-docker-node)
* [docs (typedoc)](https://hosttoday.gitlab.io/ht-docker-node/)

## Status for master
[![build status](https://gitlab.com/hosttoday/ht-docker-node/badges/master/build.svg)](https://gitlab.com/hosttoday/ht-docker-node/commits/master)
[![coverage report](https://gitlab.com/hosttoday/ht-docker-node/badges/master/coverage.svg)](https://gitlab.com/hosttoday/ht-docker-node/commits/master)
[![npm downloads per month](https://img.shields.io/npm/dm/@hosttoday/ht-docker-node.svg)](https://www.npmjs.com/package/@hosttoday/ht-docker-node)
[![Known Vulnerabilities](https://snyk.io/test/npm/@hosttoday/ht-docker-node/badge.svg)](https://snyk.io/test/npm/@hosttoday/ht-docker-node)
[![TypeScript](https://img.shields.io/badge/TypeScript->=%203.x-blue.svg)](https://nodejs.org/dist/latest-v10.x/docs/api/)
[![node](https://img.shields.io/badge/node->=%2010.x.x-blue.svg)](https://nodejs.org/dist/latest-v10.x/docs/api/)
[![JavaScript Style Guide](https://img.shields.io/badge/code%20style-prettier-ff69b4.svg)](https://prettier.io/)

## Usage

The purpose of this Docker image is to provide a robust base for node apps and CI.
It comes in different flavours and all of them have node, npm, git and ssh in PATH.

The **:npmci flavour** has npmci in path and can install any required node version and update PATH accordingly:

```Dockerfile
FROM hosttoday/ht-docker-node:npmci
RUN npmci install [node_version_number] // this installs node using node and sets the default to the new node and npm versions
```

## Availability

| Registry        | Image Path                                   |
| --------------- | -------------------------------------------- |
| GitLab Registry | registry.gitlab.com/hosttoday/ht-docker-node |
| Docker Hub      | hosttoday/ht-docker-node                     |

## Flavour Overview

- **:lts** - node lts version, equals :latest
- **:stable** - node stable version
- **:npmci** - npmci preinstalled
- **:npmts** - npmci + npmts preinstalled
- **:npmpage** - npmci + npmts + npmpage preinstalled
- **:mongo** - npmci + npmts + mongo

For further information read the linked docs at the top of this README.

> MIT licensed | **&copy;** [Lossless GmbH](https://lossless.gmbh)
> | By using this npm module you agree to our [privacy policy](https://lossless.gmbH/privacy.html)

[![repo-footer](https://hosttoday.gitlab.io/assets/repo-footer.svg)](https://host.today)

For further information read the linked docs at the top of this readme.

> MIT licensed | **&copy;** [Lossless GmbH](https://lossless.gmbh)
| By using this npm module you agree to our [privacy policy](https://lossless.gmbH/privacy)

[![repo-footer](https://lossless.gitlab.io/publicrelations/repofooter.svg)](https://maintainedby.lossless.com)
