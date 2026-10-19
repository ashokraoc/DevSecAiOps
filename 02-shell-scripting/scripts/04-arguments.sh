#!/bin/bash

person1=$1
person2=$2

echo "$person1:: Hi $person2 how are you?"
echo "$person2:: Hello $person1 I am good, how about you?"
echo "$person1:: so $person2 where have you been upto"
echo "$person2:: well $person1 I am upgrading my tech stack now a days"

echo "------------------------------------"
echo "Script name:: $0"
echo "First argument:: $1"
echo "Second argument:: $2"
echo "Third argument:: $3"
echo "Total arguments passed:: $#"

echo "-------------------------------------"

#When we do not know how many arguments will be passed, we can use "$@".
# If an argument contains spaces, enclose it in single or double quotes so the shell treats it as a single argument.
# Example: bash arguments.sh "Ashok Kumar"

echo "Arguments passed to the script:"
for arg in "$@"
    do
        echo "$arg"
    done

echo "Total arguments passed:: $#"

