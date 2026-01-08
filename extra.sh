#!/bin/bash

# mkdir ../logs

# touch ../log1.log
# touch ../log2.log
# touch ../log3.log

ALL_LOG_PATHS=$(find /home/ec2-user -name *.log)

while IFS= read -r filepath 
do
    echo $filepath
    echo "-------------------------------------------------------------"
done



find / -name *.log