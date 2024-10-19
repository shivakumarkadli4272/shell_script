#!/bin/bash

#Variables
backup_dir="/home/ec2-user/Shiva/day5"
timestamp=$(date +"%Y-%m-%d_%H:%M:%S")
file_backup=${backup_dir}/backup_${timestamp}.tar.gz

#Create backup files
#Change the directory you want to backup
tar -czf $file_backup /home/ec2-user/Shiva/day5

echo "Backup created at $file_backup"
