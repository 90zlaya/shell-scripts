#!/bin/bash

################################################################################
# Script name : svn-update.sh
# Description : Run svn update on all repos from directory
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Print message in certain manner
#
# @param MESSAGE_CONTENT
#
function print_message() {
  # Define color
  GREEN="\033[0;32m"
  # Define no-color
  NC="\033[0m"
  # Parameter #1 represents message sting to be printed
  MESSAGE_CONTENT=$1

  echo -e "${GREEN}${MESSAGE_CONTENT}${NC}"
}

################################################################################

# List all repos to variable
REPOS=$(ls)

################################################################################

# Loop trough all repos
for repo in ${REPOS[*]}
do
  print_message "=============================================================>"
  echo "Entering directory"
  cd ${repo}
  pwd
  echo "Updating..."
  svn update
  svn st
  svn log -l 1
  cd ../
  echo "Leaving directory"
  print_message "<============================================================="
done

################################################################################

