#!/bin/bash
ID=$(docker ps -aq)
#echo $ID
docker start $ID
