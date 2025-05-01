#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user ot not.

# Display the UID
echo "Your UID is ${UID}"
# Dispay the username
USER_NAME=$(id -un)
echo "Your user name is ${USER_NAME}"
# Display if the user is the root or not

