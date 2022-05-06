#!/bin/bash

##configure logging
#configure timestamp
TIME=`date +%d-%m-%Y_%H%M`


#configure the logging function
LOG_FILE=/home/chs88/scripts_backup/backuplog.txt
logger () { ## $1 is the message we are going to pass to the function
    echo "$TIME - $1" >> $LOG_FILE

}

##configure directories

SOURCE="/home/chs88/Desktop/Practice_Projects"
TARGET="/home/chs88/scripts_backup/"
FILENAME="backup-$TIME.tgz"

##configure the function for archiving

archive () {
    logger "Backup started on $SOURCE"
    tar -a -cf $TARGET/$FILENAME $SOURCE
    
}

## run the script
archive && logger "Backup successful"
