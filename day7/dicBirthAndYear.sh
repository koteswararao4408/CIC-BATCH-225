#!/bin/bash 

x=1
jan=0
feb=1
mar=2
apr=3
may=4
jun=5
jul=6
aug=7
sept=8
oct=9
nov=10
dec=11
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
k=0
l=0

declare -A child

while [[ $x -le 51 ]]
do
    month=$((RANDOM%12))
    if [[ $month -eq 0 ]]
    then
         ((a++))
    fi
    if [[ $month -eq 1 ]]
    then
         ((b++))
    fi
    if [[ $month -eq 2 ]]
    then
         ((c++))
    fi
    if [[ $month -eq 3 ]]
    then
         ((d++))
    fi
    if [[ $month -eq 4 ]]
    then
         ((e++))
    fi
    if [[ $month -eq 5 ]]
    then
         ((f++))
    fi
    if [[ $month -eq 6 ]]
    then
         ((g++))
    fi
    if [[ $month -eq 7 ]]
    then
         ((h++))
    fi
    if [[ $month -eq 8 ]]
    then
         ((i++))
    fi
    if [[ $month -eq 9 ]]
    then
         ((j++))
    fi
    if [[ $month -eq 10 ]]
    then
         ((k++))
    fi
    if [[ $month -eq 11 ]]
    then
         ((l++))
    fi

   child[$x]=$month
   ((x++))
done
echo "Birth on jan =$a"
echo "Birth on feb =$b"
echo "Birth on mar =$c"
echo "Birth on apr =$d"
echo "Birth on may =$e"
echo "Birth on jun =$f"
echo "Birth on jul =$g"
echo "Birth on aug =$h"
echo "Birth on sept =$i"
echo "Birth on oct =$j"
echo "Birth on nov =$k"
echo "Birth on dec =$l"

