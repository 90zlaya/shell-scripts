#!/bin/bash

################################################################################
# Script name : git-copy.sh
# Description : Copy all differences between two git commits
# Parameters  : start-commit end-commit target-directory
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

################################################################################
# Parameters
################################################################################

START_COMMIT=$1
END_COMMIT=$2
TARGET_DIRECTORY=$3

################################################################################
# Variables
################################################################################

SCRIPT_NAME="`basename $(readlink -f $0)`"
SCRIPT_DIR="`dirname $(readlink -f $0)`"

################################################################################
# Function    : IsDirectoryGitRepository
# Description : Checks if directory is git repository
# Parameters  : /
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
# Function    : Help
# Description : Shows help text for script
# Parameters  : /
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
# Function    : GetArguments
# Description : Gets arguments passed to the script
# Parameters  : -h | start-commit end-commit target-directory
################################################################################

GetArguments()
{
  if [ $# -eq 1 ]
  then
    if [ "$1" = "-h" ]
    then
      Help
      End 0
    else
      Help
      End 1 "Incorrect parameter"
    fi
  elif [ $# -eq 3 ]
  then
    echo "Correct parameters"
  else
    Help
    End 1 "Incorrect parameters"
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
