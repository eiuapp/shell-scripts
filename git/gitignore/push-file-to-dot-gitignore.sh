#!/bin/bash 
# 实现向 .gitignore 添加过滤文件
# 示例：
# 
directory=$1
judgement=$2

cd ${directory}
echo "" >> .gitignore
ls -l | grep -e ${judgement} | awk '{print $9}' >> .gitignore