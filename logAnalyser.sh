#!/bin/bash

read -p "Please enter the log file path: " logFile
top_array=("IP" "path" "status code" "user agent")

top_occurence() {
	column=$1
	if [ "$column" == 'IP' ]
	then
		echo "Top 5 IP addresses with the most requests:"
        	awk '{print $1}' "$logFile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2, "-", $1, "requests"}'
	elif [ "$column" == 'path' ]
	then
		echo "Top 5 most requested paths:"
                awk '{print $7}' "$logFile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2, "-", $1, "requests"}'
	elif [ "$column" == 'status code' ]
	then
                echo "Top 5 response status codes:"
                awk '{print $9}' "$logFile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2, "-", $1, "requests"}'
	elif [ "$column" == 'user agent' ]
	then
                echo "Top 5 user agents:"
                awk -F\" '{print $6}' "$logFile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2, "-", $1, "requests"}'
	fi
}

if [ -f "$logFile" ]
then
	for var in "${top_array[@]}"
	do
		top_occurence "$var"
		echo
	done
else
	echo "Wrong file!"
fi
