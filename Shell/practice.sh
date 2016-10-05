#!/bin/bash

a=$1
if [ -z $a ]
then
  read -p "Enter a number:" a
  if [ -z $a ]
  then
    echo "Reading from file"
    a=`cat number.txt`
  fi
fi
echo $a | grep "^[0-9]*$" &>/dev/null
if [ $? -eq 1 ]
then
  echo "$a is not an integer"
  exit 0
fi
if [ $((a%2)) -eq 0 ]
then
  echo "even"
else
  echo "odd"
fi
