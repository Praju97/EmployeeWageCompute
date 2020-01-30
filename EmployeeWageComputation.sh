#!/bin/bash

echo "Welcome to employee wage computation program"
ISPRESENT=1
randomcheck=$((RANDOM%2))

if(( $ISPRESENT == $randomcheck ))
then
  echo "Employee is present"
else
  echo "Employee is absent"
fi

