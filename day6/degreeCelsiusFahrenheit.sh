#!/bin/bash -x

read -p "enter celsius or fahrenheit value" n
celsius=0
fahrenheit=1
degreecheck=$((RANDOM%1))
function unitconversion ()
{
   case $degreecheck in
     $celsius)
	echo "$celsius C =$fahrenheit F"

       ;;
     $fahrenheit)
       echo "$fahrenheit F =$celsius C"
    esac
}
if [[ $degreecheck -eq 0 ]]

then
   celsius=`awk -v xyz="$fahrenheit" "BEGIN {print (5/9) * ($xyz - 32)}"`

fi
