##Capstone Project Containing Shell Scripts for the Open Source Software Audit of Python
#Open Source Software Audit

Student Name: Sahil Dalwani
Roll Number: 24BSA10350
Chosen Software: Python

Project Overview

This repository contains five custom Bash shell scripts developed as part of an Open Source Software audit project focusing on Python.

The scripts were written and tested in an Ubuntu Linux environment and are designed to demonstrate how Linux command-line tools can be used to inspect system information, analyze directories, monitor logs, and automate tasks.

The purpose of these scripts is not only to demonstrate Bash scripting concepts but also to connect the open source philosophy with practical Linux system management tasks.

Description of Scripts
script1.sh — System Identity Report

This script generates a small dashboard displaying important system identity information.
It dynamically retrieves system metrics such as:

Kernel version
Current user
Hostname
System uptime
Current date and time

The script uses command substitution and environment commands like uname, whoami, and uptime to gather system information.

script2.sh — FOSS Package Inspector

This script verifies whether Python is installed on the system.

It checks:

Installation status
Installed version of Python

The script uses the Debian package management tool dpkg along with conditional if statements to determine whether Python is installed.

script3.sh — Disk and Permission Auditor

This script audits key system directories and reports information related to:

Directory permissions
Ownership
Storage usage

It loops through important directories such as:

/etc
/var/log
/home
/usr/bin
/tmp

The script uses commands such as:

ls -ld
du -sh
awk
cut

to extract meaningful information about each directory.

script4.sh — Log File Analyzer

This script scans log files to identify and count error messages.

It reads the file line-by-line using a while read loop and searches for specific keywords such as error.

If matching lines are found, the script:

counts the number of occurrences
displays the most recent matches

This script demonstrates how Bash can be used for basic log analysis and system monitoring.

script5.sh — Open Source Manifesto Generator

This script is an interactive Bash program that asks the user a few questions about open source philosophy.

Based on the user’s responses, the script generates a personalized manifesto text file.

The script demonstrates:

user input using read
variable handling
string concatenation
file creation using output redirection
Dependencies Required

To successfully run these scripts, ensure the following requirements are met:

Operating System

Ubuntu or any Debian-based Linux distribution
(or Windows Subsystem for Linux)

Shell Environment

Standard Bash shell

Software Dependency

Python must be installed on the system.

Install Python using:

sudo apt update
sudo apt install python3

Without Python installed, Script 2 will report that the package is missing.

Step-by-Step Instructions to Run the Codes
Step 1 — Open Terminal

Launch your Ubuntu terminal (or WSL terminal if using Windows).

Step 2 — Navigate to the Project Folder

Use the cd command to move to the directory containing the script files.

Example:

cd oss-audit-python
Step 3 — Grant Execution Permissions

Before running the scripts, you must grant them execution permission.

Run the following commands:

chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh
Step 4 — Execute the Scripts

Run any script using the following format:

./script1.sh

Example outputs will appear directly in the terminal.

Special Instructions for Script 4 (Log File Analyzer)

Script 4 requires a log file to analyze.

First create a sample log file using this command:

echo -e "System started\nWarning: CPU high\nError: database failed\nError: network timeout\nService restarted" > testlog.txt

Then run the script with the log file as an argument:

./script4.sh testlog.txt

The script will analyze the file and report the number of error occurrences.

Conclusion

This project demonstrates how open source software and Linux command-line tools can be used together to automate tasks and inspect system behavior.

Through the development of these scripts, I gained practical experience with:

Bash scripting
Linux system commands
log analysis
directory auditing

More importantly, this project helped reinforce the importance of open source software as the foundation of modern computing systems.
