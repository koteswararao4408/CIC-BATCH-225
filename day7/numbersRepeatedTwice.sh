#!/bin/bash 

echo "enter a number from 0 to 100"
read n
firstnum=$(( $n / 10 ))
secondnum=$(( $n % 10 ))

if [[ $firstnum -eq $secondnum ]]
then
  echo " Number is repeated twice "
else
  echo "Number is not repeated twice"
fi
