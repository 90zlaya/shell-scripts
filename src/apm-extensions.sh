#!/bin/bash

################################################################################
# Script name : apm-extensions.sh
# Description : Install extensions to the Atom editor
# Arguments   : /
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# List of apm extensions
APM_EXTENSIONS=(
  "atom-beautify"
  "atom-clock"
  "atom-vue"
  "busy-signal"
  "csstree-validator"
  "emmet"
  "file-icons"
  "highlight-selected"
  "intentions"
  "linter"
  "linter-jsonlint"
  "linter-php"
  "linter-ui-default"
  "minimap"
  "pigments"
  "platformio-ide-terminal"
  "remote-ftp"
  "todo-show"
)

for extension in ${APM_EXTENSIONS[*]}
do
  sudo apm install ${extension}
done
