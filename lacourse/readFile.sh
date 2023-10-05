#!/bin/sh
#echo $(< hostnames.txt)

filename=hostnames.txt
lineno=1;

while read line ; do

#read each line 
echo "reading each line $lineno : $line"
dig $line |grep -m 1 CNAME >>cnames.log
lineno=$((lineno+1))
done < $filename


