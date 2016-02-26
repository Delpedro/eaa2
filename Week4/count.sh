!/bin/bash

cd $1
file -b *| cut -c-12 | sort | uniq -c
