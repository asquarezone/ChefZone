#!/bin/bash
today=$(date +"%d%m%Y")
backup_dir="/opt/backup/qtdevops-${today}"
source_directory="/home/qtdevops"
mkdir -p $backup_dir
echo "Copying files from ${source_directory}"
cp -r $source_directory $backup_dir