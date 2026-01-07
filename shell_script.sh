#!/bin/bash

START_TIME=$(date +%s)

sleep 5
sleep 2

END_TIME=$(date +%s)
TIME_TAKEN=$((START_TIME-END_TIME))
echo $TIME_TAKEN