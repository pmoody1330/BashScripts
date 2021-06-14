#!/bin/bash

ips=$(nmap -sPn 192.168.1.0/24 -oG - | awk '/Up$/{print $2}')

for ip in $ips
do
if [ "$ip" = '192.168.1.137' ]; # check as a single ip - ttr was too high
 then 
    echo 'skipping '
 else
    nmap -RsV "$ip"
fi
done
