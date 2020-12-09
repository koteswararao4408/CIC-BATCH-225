#!/bin/bash -x


IS_FULL_TIME=1
IS_PART_TIME=2
SALARY=0
RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=60

totalworkingDays=0;
totalworkingHrs=0;

function getworkingHrs()
{
	 case $empcheck in

         $IS_FULL_TIME)
         empHrs=8
         ;;
         $IS_PART_TIME)
         empHrs=4
         ;;
         *)
         empHrs=0
         ;;

      esac
echo $empHrs
}
while [[ $totalworkingHrs -lt $MAX_WORKING_HRS && $totalworkingDays -lt $MAX_WORKING_DAYS ]]

do
	((totalworkingDays++))
	empcheck=$((RANDOM%3))
	empHrs="$(getworkingHrs $empcheck)"
	totalworkingHrs=$(( $totalworkingHrs + $empHrs ))
done

totalsalary=$(( $totalworkingHrs * $RATE_PER_HR ))
echo "Employee Wage per month :" $totalsalary


