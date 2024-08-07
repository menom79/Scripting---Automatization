#!/bin/bash

count_objects() {
 x=$(ls | wc -l)
 echo $x
 }
count_objects
