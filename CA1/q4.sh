#!/bin/bash

cd $1

file * | grep ASCII | cut -c 1-20 
