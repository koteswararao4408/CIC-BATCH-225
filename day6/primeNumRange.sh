#!/bin/bash 

echo -n "enter a number upto which prime no. to print :"
read n
echo "The prime numbers from 1 to $n are :"
if [ $n -eq 1 ]
then
  echo $n
else
   for (( j=1;j<=n;j++ ))
   do
      a=0
      i=2
      q=0
      for ((i=2;i<j;a++))
      do
        q=`expr $j % $i`
        if [ $q -eq 0 ]
	then
         break
        else
	 i=`expr $i + 1`
	fi
      done
      if [[ $q -ne 0 ]]
      then
        echo $j
      fi
   done
fi
