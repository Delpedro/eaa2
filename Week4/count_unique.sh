#!/bin/bash


cd $1

file -b ./*| cut -c1-12 | sort | uniq -c
