#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user ot not.

# Display the UID
echo "Your UID is ${UID}"
# Dispay the username
USER_NAME=$(id -un)
echo "Your user name is ${USER_NAME}."
echo "You don't need to know mine."
# Display if the user is the root or not
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are alone.'
else
	echo 'You are not alone'
fi


