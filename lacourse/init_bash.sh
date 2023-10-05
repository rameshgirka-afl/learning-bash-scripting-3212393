#!/bin/sh

#serverlist=("akamaidlp55.deloitteresources.com" "www.akamai.com")   # list 
echo $(hostnames.txt)
#expand array 
#echo "Expanding list:" ${serverlist[@]}  #${serverlist[*]}


for server in ${serverlist[@]}; do
echo "processing server:" $server >> output.log
dig  $server | grep CNAME  >> output.log
done
