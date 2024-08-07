#!/bin/bash

while [ object ]
 do
  echo  -e "Give a object to know its type: \c"
 read object

 if [  -d ${object} ]
  then
   echo "Object is a directory"
 elif [ -f ${object} ]
  then
   echo "Object is a regular file"
 else
   echo "Object is not recognised"
 fi
 done
