#!/bin/bash

# auto restart npm-run-start, for fangyuan-web

cd ${HOME}/fangyuan/local/fangyuan-web-new
git stash && git pull && git stash pop
cnpm i
npm run build
echo "npm run build is end"

