#!/bin/bash

USERNAME=vinay

echo Enter Password $USERNAME: 
read -s PASSWORD

if ( $PASSWORD -eq sex ); then
    echo logged in successfully
elif ( $PASSWORD -ne sexx ); then
    echo remove one x
else 
    echo wrong password
fi