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

################################################################################
# Show help
################################################################################

Help()
{
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Generate strong and secure password"
  echo ""
  echo "Show this help : $SCRIPT_NAME -h"
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
# Generate random string for given range
################################################################################

GenerateRandomString()
{
  echo $(cat /dev/urandom | tr -dc $1 | fold -w 5 | head -n 1)
}

################################################################################
# Handles proceeding dialog
################################################################################

DoYouWishToProceed()
{
  while true; do
    read -p "Do you wish to proceed? (y/n): " yn
    case $yn in
      [Yy]* )
        echo "1"
      break;;
      [Nn]* )
        echo "0"
      break;;
    esac
  done
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

NUMBERS=$(GenerateRandomString "0-9")
SPECIAL_CHARACTERS=$(GenerateRandomString "!#$%&()+,-.:=?@[\]_{|}~")
ALPHABET_LOWERCASE=$(GenerateRandomString "a-z")
ALPHABET_UPPERCASE=$(GenerateRandomString "A-Z")
GENERATED_PASSWORD="$NUMBERS$ALPHABET_LOWERCASE$SPECIAL_CHARACTERS$ALPHABET_UPPERCASE"

echo $GENERATED_PASSWORD
echo ""
echo "Will copy password to clipboard"

if [ "$(DoYouWishToProceed)" -eq 1 ]
then
  # Checks if xclip is installed
  if ! command -v xclip -selection clipboard &> /dev/null
  then
    END 1 "xclip could not be found"
  else
    echo $GENERATED_PASSWORD | xclip -selection clipboard
  fi

fi

End 0

################################################################################
