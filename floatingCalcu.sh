#!/bin/bash

# read input from user
read -p "Enter First Number: " a 
read -p "Enter Second Number: " b

# perform floating point arithmetic operations using bc
sum=$(echo "$a + $b" | bc)
sum1=$(echo "$a - $b" | bc)
sum2=$(echo "$a * $b" | bc)
sum3=$(echo "$a / $b" | bc)

# print the results
echo $sum
echo $sum1
echo $sum2
echo $sum3
