#!/bin/bash -x

echo "Welcome to employee wage computation program"
declare -A employeeDailyWage
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HOURS_IN_MONTH=100;
EMPLOYEE_RATE_PER_HOUR=20;
NUMBER_OF_WORKING_DAYS=20;
#VARIABLE
totalEmployeeHours=0;
totalWorkingDays=0;


function getWorkHours() {
case $1 in
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
     echo $employeeHours
}

function calculatingDailyWage() {
  local workHours=$1
  wage=$((workHours * EMPLOYEE_RATE_PER_HOUR))
  echo $wage

}

while(( $totalEmployeeHours < $MAX_HOURS_IN_MONTH && $totalWorkingDays < $NUMBER_OF_WORKING_DAYS))
do
   ((totalWorkingDays++))
   workHours="$( getWorkHours $((RANDOM%3)) )"
   totalEmployeeHours=$(( $totalEmployeeHours+$workHours ));
   employeeDailyWage[Day "$totalWorkingDays"]="$( calculatingDailyWage $workHours )"
done
totalSalary="$( calculatingDailyWage $totalEmployeeHours )"
echo "Daily Wage " ${employeeDailyWage[@]}
echo "All Keys " ${!employeeDailyWage[@]}
