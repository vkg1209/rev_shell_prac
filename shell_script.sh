#!/bin/bash

USERNAME=vinay

echo Enter Password $USERNAME: 
read -s PASSWORD

if [ $PASSWORD == sex ]; then
    echo logged in successfully
elif [ $PASSWORD != sexx ]; then
    echo remove one x
else 
    echo wrong password
fi