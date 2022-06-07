# List of Available Scripts
> This is list of available scripts you may use on any Unix-like system.

## Table of Contents

* [Dev Setup](#dev-setup)
* [PHP Switch](#php-switch)
* [Generate Password](#generate-password)
* [Git](#git)
  * [Git Copy](#git-copy)
  * [Git Sync](#git-sync)
  * [Git Pull](#git-pull)

[↩ back to main table of contents](../README.md#table-of-contents)

## Dev Setup

* File: [dev-setup.sh](dev-setup.sh)
* Parameters: issue-number issue-name
* Description: Development setup for git

If you're using this shell script to setup development for git repository, then you're ready to go by default. You can change several parameters based on personal or team preferences.

1. Each branch will have prefix, which is, by default, *issues*. If you want to change this prefix, go to `BRANCH_PREFIX` and add your value to it.
1. Upon it's completion, script will offer helper text to be copy/pasted to issue tracking software. First one is `REQUEST_PREFIX` which will be prefix for title on pull requests you're going to make, second one is `ISSUE_BASE_PATH` which can be left empty. When not empty, it will offer description for pull request. Both helper texts won't affect script execution in any way other than being there for the user.

```bash
# Show Help
bash dev-setup.sh -h

# How to setup development for issue #1 Example issue name
bash dev-setup.sh 1 "Example issue name"
```

[⬆ back to top](#table-of-contents)

## PHP Switch

* File: [php-switch.sh](php-switch.sh)
* Parameters: php-version
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
* Parameters: None
* Description: Generate strong and secure password

```bash
# Show Help
bash generate-password.sh -h

# How to generate password
bash generate-password.sh
```

[⬆ back to top](#table-of-contents)

## Git

  ### Git Copy

  * File: [git-copy.sh](git-copy.sh)
  * Parameters: start-commit end-commit target-directory
  * Description: Copy all differences between two git commits

  ```bash
  # Show Help
  bash git-copy.sh -h

  # Copy all differences between start and end git commit to target directory
  bash git-copy.sh [start-commit] [end-commit] [target-directory]
  ```

  [⬆ back to top](#table-of-contents)

  ### Git Sync

  * File: [git-sync.sh](git-sync.sh)
  * Parameters: [branch-name] [folder-location] [remote-upstream]
  * Description: Synchronize forked git repository

  ```bash
  # Show Help
  bash git-sync.sh -h

  # Sync with remote repo (doing this only once per forked repo)
  bash git-sync.sh [branch-name] [full-forked-repo-folder-path] [full-remote-repo-path]

  # Sync with remote repo (when branch is master, remote upstream has been added and current directory chosen)
  bash [path-to-the-shell-script]/git-sync.sh
  ```

  [⬆ back to top](#table-of-contents)

  ### Git Pull

  * File: [git-pull.sh](git-pull.sh)
  * Parameters: None
  * Description: Run git pull on all repos from directory

  ```bash
  # Show Help
  bash [path-to-the-shell-script]/git-pull.sh -h

  # When navigated to the root folder where all repos are located
  bash [path-to-the-shell-script]/git-pull.sh
  ```

  [⬆ back to top](#table-of-contents)
