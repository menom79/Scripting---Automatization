#!/bin/bash

echo Please provide the directory path.

read ROAD

echo $ROAD | ls -1 | wc -l
