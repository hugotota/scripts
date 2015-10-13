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

dev_backup_filename=dev-backup-$formated_date.tar.gz
dev_folder=/home/htota/dev/

ibm_backup_filename=ibm-backup-$formated_date.tar.gz
ibm_folder=/home/htota/IBM/

light_backup_filename=light-backup-$formated_date.tar.gz
light_folder=/home/htota/light/

vmware_backup_filename=vmware-backup-$formated_date.tar.gz
vmware_folder=/home/htota/vmware/

virtual_box_backup_filename=virtual-box-backup-$formated_date.tar.gz
virtual_box_folder=/home/htota/VirtualBox\ VMs/

backup_folder=/home/htota/backup/

notes_log_filename=notes-backup.log
document_log_filename=document-backup.log
downloads_log_filename=downloads-backup.log
workspace_log_filename=workspace-backup.log
dev_log_filename=dev-backup.log
ibm_log_filename=ibm-backup.log
light_log_filename=light-backup.log
vmware_log_filename=vmware-backup.log
virtual_box_log_filename=virtual-box-backup.log

echo "Backing up notes folder"
tar -zcvf $notes_backup_filename --absolute-names $notes_folder > $notes_log_filename

echo "Backing up document folder"
tar -zcvf $document_backup_filename --absolute-names $document_folder > $document_log_filename

echo "Backing up downloads folder"
tar -zcvf $downloads_backup_filename --absolute-names $downloads_folder > $downloads_log_filename

echo "Backing up workspace folder"
tar -zcvf $workspace_backup_filename --absolute-names $workspace_folder > $workspace_log_filename

echo "Backing up dev folder"
tar -zcvf $dev_backup_filename --absolute-names $dev_folder > $dev_log_filename

echo "Backing up ibm folder"
tar -zcvf $ibm_backup_filename --absolute-names $ibm_folder > $ibm_log_filename

echo "Backing up light folder"
tar -zcvf $light_backup_filename --absolute-names $light_folder > $light_log_filename

echo "Backing up vmware folder"
tar -zcvf $vmware_backup_filename --absolute-names $vmware_folder > $vmware_log_filename

echo "Backing up virtual box folder"
tar -zcvf $virtual_box_backup_filename --absolute-names $virtual_box_log_filename > $virtual_box_log_filename

echo "Moving backup files to the backup folder"
mv $notes_backup_filename $backup_folder
mv $document_backup_filename $backup_folder
mv $downloads_backup_filename $backup_folder
mv $workspace_backup_filename $backup_folder
mv $dev_backup_filename $backup_folder
mv $ibm_backup_filename $backup_folder
mv $light_backup_filename $backup_folder
mv $vmware_backup_filename $backup_folder
mv $virtual_box_backup_filename $backup_folder

echo "Moving log files"
mv $notes_log_filename $backup_folder
mv $document_log_filename $backup_folder
mv $downloads_log_filename $backup_folder
mv $workspace_log_filename $backup_folder
mv $dev_log_filename $backup_folder
mv $ibm_log_filename $backup_folder
mv $light_log_filename $backup_folder
mv $vmware_log_filename $backup_folder
mv $virtual_box_log_filename $backup_folder
