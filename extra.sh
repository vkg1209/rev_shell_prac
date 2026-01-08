#!/bin/bash

# mkdir ../logs

# touch ../log1.log
# touch ../log2.log
# touch ../log3.log
N=0
ALL_LOG_PATHS=$(find /home/ec2-user -name "*.log")

while IFS= read -r filepath 
do
    $N=$(($N + 1))
    $N > $filepath
    echo "-------------------------------------------------------------"
done <<< $ALL_LOG_PATHS

cat ../log1.log
cat ../log2.log
cat ../log3.log


