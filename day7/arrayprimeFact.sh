#!/bin/bash

read -p "enter a number :" n

echo "prime factors of $n ="
for i in $( seq `expr $n / 2`)
do
   if [ `expr $n % $i` -eq 0 ]
   then
       arr[i]=$i
   fi
done

 echo "${arr[@]}"
