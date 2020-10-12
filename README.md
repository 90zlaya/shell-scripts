# Shell Scripts
> Custom Unix shell scripts for file manipulation, program execution and printing text.

## How to use

Setup shell scripts in these four simple steps (plus one bonus step): 

### Step 1

Clone this repository to have it on your machine (in locale). 

```bash
# Clone repository
git clone https://github.com/90zlaya/shell-scripts.git
```

### Step 2

Enter into cloned directory and mirror source folder. 

```bash
# Enter into root directory
cd shell-scripts/

# Mirror src directory
cp -R src/ deploy/
```

It's recommended to keep name `deploy` for this copy as it was ignored by [.gitignore](./.gitignore). \
This will allow you to `git pull` newest version of this repository without overwriting your updates to scripts. 

### Step 4

Navigate to the mirrored folder and edit script to meet your requirements. 

```bash
# Enter mirrored directory
cd deploy/

# List all shell scripts
ls -al *.sh

# Open script to have it updated
gedit <script-name>.sh
```

When you're done editing script, save it an you are able to run it. 

```bash
# Run script
bash <script-name>.sh
```

For more information on how to use specific script check [list of available scripts](./src/README.md#list-of-available-scripts). 

### Bonus step

You can create alias for certain script: 

```bash
# Create alias
alias <alias-name>="<command>"

# Force list of aliases to reload in current session
source ~/.bashrc
```

Replace `<alias-name>` with your alias and `<command>` with full path to your script (presumably `<base-url>/shell-scripts/deploy/<script-name>.sh`). Force list of aliases to reload in current session or restart terminal. 

## After installation

Make sure to check if there's new version of this repository. Occasionally run `git pull` in terminal. It's being updated and maintained on a regular basis. Any help will be warmly welcomed. 
