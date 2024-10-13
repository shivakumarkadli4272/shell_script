#!/bin/bash

<<Highlights
This script will install the NGNIX
Highlights

echo "**************Installing NGINX******************"


echo " This script is installing the NGNIX "
sudo yum install nginx -y
echo "The NGINX is installed "
sudo systemctl start nginx
sudo systemctl enable nginx

echo "The NGINX is enabled "

echo "Checking the status for the nginx"
sudo systemctl status nginx

echo "Package remove for the nginx"
sudo yum remove nginx -y
