#!/bin/bash
read -p "Enter First String: " var1 
read -p "Enter Second String: " var2
if [ $var1 = $var2 ]
then
 echo "Strings are Same"
else
  echo "Strings are Different"

fi
