#!/bin/bash -x

echo "Welcome to employee wage computation program"
ISPRESENT=1
randomcheck=$((RANDOM%2))

if(( $ISPRESENT == $randomcheck ))
then
  empRatePerHr=20
  empHrs=8
  salary=$(($empHrs*$empRatePerHr))
else
  salary=0
fi

