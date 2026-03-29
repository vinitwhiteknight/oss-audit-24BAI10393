#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vinit Burkul
# Purpose: Checks for MySQL installation and prints a philosophy note

PACKAGE="mysql-server"

echo "--- FOSS Package Audit ---"

# Check if the package is installed using dpkg
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "STATUS: $PACKAGE is successfully installed."
    
    # Case statement for philosophy note based on package name
    case $PACKAGE in
        "mysql-server")
            echo "Note: MySQL - open source at the heart of millions of apps"
            ;;
        "apache2")
            echo "Note: Apache - the web server that built the open internet"
            ;;
        *)
            echo "Note: Custom open-source software detected."
            ;;
    esac
else
    echo "ERROR: $PACKAGE is NOT installed on this system."
fi
