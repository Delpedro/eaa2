#!/bin/bash

user=$1

useradd $user 2>/dev/null

# check the value
# of the previous command

if [ ! $? -eq 0 ]

then
  echo "User already exists $user"
else
  echo "User $user was added successfully"
fi
