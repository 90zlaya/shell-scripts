#!/bin/bash

################################################################################
# Script name : git-sync.sh
# Description : Synchronize forked git repository
# Parameters  : main-branch folder-location remote-upstream
# Author      : Zlatan Stajic <contact@zlatanstajic.com>
# Licence     : MIT
################################################################################

################################################################################
# Parameters
################################################################################

MAIN_BRANCH=$1
FOLDER_LOCATION=$2
REMOTE_UPSTREAM=$3

################################################################################
# Variables
################################################################################

SCRIPT_NAME="`basename $(readlink -f $0)`"
SCRIPT_DIR="`dirname $(readlink -f $0)`"

################################################################################
# Function    : Help
# Description : Shows help text for script
# Parameters  : /
################################################################################

Help()
{
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Synchronize forked git repository"
  echo ""
  echo "Show this help                         : $SCRIPT_NAME -h"
  echo "First ever call                        : $SCRIPT_NAME master /var/www/html/[forked-repo-folder-name] https://github.com/[username]/[repo-name]"
  echo "Every other call                       : $SCRIPT_NAME /var/www/html/[forked-repo-folder-name]"
  echo "Call in current repo for master branch : $SCRIPT_NAME"
  echo "Call in current repo for other branch  : $SCRIPT_NAME [branch-name]"
}

################################################################################
# Function    : GetArguments
# Description : Gets arguments passed to the script
# Parameters  : -h | main-branch folder-location remote-upstream
################################################################################

GetArguments()
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
# Function    : End
# Description : Terminates shell script
# Parameters  : is-with-error [error-text]
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
# Execution
################################################################################

echo "Script $SCRIPT_NAME starting..."
echo ""
GetArguments $@

# Check if using main master branch
if [ "$MAIN_BRANCH" = "" ]
then
    echo "Using master branch"
    MAIN_BRANCH="master"
else
    echo "Using $MAIN_BRANCH branch"
fi

git branch

# Check if using current directory
if [ "$FOLDER_LOCATION" = "" ]
then
    echo "Using current directory"
else
    echo "Using given directory"
    cd $FOLDER_LOCATION
fi

# List current path
pwd

# Check if adding remote upstream
if [ "$REMOTE_UPSTREAM" = "" ]
then
    echo "Remote versions already added"
else
    echo "Adding remote upstream"
    git remote add upstream $REMOTE_UPSTREAM
fi

git remote -v
git fetch upstream
git checkout $MAIN_BRANCH
git rebase upstream/$MAIN_BRANCH
git push -f origin $MAIN_BRANCH

End 0

################################################################################
