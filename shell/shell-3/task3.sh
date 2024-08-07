#!/bin/bash

count_objects(){
 x=$(ls $1 | wc -l)
 echo $x
}

read -p "Give directory path: " foldpath

count_objects $foldpath
