#!/bin/bash

################################################################################
# Script name : git-copy.sh
# Description : Copy all differences between two git commits
# Arguments   : start-commit, end-commit, target-directory
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
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Copy all differences between two git commits"
  echo ""
  echo "Show this help       : $SCRIPT_NAME -h"
  echo "Copy all differences : $SCRIPT_NAME [start-commit] [end-commit] [target-directory]"
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
# Checks if directory is git repository
################################################################################

IsDirectoryGitRepository()
{
  if [ -d .git ]
  then
    return 1
  else
    End 1 "Not git repo"
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
IsDirectoryGitRepository

echo "Finding and copying files and folders to $TARGET_DIRECTORY"

for i in $(git diff --name-only $START_COMMIT $END_COMMIT)
do
  # First create the TARGET_DIRECTORY directory, if it doesn't exist
  mkdir -p "$TARGET_DIRECTORY/$(dirname $i)"
  # Then copy over the file
  cp "$i" "$TARGET_DIRECTORY/$i"
done

echo "Files copied to $TARGET_DIRECTORY directory"

End 0

################################################################################
