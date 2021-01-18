#!/bin/bash

date
echo `date +%Y%m%d%M%H%S`
backupDate=`date +%Y%m%d%H%M%S`

mysqldump -uroot -proot qor_test > mysql.111.230.153.251.qor_test.${backupDate}.sql
