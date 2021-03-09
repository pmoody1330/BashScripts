#!/bin/bash
read -p 'Please enter the server name: ' ServerName
#echo $ServerName
read -p 'Please enter the user name you want to search for: ' UserName
Search='sudo cat /var/log/secure | grep '$UserName
ssh $ServerName $Search