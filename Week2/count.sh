#!/bin/bash

cntall=`ps -ef | wc -l`
echo "The total number of processes $cntall"

cntroot=`ps -ef | grep root | wc -l`
echo "The total number of root processes $cntroot"

count=`expr $cntall - $cntroot`
echo $count

if [ "$count" -gt "$1" ];
then
	echo "oh shit ($count)" >> /home/eaauser/eaa/week2/logs/logs2.txt
fi


