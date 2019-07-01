#!/bin/bash

### VARIABLES:
export SOURCE="/Users/kubackimike/Pictures/Scan*"
export DESTINATION="/Users/kubackimike/Pictures/test with space/"
current_time=$(date "+%Y.%m.%d-%H.%M.%S")

ls -l ~/Pictures/Scan* > /dev/null 2>&1

if [ $? -eq 0 ]
then
	echo ""
	echo "*** FILES FOUND ***"
	echo $SOURCE
	echo ""
	echo "The files will be moved to:"
	echo $DESTINATION
	echo ""
	echo "Are you sure you want to move the files? Press Enter to continue."
	echo ""
	read a
	mv $SOURCE "$DESTINATION"
	echo ""
	echo "*** SUCCESS ***"
	echo "All scans have been moved to Google Drive."
	echo ""
else
	echo ""
	echo "*** ERROR ***"
	echo "I could not find any files to move to Google Drive."
	echo ""
fi
