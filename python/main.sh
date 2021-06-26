#!/usr/bin/env bash
# 简化版本，快速查看或者重启程序。使用方式
# ./main.sh status
# ./main.sh start
# ./main.sh stop
# ./main.sh restart
# ./main.sh tail

curday=`date +%Y%m%d%H%M%S`

## start
start(){
  mv log/main_script.log log/main_script_${curday}.log
  nohup python main_script.py >> log/main_script.log 2>&1 &!
  echo " start ok "
}

## kill or stop
stop(){
  ps aux | grep main_script |  awk '{print $2}' | xargs kill -9
  echo " stop ok "
}

## restart
restart(){
  stop
  start
}

## status, select
status(){
  ps -ef | grep main_script
  echo " status(ps -ef) ok "
}

## tail
tailog(){
  tail log/main_script.log
  echo " tail log/main_script.log ok "
}

# __run__
if [ $1 == "status" ]; then
  status
elif [ $1 == "start" ]; then
  start
elif [ $1 == "stop" ]; then
  stop
elif [ $1 == "restart" ]; then
  restart
elif [ $1 == "tail" ]; then
  tailog
else
   echo "参数不正确。没有找到符合的条件的操作。"
fi
