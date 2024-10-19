#!/bin/bash

<<Note
This script file takes the backup of the any destionations path given in argument
./backup.sh /home/ec2-user/scripts
Note

#echo "$(date '+%Y/%m/%d_%H:%M:%S')"

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

backup_dir="/home/ec2-user/Shiva/dummy_logs${timestamp}_backup.zip"

zip -r $backup_dir $1

echo " Backup Completed "
