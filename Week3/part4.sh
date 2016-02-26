!#/bin/bash


#read one line from the user
#location = $HOME/logs

#1) READ
#2) APPEND
#3) TEST FOR THE EXISTANCE OF A DIRECTORY

# -p flag = 
# read = 


read -p "Tells us your thoughts" var

echo $var

echo `date` "$var" >> $HOME/logs/diary.txt




