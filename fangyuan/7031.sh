#!/bin/bash

# auto restart npm-run-start, for fangyuan-web

cd ${HOME}/fangyuan/local/fangyuan-web-7031
curday=`date +%Y%m%d%H%M%S`
cp -a dist/ dist.ok.${curday}
branch=`git branch -a | grep "*" | awk '{print $2}'`
git stash && git pull origin ${branch}  && git stash pop
cnpm i
npm run build
echo "npm run build is end"
cp -a ${HOME}/fangyuan/local/fangyuan-web-7031/changepassword.ok/ ${HOME}/fangyuan/local/fangyuan-web-7031/dist/changepassword/

