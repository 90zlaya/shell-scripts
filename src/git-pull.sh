#!/bin/bash

################################################################################
# Script name : git-pull.sh
# Description : Run git pull on all repos from directory
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

################################################################################
# Show help
################################################################################

Help()
{
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Run git pull on all repos from directory"
  echo ""
  echo "Show this help   : $SCRIPT_NAME -h"
  echo "Update git repos : $SCRIPT_NAME"
}

################################################################################
# Getting parameters
################################################################################

GetParameters()
{
  if [ $# -eq 1 ]
  then
    if [ "$1" = "-h" ]
    then
      Help
      End 0
    fi
  fi
}

################################################################################
# Print message in certain manner
################################################################################

PrintMessage() {
  # Define color
  GREEN="\033[0;32m"
  # Define no-color
  NC="\033[0m"
  # Line to be printed in console
  LINE="============================================================="
  # Parameter #1 represents message sting to be printed
  MESSAGE_CONTENT=$1

  if [ $1 -eq 1 ]
  then
    echo -e "${GREEN}${LINE}>${NC}"
  elif [ $1 -eq 0 ]
  then
    echo -e "${GREEN}<${LINE}${NC}"
  else
    echo -e "${GREEN}${1}${NC}"
  fi

}

################################################################################
# Git pull
################################################################################

GitPull() {
  if [ -d ${1} ]
  then
    PrintMessage 1
    echo "Entering directory"
    cd ${repo}
    pwd
    if [ -d .git ]
    then
      echo "Pulling..."
      git pull
      git status
      git log -n 1
    else
      echo "Not git repo"
    fi
    cd ../
    echo "Leaving directory"
    PrintMessage 0
  fi
}

################################################################################
# Shell terminates
################################################################################

End()
{
  if [ $1 -eq 0 ]
  then
    echo ""
    echo "Script $SCRIPT_NAME finishing OK"
    exit 0
  else
    echo ""
    echo -e "Script $SCRIPT_NAME finishing with \e[1mERROR [$2]\e[0m"
    exit 1
  fi
}

################################################################################
# Executing all
################################################################################

echo "Script $SCRIPT_NAME starting..."
echo ""
GetParameters $@
REPOS=$(ls)

for repo in ${REPOS[*]}
do
  GitPull ${repo}
done

End 0

################################################################################
