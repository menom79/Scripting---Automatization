#!/bin/bash

echo -e "Enter the name of the file: \c"

read file_name
 if [ -f $file_name ] && [ -s $file_name ]
   then
    echo "Action error"
   else
    rm $file_name
 fi
