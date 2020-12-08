#!/bin/bash -x


IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

totalworkingDays=0;
totalworkingHrs=0;

while [[ $totalworkingHrs -lt $MAX_WORKING_HRS && $totalworkingDays -lt $MAX_WORKING_DAYS ]]

do
	((totalworkingDays++))
	empcheck=$((RANDOM%3))

		case $empcheck in

			$IS_FULL_TIME)
	   	echo "Full Time Employee"
	   	empHrs=8
	   	;;
	   	$IS_PART_TIME)
         echo "partTime Employee"
         empHrs=4
         ;;
	   	*)
       	echo "Employee is Absent"
         empHrs=0
         ;;

		esac
   echo "$empHrs"
	totalworkingHrs=$(($totalworkingHrs+$empHrs))
done

totalsalary=$(($totalworkingHrs*$RATE_PER_HR))
echo "Employee Wage per month :" $totalsalary


