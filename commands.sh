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

###  SSH  ###
# Use this is SSH isn't seeing a key that is installed
ssh-add -l 

# Use this to test the connection to github - it tells you the account that is being used
ssh -T git@github.com

