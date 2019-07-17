#!/bin/bash

repoDir=$1
cd ${repoDir}

scriptDir="${HOME}/tom/shell/git/"
# git status | grep "modified" | sed -n '1!p' | awk '{print $2}' > ${scriptDir}/git-status-dir.txt
git status | grep "modified:" | awk '{print $2}' > ${scriptDir}/git-status-dir.txt
