#!/bin/bash -x
heads=0
tails=1
x=0
y=0
a=$((RANDOM%2))

while [[ $x -lt 11 && $y -lt 11 ]]

	do
      a=$((RANDOM%2))
     	if [[ $a -eq 0 ]]
      then
      (( x++ ))
      elif [[ $a -eq 1 ]]
      then
      (( y++ ))
		else 
      echo "toss again"
	fi
	done
echo " $x heads"
echo "$y tails"

