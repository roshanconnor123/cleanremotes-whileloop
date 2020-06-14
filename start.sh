#!/bin/bash

wget https://raw.githubusercontent.com/88lex/cleanremotes/master/cleanremotes

echo 'Downloading cleanremotes'

mkdir -vv -p /.config/rclone/ && cp rclone.conf /.config/rclone/ && \
cp cleanremotes /usr/bin/ && chmod +x /usr/bin/cleanremotes

echo 'Done. Starting cleanremotes with filter/flag:' $COMMAND

while true
do
	cleanremotes $COMMAND && \
	echo "Executing $COMMAND" && date || echo "ERROR: Command Failed!";
	sleep $INTERVAL
done