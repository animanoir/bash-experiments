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



