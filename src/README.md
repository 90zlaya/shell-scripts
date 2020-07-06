# List of available scripts

1. [PHP Switch](#php-switch)
1. [PHP Extensions](#php-extensions)
1. [SSH Connect](#ssh-connect)
1. [cURL Query](#curl-query)
1. [apm Extensions](#apm-extensions)
1. [rtl8821ce install](#rtl8821ce-install)

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

## PHP Extensions

* File: php-extensions.sh
* Arguments: Required
* Description: Install PHP extensions

This script contains some of the necessary PHP extensions which have to be installed separately. This script is pretty much straight forward, but you may update `PHP_EXTENSIONS` by adding or deleting items.

```bash
# How to install extensions for PHP 7.3
bash php-extensions.sh 7.3
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

## cURL Query

* File: curl-query.sh
* Arguments: Required
* Description: Query API endpoint via cURL

If you want to query other API than the one listed as default in this shell script, change `BASE_URL` and update `CONTENT_TYPE` if necessary.

```bash
# Query quotes endpoint
bash curl-query.sh quotes
```

[⬆ back to top](#list-of-available-scripts)

## apm Extensions

* File: apm-extensions.sh
* Arguments: None
* Description: Install extensions to the Atom editor

Add or remove extension by updating `APM_EXTENSIONS` variable.

```bash
# Install apm extensions
bash apm-extensions.sh
```

[⬆ back to top](#list-of-available-scripts)

## rtl8821ce install

* File: rtl8821ce-install.sh
* Arguments: None
* Description: Install RTL8821ce (wireless) driver

You need git installed on your system before running this script.

```bash
# Install apm extensions
bash rtl8821ce-install.sh
```

[⬆ back to top](#list-of-available-scripts)
