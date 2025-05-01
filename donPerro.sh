#!/bin/bash

# This script displays various information to the screen.

# Display 'Hola, Don Perro.'

echo 'Hola, Don Perro.'

# Assign a value to a variable
WORD='perrito'

# Display that value using the variable (there's a difference between ' & ")
echo "$WORD"

# Demonstate that single quotes cause variables to NOT get expanded
echo '$WORD'

# Combine the variable with hard-coded text.
echo "Don Perro es un $WORD"

# Display the contents of the variable using an alternative syntax
echo "La Bebé también es un ${WORD}"

# Append text to the variable
echo "Todos son ${WORD}s!"
