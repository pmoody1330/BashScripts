#!/bin/bash

###  netstat  ###
netstat -s # interface statistics
netstat -a # display all connections
netstat -at # TCP & UDP connections only
netstat -i # network interfaces
netstat -rn # kernet routing info
netstat -tnl # listening connections only

###  web details  ###
dig medium.com
whois medium.com

###  tcpdump  ###
tcpdump -D #list devices
tcpdump -c #captures x packets
tcpdump -n #force output to IP
tcpdump -s #set the capture size
tcpdump src port
tcpdump dst port
tcpdump any port
tcpdump -w #output to a file
