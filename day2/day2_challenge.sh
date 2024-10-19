#!/bin/bash


#Part1: File and Directory Exploration

echo "Welcome to Interactive and file directory Explorer"

while true; do
        #List all the files and the directory files explorer
        echo " List all the files and the directory files explorer"
        ls -ltr


        #Part2: Charater counting
        read -p "Enter the line of text (Press ENTER without text to exit): " input

        #Exit if te user enters empty string
        if [ -z "$input" ];
        then
                echo " Exiting the interactive Explorer: Goodbye!!"
                break
        fi


        #Calaculate the character count for the input line
        char_count=$(echo -n "$input" | wc -m)
        echo " Character Count: $char_count"

done
