#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#creating a log folder for this script
LOG_DIR_NAME=shellscript-logs
LOG_FILE_NAME=$0.log
LOG_FILE=/var/log/$LOG_DIR_NAME/$LOG_FILE_NAME


if [ ! -d /var/log/$LOG_DIR_NAME ]; then
    mkdir /var/log/$LOG_DIR_NAME
fi

rm -r $LOG_FILE/*

if [ ! -f /var/log/$LOG_DIR_NAME/$LOG_FILE_NAME ]; then
    touch /var/log/$LOG_DIR_NAME/$LOG_FILE_NAME
fi


check_root(){

    USER_ID=$(id -u)

    if [ $USER_ID -ne 0 ]; then
        echo -e "You need $R ROOT PRIVILAGES $N to run this script"
        exit 1
    fi
}

install_packages(){
    for package in $@
    do
        dnf install $package -y &>> $LOG_FILE
        validate $? $package
    done
}

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 :: $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 :: $G SUCCESS $N"
    fi
}

check_root
install_packages

cat $LOG_FILE