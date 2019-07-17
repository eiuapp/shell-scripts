#!/bin/bash


while read line
do
    echo "File:${line}"
    dir="`echo "$line" | awk '{print $1}'`"
    weight="`echo "$line" | awk '{print $2}'`"
    echo "dir is : $dir, weight is : $weight"
    fileName="../content/$dir/_index.en.md"

    echo "---" > $fileName
    echo "date: 2019-06-27T15:15:15+08:00" >> $fileName
    echo "title: \"$dir\"" >> $fileName
    echo "weight: $weight" >> $fileName
    echo "keywords: " >> $fileName
    echo "description: \"$dir\"" >> $fileName
    echo "---" >> $fileName

done < kv.txt
