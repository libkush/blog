#!/bin/sh
REMOTE_USER=ubuntu
REMOTE_HOST=kush.in
DIR=devbox-store/kush.in/html   # the directory where your website files should go

./build.sh && rsync -avz --delete public/ ${REMOTE_USER}@${REMOTE_HOST}:~/${DIR} # this will delete everything on the server that's not in the local public folder 

exit 0