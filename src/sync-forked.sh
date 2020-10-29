#!/bin/bash

################################################################################
# Script name : sync-forked.sh
# Description : Synchronize forked repository
# Arguments   : FOLDER_LOCATION, REMOTE_UPSTREAM
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Parameter #1 represents repo's folder location on local machine
FOLDER_LOCATION=$1

# Parameter #2 represents remote upstream to be fetched
REMOTE_UPSTREAM=$2

################################################################################

git --version

################################################################################

# Check if using current directory
if [ "$FOLDER_LOCATION" = "" ]
then
    echo "Using current directory"
else
    echo "Using given directory"
    cd $FOLDER_LOCATION
fi

################################################################################

pwd

################################################################################

# Check if adding remote upstream
if [ "$REMOTE_UPSTREAM" = "" ]
then
    echo "Remote versions already added"
else
    echo "Adding remote upstream"
    git remote add upstream $REMOTE_UPSTREAM
fi

################################################################################

git remote -v
git fetch upstream
git checkout main
git rebase upstream/main
git push -f origin main

################################################################################
