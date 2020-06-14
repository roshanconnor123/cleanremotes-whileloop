#!/bin/bash

echo; echo STARTING DEDUPE of identical files from $REMOTE_NAME; echo
rclone dedupe skip $REMOTE_NAME -v --drive-use-trash=false --no-traverse --transfers=50
echo; echo REMOVING EMPTY DIRECTORIES from $REMOTE_NAME; echo
rclone rmdirs $REMOTE_NAME -v --drive-use-trash=false --fast-list --transfers=50
echo; echo PERMANENTLY DELETING TRASH from $REMOTE_NAME; echo
rclone delete $REMOTE_NAME --fast-list --drive-trashed-only --drive-use-trash=false -v --transfers 50
rclone cleanup $REMOTE_NAME -v

