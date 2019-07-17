#!/bin/bash

for item in `cat dir.txt`; do
    cp -a ./temp/ $item
    echo ${item}
done
