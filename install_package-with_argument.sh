#!/bin/bash

<<Highlights
This script will install the Any package passed as argument
./install_package.sh <arg>
Highlights


echo $1

echo "**************Installing $1******************"


echo " This script is installing the $1"
sudo yum install $1 -y
echo "The $1 is installed "
sudo systemctl start $1
sudo systemctl enable $1
