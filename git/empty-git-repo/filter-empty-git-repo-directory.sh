#!/bin/bash

for item in `cat ./directory.txt`; do
#  echo "--------------------------- ${item} -----------"
  num=`ls ./${item} -a | wc -l` 
  gitp=`ls ./${item} -a | grep .git | wc -l`
  if [[ $num -lt 4 && $gitp -ge 1 ]]; then
     
     echo "--------- ${item} -----------"
     ls ./${item} -a 
  fi
     
done
