#!/bin/bash -x


isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
numOfWorkingDays=20

for((day=1;day<=numOfWorkingDays;day++))
do
	empcheck=$((RANDOM%3))
	case $empcheck in

	   $isFullTime)
	   echo "Full Time Employee"
	   empHrs=8
	   ;;
	   $isPartTime)
           echo "partTime Employee"
           empHrs=4
           ;;
	   *)
       	   echo "Employee is Absent"
           empHrs=0
           ;;
       esac

salary=$(( $ratePerHr * $empHrs ))
echo "Employee Wage per day :" $salary
totalSalary=$(( $totalSalary + $salary ))
done

echo "Employee wage per month :" $totalSalary


