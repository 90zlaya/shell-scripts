# List of available scripts

* php-switch.sh: Switch main version of PHP on OS

You would have to update this script and list versions of PHP installed on your operating system inside `PHP_VERSIONS_INSTALLED` array in order to properly run it.

```bash
# How to switch to PHP version 7.3
bash php-switch.sh 7.3
```

* php-extensions.sh: Install PHP extensions

This script contains some of the necessary PHP extensions which have to be installed separately. This script is pretty much straight forward, but you may update `PHP_EXTENSIONS` by adding or deleting items.

```bash
# How to install extensions for PHP 7.3
bash php-extensions.sh 7.3
```

* ssh-connect.sh: Connect to the server via SSH connection

You would have to update this script and set server user, host name and port number before running it.

```bash
# Connect to the server via SSH
bash ssh-connect.sh
```

You will be asked for password before server lets you to in.
