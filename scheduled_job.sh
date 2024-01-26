#!/bin/bash

# The script expects the run time in HH:MM format.
# For example, to run at 6:30 AM every day, you'd pass "06:30" as the first argument.
RUN_AT_TIME="01:00"
echo "Scheduler launched. Waiting..."

while true; do
  # Get the current hour and minute.
  CURRENT_TIME=$(date +%H:%M)

  # Check if it's time to run the job.
  if [ "$CURRENT_TIME" = "$RUN_AT_TIME" ]; then
    # Run the job.
    echo "Running scheduled job at $(date)"
    # Call the command or script you want to run here.
    condor_submit_bid 50 run.sb
    echo "Job is running..."
    sleep 10h
    git add _posts/.
    git commit -m "add new post"
    git push
    echo "Job is done, waiting for the next day..."
    sleep 13h
  fi

  # Sleep for a short while before checking the time again.
  # This determines how often the script checks the time.
  # Avoid setting this too short to prevent a tight loop.
  sleep 50
done

