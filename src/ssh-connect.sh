#!/bin/bash

################################################################################
# Script name : ssh-connect.sh
# Description : Connect to the server via SSH connection
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Server user
USER="test"
# Host name
HOST="test.com"
# Port number
PORT=8080

ssh ${USER}@${HOST} -oPort=${PORT}
