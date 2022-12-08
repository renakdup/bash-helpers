#!/usr/bin/env bash

# Move script to /etc/cron.daily
# chmod 715 do-daily-backups.sh
# Create `/var/db-backups` directory

PATH_TO_BACKUPS="/var/db-backups/"

# Backup Databases
mysql -N -e 'show databases' | while read DB_NAME;
do
  if [[ "${DB_NAME:0:8}" != "rd_stage" ]]; then
   continue
  fi

  echo "Exporting \"${DB_NAME}\""
  mysqldump --no-tablespaces --complete-insert "${DB_NAME}" | gzip > "${PATH_TO_BACKUPS}${DB_NAME}.`date +"%Y-%m-%d"`.sql.gz"
done

# Remove files older then 14 days
# -print
find $PATH_TO_BACKUPS -type f -mtime +14 -delete
