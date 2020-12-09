#!/bin/bash -x
 function sampleFunc()
{
	echo $1
}
result="$( sampleFunc $((RANDOM%2 )))"
if [ $result -eq 1 ]
then
   echo " employee is present "
else
   echo "employee is absent "
fi

