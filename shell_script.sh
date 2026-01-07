#!/bin/bash

echo $@ : all variables
echo $* : all variables
echo $0 : script name
echo $PWD : present working directory
echo  $USER : current user
echo $$ : pid of this script
sleep 5 &
echo $! : pid of the last command in background
echo $# : total number of arguments passed
echo $LINENO : line number where error occured
echo $BASH_COMMAND : displays the command of which the error occured