alias ll="ls -lahG"

# Open XCode with `xcode`
alias xcode="open -a Xcode"

# Exports Shell Commands
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# NVM Loader
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Parse git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal Prompt
export PS1='\e[1;36m \w\e[1;37m$(parse_git_branch)\e[01;34m >>> \e[00m'

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# React Native Debugging
REACT_EDITOR=vim

# Shell commands for postgres such as `pg_dump`
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
