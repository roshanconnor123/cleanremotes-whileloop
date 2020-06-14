#!/bin/bash

mkdir -vv -p /.config/rclone/ && cp rclone.conf /.config/rclone/
rclone config

echo 'Done. Starting cleanremotes with filter/flag:' $COMMAND

while true
do
	sh cleanremotes && \
	echo "Executing $COMMAND" && date || echo "ERROR: Command Failed!";
	sleep $INTERVAL
done
