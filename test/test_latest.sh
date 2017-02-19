#!/bin/sh

# test availability of node and npm
npm -v
node -v

# test yarn
yarn global add npmts
npmts -v
