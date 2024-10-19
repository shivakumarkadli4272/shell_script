#!/bin/bash


<<Note
This is a demo for variables
Note

echo "===================================="

echo " 1st Attempt"
echo " "
echo "What is your firstname?"
firstname="Shivakumar"
echo "My firstname is $firstname"
echo " "
echo "What is your lastname?"
lastname="Kadli"
echo "My lastname is $lastname"

echo " ====================================="

echo " "
echo "What is your firstname?"
read firstname
echo "My firstname is $firstname"

echo " "
echo "What is your lastname?"
read lastname
echo "My lastname is $lastname"

echo " "

echo "How old are you??"
read age
echo "I am $age years old"

echo "======================================"

echo "  "
read -p "Enter your firstname: " firstname
echo " My name is $firstname "
read -p "Enter your lastname: " lastname
echo "My lastname is $lastname"
