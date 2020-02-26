#!/bin/bash

# List of apm extensions
APM_EXTENSIONS=(
  "atom-clock"
  "busy-signal"
  "csstree-validator"
  "emmet"
  "intentions"
  "linter"
  "linter-jsonlint"
  "linter-php"
  "linter-ui-default"
  "markdown-preview-plus"
  "platformio-ide-terminal"
  "remote-ftp"
);

for extension in ${APM_EXTENSIONS[*]}
do
  sudo apm install ${extension};
done
