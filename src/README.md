# List of Available Scripts
> This is list of available scripts you may use on any Unix-like system

## Table of Contents

* [PHP Switch](#php-switch)
* [Sync Forked](#sync-forked)
* [Git Pull](#git-pull)
* [SVN Update](#svn-update)

[↩ back to README.md](../README.md#shell-scripts)

## PHP Switch

* File: [php-switch.sh](php-switch.sh)
* Arguments: php-version
* Description: Switch main version of PHP on OS

You would have to update this script and list versions of PHP installed on your operating system inside `PHP_VERSIONS_INSTALLED` array in order to properly run it.

```bash
# Show Help
bash php-switch.sh -h

# How to switch to PHP version 7.3
bash php-switch.sh 7.3
```

[⬆ back to top](#table-of-contents)

## Sync Forked

* File: [sync-forked.sh](sync-forked.sh)
* Arguments: main-branch, folder-location, remote-upstream
* Description: Synchronize forked repository

```bash
# Show Help
bash sync-forked.sh -h

# Sync with remote repo (doing this only once per forked repo)
bash sync-forked.sh [branch-name] /var/www/html/[forked-repo-folder-name] https://github.com/[username]/[repo-name]

# Sync with remote repo (when branch is master, remote upstream has been added and current directory chosen)
bash [path-to-the-shell-script]/sync-forked.sh
```

[⬆ back to top](#table-of-contents)

## Git Pull

* File: [git-pull.sh](git-pull.sh)
* Arguments: None
* Description: Run git pull on all repos from directory

```bash
# Show Help
bash [path-to-the-shell-script]/git-pull.sh -h

# When navigated to the root folder where all repos are located
bash [path-to-the-shell-script]/git-pull.sh
```

[⬆ back to top](#table-of-contents)

## SVN Update

* File: [svn-update.sh](svn-update.sh)
* Arguments: None
* Description: Run svn update on all repos from directory

```bash
# Show Help
bash [path-to-the-shell-script]/svn-update.sh -h

# When navigated to the root folder where all repos are located
bash [path-to-the-shell-script]/svn-update.sh
```

[⬆ back to top](#table-of-contents)
