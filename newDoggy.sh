#!/bin/bash

# This scripts creates an account on the local system
# You will be prompted for the account name and password.
### PERSONAL NOTES:
### read permite adquirir input del usuario. (-p) me imagino es para poner un texto.
### ps me permite ver los procesos corriendo.
### El | toma el último elemento del comando y lo transfiere al siguiente comando, creo.
# Ask for user name.
echo "I am the Buddha. Who are you?"
read -p "Who?: " USERNAME
echo "WRONG! You are not ${USERNAME}..."
echo "You are me."
echo "And I am you."
# Ask for the real name.
echo "But I will name you ${USERNAME} conventionally for now..."
# Ask for the password.
read -p "Write your favorite word: " PASSWORD
echo "Your favorite word is now my secret."
# Create the user.
echo "Now I will create your soul..."
useradd -c "{COMMENT}" -m ${USERNAME}
echo "Soul created."
# Set the password for the user.
echo ${PASSWORD} | passwd --stdin ${USERNAME} 
# Force password change on first login.#!/bin/bash
passwd -e ${USERNAME}
