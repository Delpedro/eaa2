#!/bin/bash


#read one line from the user
#location = $HOME/logs

#1) READ
#2) APPEND
#3) TEST FOR THE EXISTANCE OF A DIRECTORY

# -p flag = 
# read = read from the keyboard in the new line (Waits for entire string)

echo $var

# -d is if the directory actually exists
if [ -d $HOME/logs]

then
	echo "directory exists"
else
	echo "directory does not exit, making it now....."
	mkdir $HOME/logs
fi

read -p "Tells us your thoughts" var

echo "you are thinking" $var

# no need to test that diary.txt exists
# as the >> (redirect) creates the file it it
# doesnt exist

echo `date` "$var" >> $HOME/logs/diary.txt
