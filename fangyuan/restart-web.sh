#!/bin/bash

# auto restart npm-run-start, for fangyuan-web

cd ${HOME}/fangyuan/local/fangyuan-web
git stash && git pull && git stash pop
npm run build
echo "npm run build is end"

