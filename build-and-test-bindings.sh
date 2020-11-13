#!/bin/sh -l

cd /root || exit 1
git clone --depth=1 https://github.com/appoptics/appoptics-bindings-node aob
cd aob || exit 1

# make sure production install works
npm install --production --unsafe-perm

# look around
pwd
ls -l

# test
npm install -g mocha
npm test
