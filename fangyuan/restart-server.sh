#!/bin/bash

# auto restart npm-run-start, for fangyuan-server-run-start

#pid=`ps -ef | grep 7012 | grep egg-scripts | grep -e '^ubuntu' | awk '{print $2}'`
progid=`ps -ef | grep  fangyuan-server-run-start | grep -e '^ubuntu' | grep egg-scripts | awk '{print $2}'`
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
cd ${HOME}/fangyuan/local/fangyuan-server-run-start
git stash && git pull && git stash pop
npm run start 
echo "npm run start is end"

