#!/bin/bash

echo this is script2
trap 'echo we got error because it cant read password variable from scrip1' ERR
if [ $PASSWORD = '' ]; then
    echo we used sh so cant access the password variable from script1
else
    echo $PASSWORD
fi

