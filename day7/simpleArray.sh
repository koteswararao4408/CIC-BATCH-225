#!/bin/bash -x

counter=0
fruits[((counter++))]=Apple
fruits[((counter++))]=Orange
fruits[((counter++))]=Mango
echo "All elements" ${fruits[@]}
echo "Index values" ${!fruits[@]}
