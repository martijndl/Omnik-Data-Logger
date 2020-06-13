#!/bin/bash

# Start the run once job.
echo "Docker container has been started"

# Setup a cron schedule
#echo "5 * * * * /usr/bin/python /home/Omnik-Data-Logger/OmnikExport.py >> /var/log/cron.log 2>&1" > scheduler.txt

#echo "Contents of scheduler.txt:"
#cat scheduler.txt

echo "Creating crontab"
crontab scheduler.txt
echo "Created crontab"

echo "Starting cron"
cron -f
