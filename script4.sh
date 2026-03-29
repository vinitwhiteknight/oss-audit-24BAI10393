#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vinit Burkul
# Purpose: Scans a system log file to count specific warning/error keywords

# Default keyword is 'error', default log is syslog
LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

# Check if the log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# While-read loop to process the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"
echo "Last 5 occurrences:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
