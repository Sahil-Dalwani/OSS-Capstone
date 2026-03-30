#!/bin/bash

# System Identity Report
# Author: Sahil Dalwani
# Software: Python

STUDENT_NAME="Sahil Dalwani"
SOFTWARE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOSTNAME=$(hostname)
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

echo "========================================="
echo "        Open Source Audit Dashboard"
echo "========================================="
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE"
echo "Hostname: $HOSTNAME"
echo "User: $USER_NAME"
echo "Kernel: $KERNEL"
echo "Uptime: $UPTIME"
echo "Date: $CURRENT_DATE"
echo "========================================="
