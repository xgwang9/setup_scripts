#!/bin/bash

# Setup password
# You need to create a password file .passwd containing "[username]:[passwd]"
if [[ ! -f .passwd ]] ; then
  echo "echo \"[username]:[passwd]\" > .passwd"
  exit
fi
sudo sh -c "cat .passwd | chpasswd"
