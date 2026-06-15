#!/bin/bash

echo "1. Creating Midterm Directory Structure"
mkdir -p midterm/PythonScripts
mkdir -p midterm/PostmanCollection
mkdir -p midterm/Documentation
mkdir -p midterm/Screenshots
mkdir -p midterm/Recordings
mkdir -p midterm/Backup

echo "2. Creating Documentation files"
touch midterm/Documentation/student_info.txt
touch midterm/Documentation/log.txt

echo "Complte Name: Dan Francis C. Torres" > midterm/Documentation/student_info.txt
echo "Course and Section: BSIT - 2" >> midterm/Documentation/student_info.txt
echo "Date Executed $(date)" >> midterm/Documentation/student_info.txt

echo "3. Displaying Machine environment Status"
echo "Current Date and Time: $(date)"
echo "Current user: $(whoami)"
echo "Current Working Directory: $(pwd)"
echo "IP Address: $(hostname -I | awk '{print $1}')"

echo "4. Backing Up Documentation"
cp midterm/Documentation/* midterm/Backup/

echo "5. Compressing Directory"
tar -czvf midterm/backup.tar.gz -C midterm Backup

echo "6. Tree Verification"
ls -R midterm
