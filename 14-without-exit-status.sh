#!/bin/bash

set -e
ls -ltt
netstat -lntp
echo "before exit status"
lnotcommand
echo "after exit status"
echo $?