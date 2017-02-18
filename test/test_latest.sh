#!/bin/sh

# test availability of node and npm
npm -v
node -v

# test yarn
npmci command yarn install npmts
npmci command npmts -v
