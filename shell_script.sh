#!/bin/bash

START_TIME=$(date +%s)
echo $START_TIME

sleep 5
sleep 2

END_TIME=$(date +%s)
echo $END_TIME

TIME_TAKEN=$((END_TIME-START_TIME))
echo $TIME_TAKEN Seconds