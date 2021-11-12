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

# Create directories recursively (useful for creating nested dirs):
mkdir -p {{path/to/directory}}
# & cd to dir
mkdir -p {{path/to/directory}} && cd $_

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

# Change a password
ssh-keygen -p [-P old_passphrase] [-N new_passphrase] [-f keyfile]

# get prompeted
ssh-keygen -p

# command use to copy key to another server
ssh-copy-id production1@serverb

# https://faun.pub/linux-commands-c049578b4d49

### nslookup ###
nslookup google.com
nslookup -type=ns google.com
nslookup -query=mx google.com
nslookup -query=any google.com
nslookup google.com ns1.nsexample.com

# lsof
sudo lsof
# search by command
sudo lsof -c firefox
# search by PID
sudo lsof -p 2121
# search by user
sudo lsof -u pmoody
# search by file
sudo lsof /bin/sleep

# journalctrl
journalctrl -f

# vim
# write with sudo
:W !sudo tee %

# Sort by size
ls -lah --sort=size

# open file explorer
xdg-open # <Folder name> - Linux
open # <Folder Name> - MacOS

# docker
# start all containers
docker start $(docker ps -aq)

# tmux
https://superuser.com/questions/1560523/how-do-i-resize-tmux-pane-by-holding-down-prefix-and-arrow-key-for-a-while
ctrl-b :resize-pane -R 10
#ctrl-b alt+->, <-, ↑, ↓ (left right up down and multiple presses) [Command (⌘) + Control (^) + space bar allows special characters on a mac. ]
#----------------------------------------------#

# Add to .bash_profile
# ignore common commands
export HISTIGNORE=':pwd:id:uptime:resize:ls:clear:history:'
# ignore duplicate entries
export HISTCONTROL=ignoredups
# control the size of the history file
export HISTSIZE=2000
export HISTFILESIZE=2000
# ignore duplicate entries and don't overwrite the history
export HISTCONTROL=ignoredups
shopt -s histappend
# Auto CD
shopt -s autocd
# Kube-ps1
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source "/usr/local/etc/bash_completion.d/kubectl"
complete -F __start_kubectl k
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r '/usr/local/etc/profile.d/bash_completion.sh' ]] && . '/usr/local/etc/profile.d/bash_completion.sh'


#AWSume alias to source the AWSume script
alias awsume="source \$(pyenv which awsume)"

#Auto-Complete function for AWSume
_awsume() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(awsume-autocomplete)
    COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
    return 0
}
complete -F _awsume awsume

# Editor
export EDITOR='vim'

# History
# add a date time stamp to the current window output
HISTTIMEFORMAT="%F %T "

# Sef File ACL
setfacl

# These need to be installed
tldr
ripgrep
nmap
jq
sslscan
yq
mtr
lazygit
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
