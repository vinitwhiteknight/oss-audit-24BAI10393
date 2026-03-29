#!/bin/bash
# Script 1: System Identity Report
# Author: Vinit Burkul
# Course: Open Source Software
# Purpose: Displays a welcome screen with system and project details

# --- Variables ---
STUDENT_NAME="Vinit Burkul"
SOFTWARE_CHOICE="MySQL"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# --- Display ---
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE_TIME"
echo "------------------------------------------"
echo "License Note: This OS is covered by the GNU GPL v2 License."
echo "=========================================="
