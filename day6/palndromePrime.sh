#!/bin/bash -x

rev=0
	read -p "enter a num:"
n=$num
function palindrome ()
{
   if [ $num -eq $rev ]
   then
     echo "The number $n is a palindrome"
     p=$n
   else
     echo "The number $n is not a prime number"
   fi
}
while [[ $num -ne 0 ]]
do
	dig=$(( $num % 10 ))
	rev=$(( ($rev * 10 ) + ( $dig ) ))
	num=$(( $num / 10 ))
done
   result=$( palindrome )
   echo "$result"

if [ $p -eq $rev ]
then
   b=0
   count=0
   function prime ()
   {

     if [ count -eq 2 ]
       then
         echo"it is a prime number"
     else
         echo"it is not a prime"
     fi
   }
     for((i=1;i<=num;i++))
     do
       a=$(($num%$i))
       if [ $a -eq $b ]
       then
       ((count++))
       fi

      done
     result1=$( prime )
     echo "$result1"
fi
