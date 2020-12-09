#!/bin/bash -x

echo "enter a number"
read num
b=0
count=0
for((i=1;i<=num;i++))

do
  a=$(($num%$i))
  if [ $a -eq $b ]
  then
    ((count++))
  fi
done

  if [ $count -eq 2 ]
  then
  echo "it is prime number"
  else
  echo "it is not a prime"
  fi

