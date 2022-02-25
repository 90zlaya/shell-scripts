# List of Available Scripts
> This is list of available scripts you may use on any Unix-like system

## Table of Contents

* [PHP Switch](#php-switch)
* [Generate Password](#generate-password)
* [Git Copy](#git-copy)
* [Git Sync](#git-sync)
* [Git Pull](#git-pull)

[↩ back to README.md](../README.md#shell-scripts)

## PHP Switch

* File: [php-switch.sh](php-switch.sh)
* Arguments: php-version
* Description: Switch main version of PHP on OS

You would have to update this script and list versions of PHP installed on your operating system inside `PHP_VERSIONS_INSTALLED` array in order to properly run it.

```bash
# Show Help
bash php-switch.sh -h

# How to switch to PHP version 8.1
bash php-switch.sh 8.1
```

[⬆ back to top](#table-of-contents)

## Generate Password

* File: [generate-password.sh](generate-password.sh)
* Arguments: None
* Description: Generate strong and secure password

```bash
# Show Help
bash generate-password.sh -h

# How to generate password
bash generate-password.sh
```

[⬆ back to top](#table-of-contents)

## Git Copy

* File: [git-copy.sh](git-copy.sh)
* Arguments: start-commit, end-commit, target-directory
* Description: Copy all differences between two git commits

```bash
# Show Help
bash git-copy.sh -h

# Copy all differences between start and end git commit to target directory
bash git-copy.sh [start-commit] [end-commit] [target-directory]
```

[⬆ back to top](#table-of-contents)

## Git Sync

* File: [git-sync.sh](git-sync.sh)
* Arguments: main-branch, folder-location, remote-upstream
* Description: Synchronize forked git repository

```bash
# Show Help
bash git-sync.sh -h

# Sync with remote repo (doing this only once per forked repo)
bash git-sync.sh [branch-name] /var/www/html/[forked-repo-folder-name] https://github.com/[username]/[repo-name]

# Sync with remote repo (when branch is master, remote upstream has been added and current directory chosen)
bash [path-to-the-shell-script]/git-sync.sh
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
