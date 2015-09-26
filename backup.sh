#!/bin/bash

formated_date=`date +%Y-%m-%d`

notes_backup_filename=notes-backup-$formated_date.tar.gz
notes_folder=/home/htota/lotus/notes/

document_backup_filename=document-backup-$formated_date.tar.gz
document_folder=/home/htota/Documents/

downloads_backup_filename=downloads-backup-$formated_date.tar.gz
downloads_folder=/home/htota/Downloads/

workspace_backup_filename=workspace-backup-$formated_date.tar.gz
workspace_folder=/home/htota/dev/workspace/

backup_folder=/home/htota/backup/

notes_log_filename=notes-backup.log
document_log_filename=document-backup.log
downloads_log_filename=downloads-backup.log
workspace_log_filename=workspace-backup.log

echo "Backing up notes folder"
tar -zcvf $notes_backup_filename --absolute-names $notes_folder > $notes_log_filename

echo "Backing up document folder"
tar -zcvf $document_backup_filename --absolute-names $document_folder > $document_log_filename

echo "Backing up downloads folder"
tar -zcvf $downloads_backup_filename --absolute-names $downloads_folder > $downloads_log_filename

echo "Backing up workspace folder"
tar -zcvf $workspace_backup_filename --absolute-names $workspace_folder > $workspace_log_filename

echo "Moving backup files to the backup folder"
mv $notes_backup_filename $backup_folder
mv $document_backup_filename $backup_folder
mv $downloads_backup_filename $backup_folder
mv $workspace_backup_filename $backup_folder

echo "Moving log files"
mv $notes_log_filename $backup_folder
mv $document_log_filename $backup_folder
mv $downloads_log_filename $backup_folder
mv $workspace_log_filename $backup_folder