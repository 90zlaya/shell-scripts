#!/bin/bash

################################################################################
# Script name : php-switch.sh
# Description : Switch main version of PHP on OS
# Arguments   : PHP_VERSION
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Parameter #1 represents PHP version to be set
PHP_VERSION=$1

################################################################################

# List versions of PHP installed on your OS
PHP_VERSIONS_INSTALLED=(
  "5.6"
  "7.0"
  "7.1"
  "7.2"
  "7.3"
  "7.4"
)

################################################################################

for version in ${PHP_VERSIONS_INSTALLED[*]}
do
  sudo a2dismod php${version}
done

################################################################################

sudo update-alternatives --set php /usr/bin/php${PHP_VERSION}
sudo a2enmod php${PHP_VERSION}
sudo service apache2 restart
php --version

################################################################################
