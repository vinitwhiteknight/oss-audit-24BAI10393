#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vinit Burkul
# Purpose: Loops through critical directories to report permissions and size

# Array of important directories to audit
DIRS=("/etc" "/var/log" "/home" "/etc/mysql")

echo "--- Directory Audit Report ---"
echo "------------------------------------------"

# Use a for loop to iterate through the array
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract Permissions, Owner, and Group using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get Directory Size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "Location    : $DIR"
        echo "Permissions : $PERMS"
        echo "Total Size  : $SIZE"
        echo "------------------------------------------"
    else
        echo "Warning: $DIR does not exist on this system."
    fi
done
