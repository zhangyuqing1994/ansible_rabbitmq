#!/bin/bash
user_name=`rabbitmqctl  list_users|grep -v "guest"|sed -n '2,$p' |awk '{print $1}'`
for i in `echo "$user_name"`;
do
    rabbitmqctl  delete_user $i
done

