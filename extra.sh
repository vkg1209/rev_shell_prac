#!/bin/bash

touch data.txt
DATA=vinay

if [ -z data.txt ]; then
    echo file is empty
else
    echo file is not empty
fi

if [ -z $DATA ]; then
    echo Variable is empty
else
    echo Variable is not empty
fi