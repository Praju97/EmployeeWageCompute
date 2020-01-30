#!/bin/bash -x

echo "Welcome to employee wage computation program"
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HOURS_IN_MONTH=100;
EMPLOYEE_RATE_PER_HOUR=20;
NUMBER_OF_WORKING_DAYS=20;
#VARIABLE
totalEmployeeHours=0;
totalWorkingDays=0;

while(($totalEmployeeHours < $MAX_HOURS_IN_MONTH))
do
   ((totalWorkingDays++))
   employeeCheck=$((RANDOM%3))
case $employeeCheck in
	$IS_FULL_TIME)
		employeeHours=8
		;;
	$IS_PART_TIME)
		employeeHours=4
		;;
	*)
		employeeHours=0
		;;
esac

totalEmployeeHours=$(($totalEmployeeHours+$employeeHours));
done
	totalSalary=$(($totalEmployeeHours*$EMPLOYEE_RATE_PER_HOUR));
