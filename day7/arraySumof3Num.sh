#!/bin/bash 

read -p "enter how many numbs you want to add integers:" n

for((i=0;i<3;i++))
do
  read -p "enter a number :" arr[$i]
done
sum=0

for num in ${arr[@]}
do
 sum=$(($sum+$num))
done

echo "Sum of three numbers :" $sum
