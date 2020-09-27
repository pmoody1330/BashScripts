#!/bin/bash
read -p 'Please enter your password: ' pw
ssh-keygen -t rsa -b 4096 -C "test@test.com" -P $pw -f "/home/pmoody/.ssh/test" -q
