#!/bin/bash 


	num[$i]=$(( ( RANDOM%1000 ) + 99 ))

   for((i=0;i<1;i++))
   do
        if [ $i -eq 0 ]
        then
     	  greatest=${num[i]}
        smallest=${num[i]}
        secondgreatest=${num[i]}
        secondsmallest=${num[i]}
        fi
   done
        for((i=1;i<10;i++))
        do
          num[$i]=$(( ( RANDOM%1000 ) + 99 ))

          if [[ ${num[i]} -gt $greatest ]]
          then
          secondgreatest=$greatest
          greatest=${num[i]}

          elif [[ ${num[i]} -lt $smallest ]]
          then
          smallest=${num[i]}
          secondsmallest=$smallest
          fi
        done
          for((i=0;i<10;i++))
          do
            for((j=$i;j<=10;j++))
            do
             if [[ ${num[i]} -gt ${num[j]} ]]
             then
             t=${num[i]}
             num[$i]=${num[i]}
             num[$j]=$t
             fi
             echo ${num[i]}
            done
         done
            echo "sorted numbers in acsending order"
      for((i=0;i<=10;i++))
      do
         echo ${num[i]}
      done
echo "second largest is :" $secondgreatest
echo "second smallest is :" $secondsmallest
