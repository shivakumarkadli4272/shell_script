#!/bin/bash

#Function to display usage
usage() {
        echo "Usage: $0 /home/ec2-user/Shiva/day10/logs/day10.log"
        exit 1
}

#To check if the log file path is provided
if [ $# -ne 1 ]; then
        usage
fi

LOG_FILE=$1

#Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
        echo "Error: Log file $LOG_FILE does not exits"
        exit 1
fi

#Variables
ERROR_KEYWORD="ERROR"
CRITICAL_KEYBOARD="CRITICAL"
DATE="$(date +'%Y-%m-%d')"
SUMMARY_REPORT="Summary_report_$DATE.txt"
ARCHIVE_DIR="processed_logs"


#create a summary report

{
        echo "Date of analysis: $DATE"
        echo "Log file name: $LOG_FILE"
} > $SUMMARY_REPORT



#Total lines processed
TOTAL_LINES=$(wc -l < $LOG_FILE)
echo "Total lines processed: $TOTAL_LINES" >> $SUMMARY_REPORT


#Count the number of Error message
ERROR_COUNT=$(grep -c $ERROR_KEYWORD $LOG_FILE)
echo "Total error count: $ERROR_COUNT" >> $SUMMARY_REPORT


#List of critical events with line number
echo "List of critical events with line numbers:" >> $SUMMARY_REPORT
grep -n $CRITICAL_KEYBOARD $LOG_FILE >> $SUMMARY_REPORT


#Identify top 5 most common error message
declare -A error_message
while IFS= read -r line;do
        if [[ $line == *$ERROR_KEYWORD* ]]; then
                message=$(echo $line | awk -F $ERROR_KEYWORD '{print $2}')
                ((error_message[$message]++))
        fi
done < ${LOG_FILE}


#Sort and display top 5 error message

echo "Top 5 error messages with their occurance count:" >> $SUMMARY_REPORT
for message in ${!error_message[@]};do
        echo "${error_messages[$messafe]} $message"
done | sort -rn | head -n 5 >> $SUMMARY_REPORT

#Optional:  Archive or move processed log files

if [ ! -d $ARCHIVE_DIR ]; then
        mkdir -p $ARCHIVE_DIR
fi

mv $LOG_FILE "$ARCHIVE_DIR/"

echo "Log file has been move to $ARCHIVE_DIR"

#print the summaty report
cat $SUMMARY_REPORT
