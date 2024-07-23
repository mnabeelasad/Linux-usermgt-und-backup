#!/bin/bash
<<Commment

This is the file of Backup

Commment

src="/home/labdoo/Desktop/Summer Semester 2024/devops_practice/scripts"
tgt_dir="/home/labdoo/Backup_folder"


backup_filename="backup_$(date).tar.gz"

echo "Backup Starting"

echo "$backup_filename"

tar -czvf "${tgt_dir}/${backup_filename}" "$src"

echo "Backup Complete"
