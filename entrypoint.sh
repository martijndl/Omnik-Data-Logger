#!/bin/bash

# Start the run once job.
echo "Docker container has been started"

/usr/sbin/crond -f
