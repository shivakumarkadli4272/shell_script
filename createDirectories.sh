#!/bin/bash

#Check if three arguments are provided!

if [ $# -ne 3 ]; then
        echo "Usage: The script $0 is not executed with 3 arguments .ie day 1 90"
        exit 1;

fi

#Assign arguments to variables

dir_name=$1
start_num=$2
end_num=$3

#Creates a directories using a loop

for (( i=start_num; i<end_num; i++))
do
        mkdir "${dir_name}${i}"
done

echo " Directories created from ${dir_name}${start_num} to ${dir_name}${end_num} "
