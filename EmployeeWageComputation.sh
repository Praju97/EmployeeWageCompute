#!/bin/bash -x

echo "Welcome to employee wage computation program"
ISPARTTIME=1
ISFULLTIME=2
empRatePerHr=20
randomcheck=$((RANDOM%3))

if(( $ISFULLTIME == $randomcheck ))
then
  empHrs=8
elif(($ISPARTTIME == $randomcheck))
then
  empHrs=4
else
  empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))

