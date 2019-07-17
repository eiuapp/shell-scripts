#!/bin/bash

repoDir=$1
scriptDir="${HOME}/tom/shell/git/"

cd ${scriptDir}
for item in `cat ./git-status-dir.txt`; do
    echo ${item}
    # git diff site-lisp/extensions/cache-path-from-shell  | grep "Subproject commit" | head -1 | awk '{print $3}'
    cd ${repoDir}
    gitCommitHash=`git diff ${item} | grep "Subproject commit" | head -1 | awk '{print $3}' `
    cd ${repoDir}/${item}
    git reset --hard ${gitCommitHash}
done

