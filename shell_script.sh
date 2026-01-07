#!/bin/bash

#checking user has a root access
USER_ID=$(id -u)

if [ USER_ID -ne 0 ]; then
    echo "Please run this script with root privileges"
    exit 1

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "mysql installed successfully : SUCCESS"
else
    echo "installing mysql is a failure: FAILURE"
    exit 1