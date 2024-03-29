# Shell Scripts
> Custom Unix shell scripts for file manipulation, program execution and printing text.

## Table of Contents

* [How to Use](#how-to-use)
* [Recommendations](#recommendations)
* [After Installation](#after-installation)

You can jump to [list of available scripts] if you don't need introduction.

## How to Use

Clone this repository to have it on your machine (in locale).

```bash
# Clone repository
git clone https://github.com/90zlaya/shell-scripts.git
```

Enter into cloned directory and mirror source folder.

```bash
# Enter into root directory
cd shell-scripts/

# Mirror src directory
cp -R src/ deploy/versions/[current-version]
```

It's recommended to keep name `deploy` for this copy as it was ignored by [.gitignore](.gitignore). \
This will allow you to `git pull` newest version of this repository without overwriting your updates to scripts.

Navigate to the mirrored folder and edit script to meet your requirements.

```bash
# Enter mirrored directory
cd deploy/versions/[current-version]

# List all shell scripts
ls -al *.sh

# Open script to have it updated
nano [script-name].sh
```

When you're done editing script, save it and you are able to run it.

```bash
# Run script
bash [script-name].sh
```

For more information on how to use specific script check [list of available scripts].

[⬆ back to top](#table-of-contents)

## Recommendations

You can create alias for certain script:

```bash
# Create alias
alias [alias-name]="[command]"

# Get help how to use script you aliased
[alias-name] -h
```

Replace `[alias-name]` with your alias and `[command]` with full path to your script (presumably `[installation-path]/shell-scripts/deploy/versions/[current-version]/[script-name].sh`).

[⬆ back to top](#table-of-contents)

## After Installation

Make sure to check if there's new version of this repository. It's being updated and maintained on a regular basis. Any help in terms of development and suggestions will be warmly welcomed.

[⬆ back to top](#table-of-contents)

[list of available scripts]: ./src/README.md#table-of-contents
