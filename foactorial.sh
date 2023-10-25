#!/bin/bash

# Function to calculate factorial
factorial() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

# Read the number for which to calculate factorial
read -p "Enter a positive integer: " num

# Check if the input is a positive integer
if [[ $num =~ ^[0-9]+$ && $num -gt 0 ]]; then
    result=$(factorial $num)
    echo "Factorial of $num is: $result"
else
    echo "Invalid input. Please enter a positive integer."
fi
