#!/bin/bash

count1=`ps -ef | grep $1 | wc -l`

if [ "$count1" -gt 2 ];
then 
echo `date` "yeeee haaa" $count1 >> /home/eaauser/log.txt

fi
