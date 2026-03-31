#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ayush Saxena| Course: Open Source Software
# This script reads a log file line by line, counts keyword matches,
# and shows the last 5 matching lines.

# --- Command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is "error"
COUNT=0

echo "=============================================================="
echo "                    Log File Analyzer                         "
echo "=============================================================="

# --- Check if log file is provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Retry-style check if file is empty ---
ATTEMPT=1
while [ ! -s "$LOGFILE" ] && [ $ATTEMPT -le 2 ]; do
    echo "Warning: '$LOGFILE' is empty. Retry attempt $ATTEMPT..."
    sleep 2
    ATTEMPT=$((ATTEMPT + 1))
done

if [ ! -s "$LOGFILE" ]; then
    echo "Error: '$LOGFILE' is still empty after retry."
    exit 1
fi

echo "Analyzing file   : $LOGFILE"
echo "Searching keyword: $KEYWORD"
echo "--------------------------------------------------------------"

# --- Read file line by line and count matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "Summary:"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------------------------------"

# --- Print last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=============================================================="
echo "Log Analysis Completed"
echo "=============================================================="