#!/bin/bash

backups=$HOME/backups

if [ -d "$backups" ]
then
echo "exists already"
else
echo "making now...."
    mkdir $backups
fi 

tar czf week4backup.tar.gz $HOME/eaa/Week4

mv week4backup.tar.gz $HOME/backups







