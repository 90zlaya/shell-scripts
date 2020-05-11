#!/bin/bash

# List of apm extensions
APM_EXTENSIONS=(
  "atom-clock"
  "atom-vue"
  "busy-signal"
  "csstree-validator"
  "emmet"
  "file-icons"
  "intentions"
  "linter"
  "linter-jsonlint"
  "linter-php"
  "linter-ui-default"
  "platformio-ide-terminal"
  "remote-ftp"
);

for extension in ${APM_EXTENSIONS[*]}
do
  sudo apm install ${extension};
done
