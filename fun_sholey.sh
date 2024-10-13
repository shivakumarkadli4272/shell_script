#!/bin/bash

<<Disclaimer
These are the Films convesations
Disclaimer

read -p "Enter the Gabber's dailogue: " gb
read -p "Enter the Thankur's dailogue: " th
read -p "Kitne aadmi thee Thankur: " admi


echo $gb
echo $th
echo "Total admi: " $admi

if [[ $th == "nahi" ]];
then
        echo "jai veeu ki entry bhasad hai"
elif [[ $admi -ge 2 ]];
then
        echo "Lets gooooo Marenge salo nikhloo jyaada aadmi nahi hai"
else
        echo "Warnaaa Marege saloooo"

fi
echo "Sholey katam"
