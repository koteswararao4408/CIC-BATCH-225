#!/bin/bash -x
x=2
c=1

for((i=1;i<=8;i++))
 do
  c=$(($x*$c))
   if [ $c -le 256 ]
   then
echo $c
   fi
 done
