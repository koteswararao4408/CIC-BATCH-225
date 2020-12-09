#!/bin/bash


declare -A x
   a=0
   b=0
   c=0
   d=0
   e=0
   f=0
   k=0
   ones=0
   twos=0
   threes=0
   fours=0
   fives=0
   sixes=0

while [[ $ones -le 10 && $twos -le 10 && $threes -le 10 && $fours -le 10 && $fives -le 10 && $sixes -le 10 ]]
do
   x=$(( ( RANDOM%6 ) + 1 ))
   if [ $x -eq 1 ]
   then
    (( ones++ ))
    ((k++))
    ((a++))
    if [[ $ones -eq 10 ]]
    then
    echo "1 reached 10 times"
     ((a--))
    fi
   fi
   if [ $x -eq 2 ]
   then
    (( twos++ ))
    ((k++))
    ((b++))
    if [[ $twos -eq 10 ]]
    then
    echo "2 reached 10 times"
     ((b--))
    fi
   fi
    if [ $x -eq 3 ]
   then
    (( threes++ ))
     ((k++))
     ((c++))
   if [[ $threes -eq 10 ]]
    then
    echo "3 reached 10 times"
      ((c--))
    fi
   fi
    if [ $x -eq 4 ]
   then
    (( fours++ ))
    ((k++))
    ((d++))
   if [[ $fours -eq 10 ]]
    then
    echo "4 reached 10 times"
     ((d--))
    fi
   fi
     if [ $x -eq 5 ]
   then
    (( fives++ ))
    ((k++))
    ((e++))
    if [[ $fives -eq 10 ]]
    then
    echo "5 reached 10 times"
      ((e--))
    fi
   fi
     if [ $x -eq 6 ]
   then
    (( sixes++ ))
     ((k++))
     ((f++))
   if [[ $sixes -eq 10 ]]
    then
    echo "6 reached 10 times"
      ((f--))
    fi
   fi
dic[$x]=$k
done
echo "Number of times dice rolled :" $k
echo "1 reached $a times"
echo "2 reached $b times"
echo "3 reached $c times"
echo "4 reached $d times"
echo "5 reached $e times"
echo "6 reached $f times"
