#!/bin/bash
USER_ID=${LOCAL_USER_ID:-9001}
echo 'Starting with username : markpp and UID : $USER_ID'
useradd -s /bin/bash -u $USER_ID -o -c '' -m markpp
export HOME=/home/markpp
export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export PYTHONPATH=$PYTHONPATH:$(pwd)
su markpp bash -c 'bash'
