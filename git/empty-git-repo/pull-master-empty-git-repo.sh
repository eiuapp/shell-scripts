#!/bin/bash

for item in `cat ./empty-git-repo-directory.txt`; do
#  echo "--------------------------- ${item} -----------"
  cd ./$item
  
     echo "--------- ${item} -----------"
     commitHash=`git log | grep -e '^commit' | head -2 | tail -1 | awk '{print $2}'`
     git reset --hard $commitHash
     git pull origin master 
     cd ../
     
done
