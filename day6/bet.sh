#!/bin/bash -x
amount=100
bet=1
x=100
a=$((RANDOM%2))
b=0
while [[ $x -gt 0 && $x -lt 200 ]]

	do
      a=$((RANDOM%2))
     	if [[ $a -eq 0 ]]
      then
      x=$(($x+$bet))
      else
       x=$(($x-$bet))
       fi
       ((b++))
	done
echo " amount" $x
echo "$b no.of bets"

