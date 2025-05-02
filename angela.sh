#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user or not.

echo "Hola, ${UID}."
echo "Veo que eres {$USER}..."

# Only display if the UID doest NOT match 1000.
# Exit 0 is the ideal exit (as if the programm runned successfully).
# The UID of the root user (sudo) is 0.
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
fi

# Display the username.
USER_NAME=$(id -un)

# Test f the command succeeded.
# ${?} is a special variable in bash that holds the exit status
# of the most recent executed script.
if [[ "${?}" -ne 0 ]]
then
	echo "The ID command did not execute succesfully."
	exit 1
fi

echo "Your username is ${USER_NAME}"

# You can use a string test conditional.
USER_NAME_TO_TEST='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST}" ]]
then
	echo "Your username (${USER_NAME}) is equal to ${USER_NAME_TO_TEST}"
	exit 0
else
	echo "Your username is not the same as ${USER_NAME_TO_TEST}"
	echo 1
fi

exit 0
