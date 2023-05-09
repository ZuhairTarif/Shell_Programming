#!/bin/bash

# function to add two numbers
function add {
    local result=$(echo "scale=2; $1 + $2" | bc -l)
    echo $result
}

# function to subtract two numbers
function subtract {
    local result=$(echo "scale=2; $1 - $2" | bc -l)
    echo $result
}

# function to multiply two numbers
function multiply {
    local result=$(echo "scale=2; $1 * $2" | bc -l)
    echo $result
}

# function to divide two numbers
function divide {
    local result=$(echo "scale=2; $1 / $2" | bc -l)
    echo $result
}

# function to display all operations
function display_operations {
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. All operations"
}

# prompt user for input
echo "Enter first number: "
read num1

echo "Enter second number: "
read num2

# display options to user
display_operations

# prompt user to select operation
echo "Enter operation number: "
read operation

case $operation in
    1)
        result=$(add $num1 $num2)
        operation_name="Addition"
        ;;
    2)
        result=$(subtract $num1 $num2)
        operation_name="Subtraction"
        ;;
    3)
        result=$(multiply $num1 $num2)
        operation_name="Multiplication"
        ;;
    4)
        result=$(divide $num1 $num2)
        operation_name="Division"
        ;;
    5)
        result1=$(add $num1 $num2)
        result2=$(subtract $num1 $num2)
        result3=$(multiply $num1 $num2)
        result4=$(divide $num1 $num2)
        operation_name="All operations"
        ;;
    *)
        echo "Invalid operation number"
        exit 1
        ;;
esac

# display result
if [[ $operation -eq 5 ]]; then
    echo "Addition: $result1"
    echo "Subtraction: $result2"
    echo "Multiplication: $result3"
    echo "Division: $result4"
else
    echo "$operation_name: $result"
fi
