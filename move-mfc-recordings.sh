!/bin/bash
#rsync command to move recorded videos from server to unraid share.
# Add this to run script ever 5 minutes. "crontab -e" 
# "*/5 * * * * /home/user/move-mfc-recordings.sh"

rsync --remove-source-files -r /home/user/recorded/*.ts /media/unraid/Recorded/Convert

