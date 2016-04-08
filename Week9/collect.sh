#!/bin/bash


# script is called with 3 parameters
# $1 is mpstat sample frequence
# $2 is mpstat number of iterations
# $3 directory for output

outdir=$3

#if [ ! -d $outdir ]

if [ -d $outdir ]
then 
    echo "Directory $outdir already exists"
else
    echo "Directory $outdir does not exist"

mkdir $outdir 2>/dev/null

if [ $? -ne 0 ]  
then 

echo "Directory $outdir cannot be created.....check persmissions./"
echo "Exiting the script"
exit

fi

fi


# invoke mpstat
mpstat $1 $2 > $outdir/`date +%F:%T`mpstat.dat
