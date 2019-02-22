#!/bin/bash

file=password
b=1
if [ -e $file$b.txt ]
then
	a=1
	while [ -e $file$a.txt ]
	do
		a=`expr $a + 1`
	done
	file=$file$a
else
	LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 12 | xargs > $file$b.txt
	exit 0
fi
LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 12 | xargs > $file.txt
