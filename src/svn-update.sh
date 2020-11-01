#!/bin/bash

################################################################################
# Script name : svn-update.sh
# Description : Run svn update on all repos from directory
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# List all repos to variable
REPOS=$(ls)

################################################################################

# Loop trough all repos
for repo in ${REPOS[*]}
do
  echo "=================================================="
  echo "Entering directory"
  cd ${repo}
  pwd
  echo "Updating..."
  svn update
  svn st
  svn log -l 1
  cd ../
  echo "Leaving directory"
  echo "=================================================="
done

################################################################################

