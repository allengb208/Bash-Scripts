#!/bin/bash

#Source directory to be backed up

SOURCE_DIR=/home/allen/technojam-x

#Destination Directory
DEST_DIR=/home/allen/backup

#Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

#Name for the backup using timestamp
BACKUP_FILENAME="backup_$TIMESTAMP.tar.gz"

#Archiving the source directory 
tar -czf "$DEST_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"


#Checking if the backup operation was succesful

if [ $? -eq 0 ]; then
	echo "Backup created succesfully: $DEST_DIR/$BACKUP_FILENAME"
else
	echo "Backup creation failed"
fi
