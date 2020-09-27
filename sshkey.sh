#!/bin/bash
read -p 'Please enter your password: ' pw
read -p 'Please enter the file name you want: ' KeyFile
ssh-keygen -t rsa -b 4096 -C "test@test.com" -P $pw -f "/home/pmoody/.ssh/$KeyFile" -q
