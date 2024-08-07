#!/bin/bash

echo -e "Enter file address: \c"
read file_address

 if [ -e $file_address ]
  echo "$file_address available"

 then [ -w $file_address ]
  echo "You have permission to edit the file"

 else
  echo "You do not have permission to edit the file"
 fi
