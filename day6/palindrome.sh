#!/bin/bash -x
rev=0
 read -p "enter a number :" num
n=$num
function palindrome ()
{
   if [ $n -eq $rev ]
   then
      echo " The number $n is palindrome "
   else

      echo "The number $n is not a palindrome"
   fi
}
while [[ $num -ne 0 ]]
do
    dig=$(( $num % 10 ))
    rev=$(( ( $rev * 10 ) + ( $dig ) ))
    num=$(( $num / 10 ))

done
   result=$( palindrome )
   echo "$result"
