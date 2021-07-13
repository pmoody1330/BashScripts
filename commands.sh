#!/bin/bash

###  netstat  ###
netstat -s # interface statistics
netstat -a # display all connections
netstat -at # TCP connections only || -aut & UDP
netstat -i # network interfaces
netstat -rn # kernet routing info
netstat -tnl # listening TCP connections only

# https://www.tecmint.com/20-netstat-commands-for-linux-network-management/

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

tcpdump -i en7 # captures traffic on en7 (current mac port)

tcpdump -i en7 -c 10 host 8.8.8.8
tcpdump -i en7 -c 10 src host 8.8.8.8
tcpdump -i en7 -c 10 dst host 8.8.8.8

tcpdump -i en7 net 10.1.0.0/24

###  scp ###
# Copy file from a remote host to local host 
scp pmoody@from_host:file.txt /local/directory/

# Copy file from local host to a remote host 
scp file.txt pmoody@to_host:/remote/directory/

# Copy directory from a remote host to local host 
scp -r pmoody@from_host:/remote/directory/  /local/directory/

# Copy directory from local host to a remote host
scp -r /local/directory/ pmoody@to_host:/remote/directory/

# Copy file from remote host to remote host
scp pmoody@from_host:/remote/directory/file.txt pmoody@to_host:/remote/directory/

###  Chrome  ### 
Chrome://restart

###  NMAP ####
# Check open ports on host
nmap -sV 10.1.175.3

# return just IP addresses for machines that are up 
nmap -sn 192.168.1.0/24 -oG - | awk '/Up$/{print $2}'

###  SSH  ###
# Use this is SSH isn't seeing a key that is installed
ssh-add -l 

# Use this to test the connection to github - it tells you the account that is being used
ssh -T git@github.com

# nslookup
nslookup google.com 
nslookup -type=ns google.com
nslookup -query=mx google.com
nslookup -query=any google.com
nslookup google.com ns1.nsexample.com

# These need to be installed
tldr
nmap
lazygit
jq 
mtr
how2 #stack overflow CLI
# https://medium.zenika.com/15-command-line-tools-which-spark-joy-in-your-terminal-ec420d770bcc

#SecTools
nmap # masscan
# rumble (net scanner) #https://www.rumble.run
# GoBuster #dir/file brute force
# BurpSuite
# ffuf
# wpscan #Wordpress scan
# sqlmap
# EyeWitness #Screenshots of all web applications that running
# seclists
# Empire (BC Security fork)
# Metasploit
# PEASS (Privilege Escalation Awesome Scripts Suite)
# Ngork
# CrackMapExec (SMB, lsdap, mssql, ssh)
# Hashcat
# WhatWeb (fingerprinting tool)
