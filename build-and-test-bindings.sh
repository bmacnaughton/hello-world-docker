#!/bin/sh -l

cd "$GITHUB_WORKSPACE" || exit 1
git clone --depth=1 https://github.com/appoptics/appoptics-bindings-node aob
cd aob || exit 1

# make sure production install works
npm install --production --unsafe-perm

# look around
ls -l
pwd

# test
npm install -g mocha
npm test

# again
ls -l
pwd
