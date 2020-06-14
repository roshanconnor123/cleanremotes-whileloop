#!/bin/bash

wget https://raw.githubusercontent.com/88lex/cleanremotes/master/cleanremotes
wget $RCLONE_URL

echo 'Downloading rclone.conf and cleanremotes'

mkdir -vv -p /.config/rclone/ && cp rclone.conf /.config/rclone/ && \
cp cleanremotes /usr/bin/ && chmod +x /usr/bin/cleanremotes

echo 'Done. Starting cleanremotes with filter/flag:' $COMMAND

while true
do
	cleanremotes $COMMAND && \
	echo "Executing $COMMAND" && date || echo "ERROR: Command Failed!";
	sleep $INTERVAL
done