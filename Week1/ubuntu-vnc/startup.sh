#!/bin/bash

# for debugging purposes
echo "Script name:" $0 
echo "Working directory:" $(pwd)
echo "Script running as user:" $(whoami)

# set environment variable USER
export USER=remote_user

# # start the vnc server
su -c vncserver remote_user

# Keep container running
tail -f /dev/null