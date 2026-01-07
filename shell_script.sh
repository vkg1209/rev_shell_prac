#!/bin/bash

echo $@ : all variables
echo $* : all variables
echo $0 : script name
echo $pwd : present working directory
echo  $user : current user
echo $$ : pid of this script
sleep 5 &
echo $! : pid of the last command in background
echo $# : total number of arguments passed