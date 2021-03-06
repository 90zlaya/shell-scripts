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
  echo ""
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Run git pull on all repos from directory"
  echo ""
  echo "Show this help   : $SCRIPT_NAME -h"
  echo "Update git repos : $SCRIPT_NAME"
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
# Print message in certain manner
################################################################################

PrintMessage() {
  # Define color
  GREEN="\033[0;32m"
  # Define no-color
  NC="\033[0m"
  # Parameter #1 represents message sting to be printed
  MESSAGE_CONTENT=$1

  echo -e "${GREEN}${MESSAGE_CONTENT}${NC}"
}

################################################################################
# Git pull
################################################################################

GitPull() {
  # Parameter #1 represents repo name
  REPO_NAME=$1

  if [ -d ${REPO_NAME} ]
  then
    PrintMessage "=============================================================>"
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
      echo 'Not git repo'
    fi
    cd ../
    echo "Leaving directory"
    PrintMessage "<============================================================="
  fi
}

################################################################################
# Executing all
################################################################################

echo ""
echo "Script $SCRIPT_NAME starting..."

GetParameters $@

# List all repos to variable
REPOS=$(ls)

# Loop trough all repos
for repo in ${REPOS[*]}
do
  GitPull ${repo}
done

End 0

################################################################################
