#!/bin/bash

################################################################################
# Script name : git-pull.sh
# Description : Run git pull on all repos from directory
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
  echo "Pulling..."
  git pull
  git status
  git log -n 1
  cd ../
  echo "Leaving directory"
  echo "=================================================="
done

################################################################################

