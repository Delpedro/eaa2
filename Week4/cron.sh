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


#crontab -e
#insert (i)
#45 20 * * * /home/eaauser/eaa/Week4/./cron.sh
#esc
#:wq

#min (0-59)
#hr (0-23)
#dayofmonth(1-31)
#month(1-12)
#dayofweek(0-6) - 0 to 6 are Sunday to Sathurday, or use names: 7 is Sunday, that same as 0

#@yearly 	Run once a year at midnight of January 1 	0 0 1 1 *
#@monthly 	Run 1ce a mth @ midnight of the 1st day of the mth 0 0 1 * *
#@weekly 	Run once a week at midnight on Sunday morning 	0 0 * * 0
#@daily 	Run once a day at midnight 	0 0 * * *
#@hourly 	Run once an hour at the beginning of the hour 	0 * * * *
#@reboot 	Run at startup 	@reboot



