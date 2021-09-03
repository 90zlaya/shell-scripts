#!/bin/bash

################################################################################
# Script name : generate-password.sh
# Description : Generate strong and secure password
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

################################################################################
# Globals
################################################################################

SCRIPT_NAME="`basename $(readlink -f $0)`"
SCRIPT_DIR="`dirname $(readlink -f $0)`"
START_COMMIT=$1
END_COMMIT=$2
TARGET_DIRECTORY=$3

################################################################################
# Show help
################################################################################

Help()
{
  echo ""
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Generate strong and secure password"
  echo ""
  echo "Show this help : $SCRIPT_NAME -h"
  echo ""
}

################################################################################
# Getting parameters
################################################################################

GetParameters()
{
  if [ $# -eq 1 ]
  then
    if [ "x$1" = "x-h" ]
    then
      Help
      End 0
    fi
  fi
}

################################################################################
# Shell terminates
################################################################################

End()
{
  if [ $1 -eq 0 ]
  then
    echo "Script $SCRIPT_NAME finishing OK"
    echo ""
    exit 0
  else
    echo -e "Script $SCRIPT_NAME finishing with \e[1mERROR [$2]\e[0m"
    echo ""
    exit 1
  fi
}

################################################################################
# Executing all
################################################################################

echo ""
echo "Script $SCRIPT_NAME starting..."

GetParameters $@

echo "Password will be displayed here"

End 0

################################################################################
