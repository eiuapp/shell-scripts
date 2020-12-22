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
echo "kill 7020 ok"
