#!/bin/bash
DIRS='/root/mysql /etc/httpd /var/www/html'
NOW=`date +'%Y%m%d'`
OUTPUT="/srv/backup/system_backup.$NOW.tar.gz"

# The following line is not correct
mysqldump  > /root/mysql/dump.sql

find /srv/backup/ -mtime +30 -type f -exec rm -fv {} \;

tar -zcvf $OUTPUT $DIRS
