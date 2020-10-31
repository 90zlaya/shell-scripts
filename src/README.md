# List of Available Scripts
> This is list of available scripts you may use on any Unix-like system

## Table of Contents

1. [PHP Switch](#php-switch)
1. [SSH Connect](#ssh-connect)
1. [Sync Forked](#sync-forked)
1. [Git Pull](#git-pull)

[↩ back to README.md](./../README.md#shell-scripts)

1. ### PHP Switch

* File: [php-switch.sh](./php-switch.sh)
* Arguments: Required
* Description: Switch main version of PHP on OS

You would have to update this script and list versions of PHP installed on your operating system inside `PHP_VERSIONS_INSTALLED` array in order to properly run it.

```bash
# How to switch to PHP version 7.3
bash php-switch.sh 7.3
```

[⬆ back to top](#table-of-contents)

2. ### SSH Connect

* File: [ssh-connect.sh](./ssh-connect.sh)
* Arguments: None
* Description: Connect to the server via SSH connection

You would have to update this script and set `USER`, `HOST` and `PORT` before running it.

```bash
# Connect to the server via SSH
bash ssh-connect.sh
```

You will be asked for password before server lets you to in.

[⬆ back to top](#table-of-contents)

3. ### Sync Forked

* File: [sync-forked.sh](./sync-forked.sh)
* Arguments: 1st is optional, 2nd is optional
* Description: Synchronize forked repository

```bash
# Sync with remote repo (doing this only once per forked repo)
bash sync-forked.sh /var/www/html/<forked-repo-folder-name> https://github.com/<username>/<repo-name>

# Sync with remote repo (when remote upstream has been added and current directory chosen)
bash <path-to-the-shell-script>sync-forked.sh
```

[⬆ back to top](#table-of-contents)

4. ### Git Pull

* File: [git-pull.sh](./git-pull.sh)
* Arguments: None
* Description: Run git pull on all repos from directory

```bash
# When navigated to the root folder where all repos are located
bash <path-to-the-shell-script>git-pull.sh
```

[⬆ back to top](#table-of-contents)
