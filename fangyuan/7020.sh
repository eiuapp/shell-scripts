#!/bin/bash

# auto restart npm-run-start, for fangyuan-server-run-start

progid=`ps -ef | grep 7020 | grep start-cluster |  awk '{print $2}'`
echo "pid is: ${pid}"
pidlen=${#progid}
echo "pidlen is: ${pidlen}"
nid=$pidlen
echo "nid is: $nid"
if [ $nid -gt 1 ]; then
    echo "do_something_1"
    kill $progid
    echo "kill is end"
else
    echo "do_other"
fi
cd ${HOME}/fangyuan/local/fangyuan-server-7020/
git stash && git pull && git stash pop
cnpm i
# npm run dev & 
npm run start & 
