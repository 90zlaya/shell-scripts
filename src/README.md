# List of available scripts

1. [PHP Switch](#php-switch)
1. [SSH Connect](#ssh-connect)

[↩ back to README.md](./../README.md#shell-scripts)

## PHP Switch

* File: php-switch.sh
* Arguments: Required
* Description: Switch main version of PHP on OS

You would have to update this script and list versions of PHP installed on your operating system inside `PHP_VERSIONS_INSTALLED` array in order to properly run it.

```bash
# How to switch to PHP version 7.3
bash php-switch.sh 7.3
```

[⬆ back to top](#list-of-available-scripts)

## SSH Connect

* File: ssh-connect.sh
* Arguments: None
* Description: Connect to the server via SSH connection

You would have to update this script and set `USER`, `HOST` and `PORT` before running it.

```bash
# Connect to the server via SSH
bash ssh-connect.sh
```

You will be asked for password before server lets you to in.

[⬆ back to top](#list-of-available-scripts)
