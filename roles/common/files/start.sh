#!/bin/bash

rabbit_num=`ps aux|grep -v grep |grep   rabbitmq|wc -l`
rabbit_proc=`ps aux|grep -v grep |grep   rabbitmq|awk  '{print $2}'`

if [ "$rabbit_num" -eq  1 ]
then
    echo "服务正在运行"
    #kill -9 $rabbit_proc
    #sleep 6
    #rabbitmq-server -detached &>/dev/null
    exit
else
    echo "服务没在运行"
    echo "启动服务"
    rabbitmq-server -detached &>/dev/null
    exit
fi
