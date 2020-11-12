#!/bin/bash

################################################################################
# Script name : php-switch.sh
# Description : Switch main version of PHP on OS
# Arguments   : php-version
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

################################################################################
# Globals
################################################################################

SCRIPT_NAME="`basename $(readlink -f $0)`"
SCRIPT_DIR="`dirname $(readlink -f $0)`"
PHP_VERSION=$1

# PHP versions installed on your OS (remove # do declare as installed)
PHP_VERSIONS_INSTALLED=(
  #"5.6"
  #"7.0"
  #"7.1"
  #"7.2"
  #"7.3"
  #"7.4"
)

################################################################################
# Show help
################################################################################

Help()
{
  echo ""
  echo -e "\e[1mRunning $SCRIPT_NAME\e[0m"
  echo "Description: Switch main version of PHP on OS"
  
  if [ ${#PHP_VERSIONS_INSTALLED[@]} -eq 0 ]
  then
    echo "Update PHP_VERSIONS_INSTALLED in $SCRIPT_DIR/$SCRIPT_NAME"
  else
    INSTALLED=""
    for version in ${PHP_VERSIONS_INSTALLED[*]}
    do
      INSTALLED+="${version} "
    done
    echo "Installed versions: $INSTALLED"
  fi

  echo ""
  echo "Show this help : $SCRIPT_NAME -h"
  echo "Switch version : $SCRIPT_NAME <php-version>"
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
    # Checking PHP version
    if [[ ! " ${PHP_VERSIONS_INSTALLED[@]} " =~ " ${PHP_VERSION} " ]]
    then
      Help
      End 1 "Incorrect parameters: Non existing PHP version"
    fi
  else
    Help
    End 1 "Incorrect parameters"
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
# Executing all
################################################################################

echo ""
echo "Script $SCRIPT_NAME starting..."

GetParameters $@

for version in ${PHP_VERSIONS_INSTALLED[*]}
do
  sudo a2dismod php${version}
done

sudo update-alternatives --set php /usr/bin/php${PHP_VERSION}
sudo a2enmod php${PHP_VERSION}
sudo service apache2 restart
php --version

End 0

################################################################################
