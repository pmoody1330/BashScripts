#!/bin/bash
echo "Hostname: $(hostname)"
#echo "OS Information: $(cat /etc/issue)"
FILE='/etc/redhat-release'
# Check if file exists
if [ -d "$FILE" ]; then
	cat $FILE
fi	
# Verify that /etc/issue exists and show the contents
if [ -f /etc/issue ]; then 
	cat /etc/issue
fi
lsb_release -ircd
echo $'\n'
#List media sorted by File System (2 is Type) (3 is Size)
echo "FS information without snap:"
df -HlT -x squashfs | tail -n +2 | sort -k 1
echo $'\n'
sudo lshw -short

