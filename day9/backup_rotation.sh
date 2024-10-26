#!/bin/bash

<< README
This file will execute the backup with 3day rotation
Useage:
./backup_with_rotation.sh /home/ec2-user/Shiva/source_dir /home/ec2-user/Shiva/target_dir
README

function display_usage {
        echo "2 Argument Usage: ./backup_with_rotation.sh /home/ec2-user/Shiva/source_path /home/ec2-user/Shiva/target_path/"
}

if [ $# -eq 0 ]; then
        display_usage
fi


timestamp=$(date '+%Y-%m-%d_%H:%M:%S')
source_path=$1
target_path=$2

function create_backup {
        zip -r "${source_path}_backup_${timestamp}.zip" "${target_path}" > /dev/null

        if [ $? -eq 0 ];then
                echo "Backup generated successfully for ${timestamp}"
        fi
}


function do_rotation {
    source_path="/home/ec2-user/Shiva/source_path"

    # Collect backup files into an array
    backup=($(ls -t "${source_path}_backup_"*.zip 2>/dev/null))

    # Check if there are more than 3 backup files
    if [ "${#backup[@]}" -gt 3 ]; then
        echo "There are more than 3 backup files."
        echo "Deleting the oldest backup file: ${backup[-1]}"
        rm "${backup[-1]}"  # Remove the oldest backup
    else
        echo "There are 3 or fewer backup files."
    fi
}

# Call the function
create_backup

# Call the function
do_rotation
