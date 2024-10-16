#!/bin/bash

#Task1 : Comment

# Hello all started the Challenge


#Task2: Echo

echo "Hello Shiva ,Good day!!"
time="$(date '+%Y/%m/%d_%H:%M:%S')"
echo "$time"


#Task3: Variables

variable1=Hello
variable2=Indira

#Task4: Using Variable

greetings="$variable1, $variable2"
echo "$greetings ,You are toooo kid to play"


#Task5: Built In variables

echo "My current bashpath is - $BASH"
echo "MY current working dirpath is -$PWD"
echo "MY home dir is -$HOME"
echo "MY hostname is -$HOSTNAME"
echo "PID of bash version is -$$"
echo "Bash version - $BASH_VERSION"

#Task6: Wildcards

echo "List all the files with extension .sh are: "
ls -lt *.sh
~
