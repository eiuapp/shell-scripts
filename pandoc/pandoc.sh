#!/bin/bash

for file in `ls *.md`  
do   
echo ${file};
pandoc -f markdown -t org -o ${file%.*}.org ${file}
done
