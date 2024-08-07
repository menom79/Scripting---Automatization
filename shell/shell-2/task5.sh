#!/bin/bash
set -f
opt="+ - * / exit"

select x in ${opt}
do
  if [ ${x} = exit ]
  then
   break
  else
   read -p "Give the 1st number: " num1
   read -p "Give the 2nd number: " num2
   result=$(( ${num1}${x}${num2} ))
echo ${result}
 fi
done
