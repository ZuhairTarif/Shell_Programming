#!/bin/bash

while true; do
    read -p "Enter a number: " count

    if ! [[ "$count" =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid number."
        continue
    fi

    if [ $count -eq 5 ]; then
        echo "You are right!"
        break
    elif [ $count -eq 4 ]; then
        echo "You are really close!"
    elif [ $count -eq 6 ]; then
        echo "A little less!!!!!"
    else
        echo "Try Again!"
    fi

    read -p "Do you want to try again? (y/n): " choice
    if [ "$choice" = "n" ]; then
        break
    fi
done
