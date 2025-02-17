# npm aliases & command completion
#
# See README.md for details

(( $+commands[npm] )) && {
    __NPM_COMPLETION_FILE="${ZSH_CACHE_DIR}/npm_completion"

    if [[ ! -f $__NPM_COMPLETION_FILE ]]; then
        npm completion >! $__NPM_COMPLETION_FILE 2>/dev/null
        [[ $? -ne 0 ]] && rm -f $__NPM_COMPLETION_FILE
    fi

    [[ -f $__NPM_COMPLETION_FILE ]] && source $__NPM_COMPLETION_FILE

    unset __NPM_COMPLETION_FILE
}

# Interactively create a package.json file
alias nnew="npm init"

# Interactively create a package.json file (use only defaults and not prompt for any options)
alias nnewf="npm init -f"

# Install package / dependencies
alias ni="npm i"

# Install package / dependencies globally
alias nig="npm i -g"

# Install and save to dependencies in package.json
alias nis="npm i -S"

# Install and save to dependencies in package.json with an exact version
alias nise="npm i -S -E"

# Install and save to devDependencies in package.json
alias nid="npm i -D"

# Install and save to devDependencies in package.json with an exact version
alias nide="npm i -D -E"

# Install and save to optionalDependencies in package.json
alias nio="npm i -O"

# Install and save to optionalDependencies in package.json with an exact version
alias nioe="npm i -O -E"

# Update package(s)
alias nu="npm update"

# Update package(s) globally
alias nug="npm update -g"

# Uninstall package / dependencies
alias nrm="npm rm"

# Uninstall package / dependencies globally
alias nrmg="npm rm -g"

# Uninstall and remove from dependencies in package.json
alias nrms="npm rm -S"

# Uninstall and remove from devDependencies in package.json
alias nrmd="npm rm -D"

# Uninstall and remove from optionalDependencies in package.json
alias nrmo="npm rm -O"

# Remove extraneous packages
alias nprn="npm prune"

# Check which npm modules are outdated
alias no="npm outdated"

# Symlink a package folder
alias nlnk="npm link"

# List packages
alias nls="npm list"

# List packages (only first level)
alias nls0="npm list --depth=0"

# List packages globally
alias nlsg="npm list -g"

# List packages globally (only first level)
alias nlsg0="npm list -g --depth=0"

# Publish a package
alias npbl="npm publish"

# Search in the npm database
alias ns="npm search"

# Create shrinkwrap
alias nsh="npm shrinkwrap"

# Run npm start
alias nst="npm start"

# Run npm test
alias nts="npm test"

# Run custom npm script
alias nr="npm run"

# Run npm audit
alias na="npm audit"

# Run npm audit fix
alias naf="npm audit fix"

# Remove lock files
# ! for prevent accidental run
alias nrsh!="rm -rf ./npm-shrinkwrap.json ./package-lock.json"
alias nrpl!="nrsh!"

# Clear node_modules in current directory
# ! for prevent accidental run
alias nclr!="rm -rf ./node_modules/"

# Reinstall package
# ! for prevent accidental run
alias nre!="nclr! && ni"

# Reinstall package with remove-create package-lock
# ! for prevent accidental run
alias nres!="nclr! && nrsh! && ni"

# ------------------------------------------------

# run dev server
alias nrd="nr dev"
