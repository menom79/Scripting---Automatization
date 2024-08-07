#!/bin/bash

declare -A ARRAY

input="default"
declare -i index=0

while [ ${input} != "exit" ]
do
 read -p "Give your input: " input
   if [ ${input} != "exit" ]
 then
  index+=1
  ARRAY[${index}]=${input}
 fi
done

for (( i=1; i<=${#ARRAY[@]}; i++ ))
do
  echo "${i}: ${ARRAY[$i]}"
done
