#!/bin/bash -x
x=2
c=1
echo "enter n value"
read n
for((i=1;i<=n;i++))
 do
  c=$(($x*$c))
  echo $c
 done
