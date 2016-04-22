#!/bin/bash

user=$1

getent passwd $user

# error prone solution

if [ ! $? -eq 0 ]

then
  useradd $user
  echo "User $user was added successfully"
else
  
fi
