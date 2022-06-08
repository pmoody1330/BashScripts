#!/bin/bash

# My Aliases - remove with unalias
# BASH
alias ll='ls -alF'

# GIT ~/.gitconfig
git config --global alias.lol 'log --graph --decorate --pretty=oneline --abbrev-commit --all'

alias.lol=log --graph --decorate --pretty=oneline --abbrev-commit --all
alias.log5=log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 5

alias.log5=log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 5
alias.log10=log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 10
alias.p=push
alias.cm=commit -m
alias.dv=difftool -t vimdiff -y
alias.last=log -1 HEAD --stat
alias.ca=commit --amend
alias.gl=config --global -l


# From https://betterprogramming.pub/how-to-create-productive-bash-command-aliases-c5418f9ffa6e
# BASH
alias pl='pwd; ls'
alias dirs="ls -al | grep '^d'"
alias lf="ls -aFG"
alias lm="ls -al|more"
alias h="history"
alias clr="clear" # Clear your terminal screen
alias ip="curl icanhazip.com" # Your public IP address

# MS-DOS
alias dir="ls"
alias copy="cp"
alias rename="mv"
alias md="mkdir"
alias rd="rmdir"
alias del="rm -i"

# GIT
alias ga='git add'
alias gaa='git add .'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gnit='git init'
alias gp='git push'
alias gpl='git pull'
alias gpom="git push origin master"
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
# NPM
alias ni='npm install'
alias nis='npm install --save'
## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias curdate='date +"%d-%m-%Y"'
## Browsers ##
alias firefox='/opt/firefox13/firefox'
alias chrome='/opt/google/chrome/chrome'
alias opera='/opt/opera/opera'

#default ff
alias ff=firefox

#default browser
alias browser=chrome
## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

## kubernetes
alias kctx='kubectx'
alias k='kubectl'