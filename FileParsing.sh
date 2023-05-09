#!/bin/bash

filename='zuhair.txt'

if [ -f "$filename" ]
then
  echo "File: $filename"
  while IFS='- ' read -a fields
  do
    echo "${fields[0]}" "${fields[1]}"
  done < "$filename"
else
  echo "File does not exist"
fi
