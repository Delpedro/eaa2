#!/bin/bash


cnt=`ps -ef | grep $1 | wc -l`

if [ "$cnt" -gt "$1" ];
then
	echo "number of processes exceeded"
fi
