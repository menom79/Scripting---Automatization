#!/bin/bash

read -p "Input new user's username: " username
id -u $username > /dev/null 2>&1
result=$?

if [ $result -eq 0 ]
then
  echo "User already exists"
else
  useradd -m -s /bin/bash $username && echo "User ${username} created"
fi
