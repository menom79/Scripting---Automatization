#!/bin/bash

count_objects(){
 array=("$@")
 for value in "${array[@]}"
 do
  echo $value
 done
}

declare -a foldpath

read -p "Give directory path: " -a foldpath

count_objects "${foldpath[@]}"

