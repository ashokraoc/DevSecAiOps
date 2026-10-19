#!/bin/bash

#Ex: How will you execute a command and store that in a variable?


start_time=$(date +%s)
echo "Script excute start time $start_time"

sleep 10 # script will run in the background

end_time=$(date +%s)
echo "Script excute end time $end_time"

total_time=$(($end_time-$start_time))

echo "Total time taken to execure the script is:: $total_time seconds"