#!/bin/bash
# get date in the ddmmYYYY format and store it in a variable called as today
today=$(date +"%d%m%Y")
#create a variable called as backup_dir
backup_dir="/opt/backup/qtdevops-${today}"
#create a variable called as source_directory
source_directory="/home/qtdevops"
mkdir -p $backup_dir
echo "Copying files from ${source_directory}"
cp -r $source_directory $backup_dir