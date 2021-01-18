#!/bin/bash

cp -a hugo/hugo-book-template-handbook $1
cd $1
./init.sh $2
