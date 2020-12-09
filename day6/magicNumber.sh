#!/bin/bash -x

echo "Think a number "

isCorrect="False"
minBound=0
maxBound=100
min=0

while [ $isCorrect == False ]
do
	mid=$(( ( $maxBound + $minBound ) / 2))
	read -p "is $mid is the Correct Answer : True or False" isCorrect

	if [ $isCorrect == "True" ]
	then
	     break
	else
		read -p "is the number greater or less than $mid : enter greater or less" grtOrLess
		if [ $grtOrLess == "Greater" ]
		then
		    minBound=$mid
                else
                    maxBound=$mid
                fi
        fi
done

magicNumber=$mid

while [ $magicNumber -ne 1 ]
do
	fn=$(( $magicNumber / 10 ))
        sn=$(( $magicNumber % 10 ))
	magicNumber=$(( $fn + $sn ))

	if [ $magicNumber -eq 1 ]
	then
	    echo "The number is a Magic Number"
	    break
        else
	    if [ $fn -eq 0 ]
            then
		echo "The number is not a magic number"
		break
		fi
	    fi
done
